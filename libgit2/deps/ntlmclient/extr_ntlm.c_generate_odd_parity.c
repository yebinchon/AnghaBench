
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int* ntlm_des_block ;


 int EVEN_PARITY (int) ;

__attribute__((used)) static void generate_odd_parity(ntlm_des_block *block)
{
 size_t i;

 for (i = 0; i < sizeof(ntlm_des_block); i++)
  (*block)[i] |= (1 ^ EVEN_PARITY((*block)[i]));
}
