
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rsa_key {int dummy; } ;


 int asn1_ber_decoder (int *,struct rsa_key*,void const*,unsigned int) ;
 int rsaprivkey_decoder ;

int rsa_parse_priv_key(struct rsa_key *rsa_key, const void *key,
         unsigned int key_len)
{
 return asn1_ber_decoder(&rsaprivkey_decoder, rsa_key, key, key_len);
}
