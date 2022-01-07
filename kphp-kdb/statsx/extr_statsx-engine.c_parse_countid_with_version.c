
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int sscanf (char const*,char*,long long*,...) ;
 scalar_t__ strchr (char const*,char) ;

int parse_countid_with_version(const char *s, long long *pcount_id, int *pver) {
  *pver = -1;
  if (strchr(s, '@') != 0) {
    return sscanf(s, "%lld@%d", pcount_id, pver) == 2;
  }
  return sscanf(s, "%lld", pcount_id) == 1;
}
