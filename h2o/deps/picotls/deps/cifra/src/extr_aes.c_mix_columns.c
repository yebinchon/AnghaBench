
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;


 int mix_column (int ) ;

__attribute__((used)) static void mix_columns(uint32_t state[4])
{
  state[0] = mix_column(state[0]);
  state[1] = mix_column(state[1]);
  state[2] = mix_column(state[2]);
  state[3] = mix_column(state[3]);
}
