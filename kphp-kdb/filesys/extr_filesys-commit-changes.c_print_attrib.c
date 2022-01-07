
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int fputc (char,int ) ;
 int printf (char*,char const* const) ;
 int stdout ;

__attribute__((used)) static void print_attrib (const char *const attrib_name, char *ch) {
  fputc (*ch, stdout);
  printf ("%s", attrib_name);
  *ch = '|';
}
