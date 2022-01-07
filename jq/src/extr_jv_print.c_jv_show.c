
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int jv ;


 int JV_PRINT_COLOR ;
 int JV_PRINT_INDENT_FLAGS (int) ;
 int JV_PRINT_INVALID ;
 int JV_PRINT_PRETTY ;
 int fflush (int ) ;
 int jv_copy (int ) ;
 int jv_dumpf (int ,int ,int) ;
 int stderr ;

void jv_show(jv x, int flags) {
  if (flags == -1)
    flags = JV_PRINT_PRETTY | JV_PRINT_COLOR | JV_PRINT_INDENT_FLAGS(2);
  jv_dumpf(jv_copy(x), stderr, flags | JV_PRINT_INVALID);
  fflush(stderr);
}
