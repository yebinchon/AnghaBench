
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;


 int S ;
 int sub_word (int ,int ) ;

__attribute__((used)) static void sub_block(uint32_t state[4])
{
  state[0] = sub_word(state[0], S);
  state[1] = sub_word(state[1], S);
  state[2] = sub_word(state[2], S);
  state[3] = sub_word(state[3], S);
}
