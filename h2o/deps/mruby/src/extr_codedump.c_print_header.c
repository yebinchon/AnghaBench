
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ ptrdiff_t ;
typedef int mrb_irep ;
typedef scalar_t__ int32_t ;


 scalar_t__ mrb_debug_get_line (int *,scalar_t__) ;
 int printf (char*,...) ;

__attribute__((used)) static void
print_header(mrb_irep *irep, ptrdiff_t i)
{
  int32_t line;

  line = mrb_debug_get_line(irep, i);
  if (line < 0) {
    printf("      ");
  }
  else {
    printf("%5d ", line);
  }

  printf("%03d ", (int)i);
}
