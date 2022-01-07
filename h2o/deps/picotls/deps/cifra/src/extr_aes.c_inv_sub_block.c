
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;


 int S_inv ;
 int sub_word (int ,int ) ;

__attribute__((used)) static void inv_sub_block(uint32_t state[4])
{
  state[0] = sub_word(state[0], S_inv);
  state[1] = sub_word(state[1], S_inv);
  state[2] = sub_word(state[2], S_inv);
  state[3] = sub_word(state[3], S_inv);
}
