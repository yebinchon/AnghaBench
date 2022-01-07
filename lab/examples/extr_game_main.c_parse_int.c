
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 long INT_MAX ;
 long INT_MIN ;
 scalar_t__ errno ;
 long strtol (char const*,char**,int ) ;

__attribute__((used)) static bool parse_int(const char* str, int* val) {
  char* e;
  errno = 0;
  long int n = strtol(str, &e, 0);
  if (e != str && *e == '\0' && errno == 0 && INT_MIN <= n && n <= INT_MAX) {
    *val = n;
    return 1;
  }
  return 0;
}
