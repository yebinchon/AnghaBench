
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct tpm_chip {int nr_allocated_banks; TYPE_1__* allocated_banks; } ;
struct TYPE_2__ {size_t crypto_id; int digest_size; int alg_id; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 size_t HASH_ALGO_SHA1 ;
 int TPM_ALG_SHA1 ;
 int * hash_digest_size ;
 TYPE_1__* kcalloc (int,int,int ) ;

int tpm1_get_pcr_allocation(struct tpm_chip *chip)
{
 chip->allocated_banks = kcalloc(1, sizeof(*chip->allocated_banks),
     GFP_KERNEL);
 if (!chip->allocated_banks)
  return -ENOMEM;

 chip->allocated_banks[0].alg_id = TPM_ALG_SHA1;
 chip->allocated_banks[0].digest_size = hash_digest_size[HASH_ALGO_SHA1];
 chip->allocated_banks[0].crypto_id = HASH_ALGO_SHA1;
 chip->nr_allocated_banks = 1;

 return 0;
}
