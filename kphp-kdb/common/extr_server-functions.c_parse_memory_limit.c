
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int exit (int) ;
 int kprintf (char*,...) ;
 int sscanf (char const*,char*,long long*,char*) ;
 int usage () ;

__attribute__((used)) static long long parse_memory_limit (const char *s) {
  long long x;
  char c = 0;
  if (sscanf (s, "%lld%c", &x, &c) < 1) {
    kprintf ("Parsing limit for option fail: %s\n", s);
    usage ();
    exit (1);
  }
  switch (c | 0x20) {
    case ' ': break;
    case 'k': x <<= 10; break;
    case 'm': x <<= 20; break;
    case 'g': x <<= 30; break;
    case 't': x <<= 40; break;
    default:
      kprintf ("Parsing limit fail. Unknown suffix '%c'.\n", c);
      usage ();
      exit (1);
  }
  return x;
}
