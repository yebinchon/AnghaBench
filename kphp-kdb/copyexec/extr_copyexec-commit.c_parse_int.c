
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 long long INT_MAX ;
 long long INT_MIN ;
 scalar_t__ errno ;
 int exit (int) ;
 int kprintf (char*,int,char const* const) ;
 int strncmp (char*,char*,int) ;
 long long strtoll (char*,char**,int) ;

char *parse_int (char *p, int line, const char *const actions_filename, int *r) {
  errno = 0;
  long long l;
  if (!strncmp (p, "0x", 2)) {
    l = strtoll (p, &p, 16);
  } else if (!strncmp (p, "0", 1)) {
    l = strtoll (p, &p, 8);
  } else {
    l = strtoll (p, &p, 10);
  }
  if (errno != 0) {
    kprintf ("strtoll failed during parsing int at line %d in %s.\n", line, actions_filename);
    exit (1);
  }
  if (l < INT_MIN || l > INT_MAX) {
    kprintf ("signed 32 bit integer is out of range at line %d in %s.\n", line, actions_filename);
    exit (1);
  }
  *r = l;
  return p;
}
