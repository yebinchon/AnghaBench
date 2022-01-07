
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ strstr (char const*,char const*) ;

char *dl_strstr (const char *a, const char *b) {
  return (char *)strstr (a, b);
}
