
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int PATH_MAX ;
 int assert (int) ;
 int exit (int) ;
 int kprintf (char*) ;
 int snprintf (char*,int,char*,char const*) ;

__attribute__((used)) static int append_path (char *s, int l, const char *filename) {
  int o = PATH_MAX - l;
  assert (o > 0);
  int r = snprintf (s + l, o, "/%s", filename);
  if (r >= o - 1) {
    kprintf ("append_path fail (buffer overflow)\n");
    exit (1);
  }
  return l + r;
}
