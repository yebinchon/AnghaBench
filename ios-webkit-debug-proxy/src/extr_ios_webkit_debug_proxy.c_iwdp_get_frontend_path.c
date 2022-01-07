
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ws_status ;


 int IWDP_ERROR ;
 int IWDP_SUCCESS ;
 scalar_t__ asprintf (char**,char*,int,char const*,int,char const*) ;
 scalar_t__ strchr (char*,char) ;
 size_t strlen (char const*) ;
 scalar_t__ strncmp (char const*,char*,int) ;
 scalar_t__ strnstr (char const*,char*,size_t) ;
 char* strrchr (char const*,char) ;

ws_status iwdp_get_frontend_path(const char *fe_path, const char *resource,
    char **to_path) {
  if (!to_path) {
    return IWDP_ERROR;
  }
  *to_path = ((void*)0);


  if (!fe_path) {
    return IWDP_ERROR;
  }
  const char *fe_file = strrchr(fe_path, '/');
  fe_file = (fe_file ? fe_file + 1 : ((void*)0));
  size_t fe_path_len = (fe_file ? (fe_file - fe_path) : 0);



  if (!resource || strncmp(resource, "/devtools/", 10)) {
    return IWDP_ERROR;
  }
  const char *res = resource + 10;
  const char *res_tail = res - 1;
  while (*++res_tail == '/') {
  }
  char ch;
  for (ch = *res_tail;
       ((ch >= 'a' && ch <= 'z') || (ch >= 'A' && ch <= 'Z') ||
        (ch >= '0' && ch <= '9') || (ch && strchr("-./_", ch)));
       ch = *++res_tail) {
  }
  size_t res_len = res_tail - res;
  if (strnstr(res, "..", res_len)) {
    return IWDP_ERROR;
  }
  if (!res_len && fe_file) {
    res = fe_file;
    res_len = strlen(fe_file);
  }


  if (asprintf(to_path, "%.*s%.*s", (int)fe_path_len, fe_path, (int)res_len, res) < 0) {
    return IWDP_ERROR;
  }
  return IWDP_SUCCESS;
}
