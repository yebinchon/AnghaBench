
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;


 int inv_mix_column (int ) ;

__attribute__((used)) static void inv_mix_columns(uint32_t state[4])
{
  state[0] = inv_mix_column(state[0]);
  state[1] = inv_mix_column(state[1]);
  state[2] = inv_mix_column(state[2]);
  state[3] = inv_mix_column(state[3]);
}
