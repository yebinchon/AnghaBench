
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
typedef int WCHAR ;
typedef int DWORD ;


 int CP_UTF8 ;
 int ERROR_OUTOFMEMORY ;
 int SetLastError (int ) ;
 int WideCharToMultiByte (int ,int ,int *,int ,char*,int,int *,int *) ;
 int assert (int) ;
 char* uv__malloc (int) ;

__attribute__((used)) static int fs__wide_to_utf8(WCHAR* w_source_ptr,
                               DWORD w_source_len,
                               char** target_ptr,
                               uint64_t* target_len_ptr) {
  int r;
  int target_len;
  char* target;
  target_len = WideCharToMultiByte(CP_UTF8,
                                   0,
                                   w_source_ptr,
                                   w_source_len,
                                   ((void*)0),
                                   0,
                                   ((void*)0),
                                   ((void*)0));

  if (target_len == 0) {
    return -1;
  }

  if (target_len_ptr != ((void*)0)) {
    *target_len_ptr = target_len;
  }

  if (target_ptr == ((void*)0)) {
    return 0;
  }

  target = uv__malloc(target_len + 1);
  if (target == ((void*)0)) {
    SetLastError(ERROR_OUTOFMEMORY);
    return -1;
  }

  r = WideCharToMultiByte(CP_UTF8,
                          0,
                          w_source_ptr,
                          w_source_len,
                          target,
                          target_len,
                          ((void*)0),
                          ((void*)0));
  assert(r == target_len);
  target[target_len] = '\0';
  *target_ptr = target;
  return 0;
}
