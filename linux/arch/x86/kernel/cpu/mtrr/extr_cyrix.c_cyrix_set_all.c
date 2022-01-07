
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int type; int size; int base; } ;


 scalar_t__ CX86_CCR0 ;
 scalar_t__ CX86_CCR4 ;
 TYPE_1__* arr_state ;
 int * ccr_state ;
 int cyrix_set_arr (int,int ,int ,int ) ;
 int post_set () ;
 int prepare_set () ;
 int setCx86 (scalar_t__,int ) ;

__attribute__((used)) static void cyrix_set_all(void)
{
 int i;

 prepare_set();


 for (i = 0; i < 4; i++)
  setCx86(CX86_CCR0 + i, ccr_state[i]);
 for (; i < 7; i++)
  setCx86(CX86_CCR4 + i, ccr_state[i]);

 for (i = 0; i < 8; i++) {
  cyrix_set_arr(i, arr_state[i].base,
         arr_state[i].size, arr_state[i].type);
 }

 post_set();
}
