
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct forth_stack {int dummy; } ;


 void* FORTH_FAIL ;
 int vkprintf (int,char*) ;

__attribute__((used)) static void *forth_kid16_hex (void **IP, struct forth_stack *st) {
  vkprintf (4, "forth_kid16_hex\n");
  return FORTH_FAIL;
}
