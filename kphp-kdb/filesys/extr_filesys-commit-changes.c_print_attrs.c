
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int fputc (char,int ) ;
 int print_attrib (char*,char*) ;
 int stdout ;

__attribute__((used)) static void print_attrs (int attrib_mask) {
  if (attrib_mask >= 0) {
    char ch = '[';
    if (attrib_mask & 1) { print_attrib ("mode", &ch); }
    if (attrib_mask & 2) { print_attrib ("uid", &ch); }
    if (attrib_mask & 4) { print_attrib ("gid", &ch); }
    if (attrib_mask & 8) { print_attrib ("size", &ch); }
    if (attrib_mask & 16) { print_attrib ("mtime", &ch); }
    if (ch == '[') {
      fputc (ch, stdout);
    }
    fputc (']', stdout);
  }
  fputc ('\n', stdout);
}
