
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int wchar_t ;
typedef int WCHAR ;
struct TYPE_2__ {int wide; scalar_t__ len; int wide_eq; } ;
typedef int DWORD ;


 int CP_UTF8 ;
 int ERROR_OUTOFMEMORY ;
 int GetEnvironmentVariableW (int ,int*,int) ;
 int GetLastError () ;
 int MultiByteToWideChar (int ,int ,char*,int,int*,int) ;
 void* alloca (size_t) ;
 int assert (int) ;
 int env_strncmp (int ,scalar_t__,int*) ;
 int n_required_vars ;
 int qsort (int**,size_t,int,int ) ;
 int qsort_wcscmp ;
 TYPE_1__* required_vars ;
 scalar_t__ strchr (char*,char) ;
 int uv__free (int*) ;
 int* uv__malloc (int) ;
 int uv_fatal_error (int,char*) ;
 int wcscpy (int*,int ) ;
 int wcslen (int*) ;
 int wmemcpy (int*,int*,int) ;

int make_program_env(char* env_block[], WCHAR** dst_ptr) {
  WCHAR* dst;
  WCHAR* ptr;
  char** env;
  size_t env_len = 0;
  int len;
  size_t i;
  DWORD var_size;
  size_t env_block_count = 1;
  WCHAR* dst_copy;
  WCHAR** ptr_copy;
  WCHAR** env_copy;
  DWORD* required_vars_value_len = alloca(n_required_vars * sizeof(DWORD*));


  for (env = env_block; *env; env++) {
    int len;
    if (strchr(*env, '=')) {
      len = MultiByteToWideChar(CP_UTF8,
                                0,
                                *env,
                                -1,
                                ((void*)0),
                                0);
      if (len <= 0) {
        return GetLastError();
      }
      env_len += len;
      env_block_count++;
    }
  }


  dst_copy = (WCHAR*)uv__malloc(env_len * sizeof(WCHAR));
  if (dst_copy == ((void*)0) && env_len > 0) {
    return ERROR_OUTOFMEMORY;
  }
  env_copy = alloca(env_block_count * sizeof(WCHAR*));

  ptr = dst_copy;
  ptr_copy = env_copy;
  for (env = env_block; *env; env++) {
    if (strchr(*env, '=')) {
      len = MultiByteToWideChar(CP_UTF8,
                                0,
                                *env,
                                -1,
                                ptr,
                                (int) (env_len - (ptr - dst_copy)));
      if (len <= 0) {
        DWORD err = GetLastError();
        uv__free(dst_copy);
        return err;
      }
      *ptr_copy++ = ptr;
      ptr += len;
    }
  }
  *ptr_copy = ((void*)0);
  assert(env_len == 0 || env_len == (size_t) (ptr - dst_copy));


  qsort(env_copy, env_block_count-1, sizeof(wchar_t*), qsort_wcscmp);


  for (ptr_copy = env_copy, i = 0; i < n_required_vars; ) {
    int cmp;
    if (!*ptr_copy) {
      cmp = -1;
    } else {
      cmp = env_strncmp(required_vars[i].wide_eq,
                       required_vars[i].len,
                        *ptr_copy);
    }
    if (cmp < 0) {

      var_size = GetEnvironmentVariableW(required_vars[i].wide, ((void*)0), 0);
      required_vars_value_len[i] = var_size;
      if (var_size != 0) {
        env_len += required_vars[i].len;
        env_len += var_size;
      }
      i++;
    } else {
      ptr_copy++;
      if (cmp == 0)
        i++;
    }
  }


  dst = uv__malloc((1+env_len) * sizeof(WCHAR));
  if (!dst) {
    uv__free(dst_copy);
    return ERROR_OUTOFMEMORY;
  }

  for (ptr = dst, ptr_copy = env_copy, i = 0;
       *ptr_copy || i < n_required_vars;
       ptr += len) {
    int cmp;
    if (i >= n_required_vars) {
      cmp = 1;
    } else if (!*ptr_copy) {
      cmp = -1;
    } else {
      cmp = env_strncmp(required_vars[i].wide_eq,
                        required_vars[i].len,
                        *ptr_copy);
    }
    if (cmp < 0) {

      len = required_vars_value_len[i];
      if (len) {
        wcscpy(ptr, required_vars[i].wide_eq);
        ptr += required_vars[i].len;
        var_size = GetEnvironmentVariableW(required_vars[i].wide,
                                           ptr,
                                           (int) (env_len - (ptr - dst)));
        if (var_size != (DWORD) (len - 1)) {
          uv_fatal_error(GetLastError(), "GetEnvironmentVariableW");
        }
      }
      i++;
    } else {

      len = wcslen(*ptr_copy) + 1;
      wmemcpy(ptr, *ptr_copy, len);
      ptr_copy++;
      if (cmp == 0)
        i++;
    }
  }


  assert(env_len == (size_t) (ptr - dst));
  *ptr = L'\0';

  uv__free(dst_copy);
  *dst_ptr = dst;
  return 0;
}
