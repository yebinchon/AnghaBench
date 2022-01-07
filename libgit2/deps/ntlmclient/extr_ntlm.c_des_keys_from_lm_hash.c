
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int * ntlm_des_block ;


 int des_key_from_password (int **,int *,int) ;
 int memcpy (int *,int *,int) ;

__attribute__((used)) static void des_keys_from_lm_hash(ntlm_des_block out[3], ntlm_des_block lm_hash[2])
{
 ntlm_des_block split[3];

 memcpy(&split[0][0], &lm_hash[0][0], 7);

 memcpy(&split[1][0], &lm_hash[0][7], 1);
 memcpy(&split[1][1], &lm_hash[1][0], 6);

 memcpy(&split[2][0], &lm_hash[1][6], 2);

 des_key_from_password(&out[0], split[0], 7);
 des_key_from_password(&out[1], split[1], 7);
 des_key_from_password(&out[2], split[2], 2);
}
