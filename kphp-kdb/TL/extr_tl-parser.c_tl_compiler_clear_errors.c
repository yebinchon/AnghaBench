
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tl_compiler {int dummy; } ;


 int tl_success (struct tl_compiler*,int ) ;

void tl_compiler_clear_errors (struct tl_compiler *C) {
  (void) tl_success (C, 0);
}
