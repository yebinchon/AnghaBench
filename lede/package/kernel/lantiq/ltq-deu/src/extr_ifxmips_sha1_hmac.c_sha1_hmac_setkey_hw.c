
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
struct deu_hash_t {int KIDX; int KEY; } ;


 int CRTCL_SECT_END ;
 int CRTCL_SECT_START ;
 scalar_t__ HASH_START ;

__attribute__((used)) static int sha1_hmac_setkey_hw(const u8 *key, unsigned int keylen)
{
    volatile struct deu_hash_t *hash = (struct deu_hash_t *) HASH_START;
    int i, j;
    unsigned long flag;
    u32 *in_key = (u32 *)key;

    j = 0;

    CRTCL_SECT_START;
    for (i = 0; i < keylen; i+=4)
    {
         hash->KIDX = j;
         asm("sync");
         hash->KEY = *((u32 *) in_key + j);
         j++;
    }

    CRTCL_SECT_END;
    return 0;
}
