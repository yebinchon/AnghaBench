
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ecdh {unsigned int key_size; } ;


 unsigned int ECDH_KPP_SECRET_MIN_SIZE ;

unsigned int crypto_ecdh_key_len(const struct ecdh *params)
{
 return ECDH_KPP_SECRET_MIN_SIZE + params->key_size;
}
