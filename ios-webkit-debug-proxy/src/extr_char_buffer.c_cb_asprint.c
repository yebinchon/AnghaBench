
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ssize_t ;


 int cb_sprint (char*,char const*,int ,int ,int ) ;
 scalar_t__ malloc (size_t) ;

int cb_asprint(char **ret, const char *buf, ssize_t length,
    ssize_t max_width, ssize_t max_lines) {
  size_t n = cb_sprint(((void*)0), buf, length, max_width, max_lines);
  *ret = (char *)malloc((n+1) * sizeof(char));
  if (!*ret) {
    return -1;
  }
  return cb_sprint(*ret, buf, length, max_width, max_lines);
}
