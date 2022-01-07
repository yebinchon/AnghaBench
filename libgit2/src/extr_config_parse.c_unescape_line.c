
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ GIT_ADD_SIZET_OVERFLOW (size_t*,size_t,int) ;
 int GIT_ERROR_CONFIG ;
 int git__free (char*) ;
 char* git__malloc (size_t) ;
 int * git_config_escaped ;
 char* git_config_escapes ;
 int git_error_set (int ,char*,char const*) ;
 char* strchr (char*,char const) ;
 size_t strlen (char const*) ;

__attribute__((used)) static int unescape_line(
 char **out, bool *is_multi, const char *ptr, int quote_count)
{
 char *str, *fixed, *esc;
 size_t ptr_len = strlen(ptr), alloc_len;

 *is_multi = 0;

 if (GIT_ADD_SIZET_OVERFLOW(&alloc_len, ptr_len, 1) ||
  (str = git__malloc(alloc_len)) == ((void*)0)) {
  return -1;
 }

 fixed = str;

 while (*ptr != '\0') {
  if (*ptr == '"') {
   quote_count++;
  } else if (*ptr != '\\') {
   *fixed++ = *ptr;
  } else {

   ptr++;

   if (*ptr == '\0') {
    *is_multi = 1;
    goto done;
   }
   if ((esc = strchr(git_config_escapes, *ptr)) != ((void*)0)) {
    *fixed++ = git_config_escaped[esc - git_config_escapes];
   } else {
    git__free(str);
    git_error_set(GIT_ERROR_CONFIG, "invalid escape at %s", ptr);
    return -1;
   }
  }
  ptr++;
 }

done:
 *fixed = '\0';
 *out = str;

 return 0;
}
