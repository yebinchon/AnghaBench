
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
typedef void* u32 ;
struct crypto_tfm {int dummy; } ;
struct arc4_t {void* K0R; void* K1R; void* K2R; void* K3R; } ;
struct TYPE_2__ {unsigned int key_length; scalar_t__ buf; } ;


 scalar_t__ ARC4_START ;
 int* IFX_ARC4_CON ;
 TYPE_1__* ctx ;
 int memcpy (int *,void**,unsigned int) ;

__attribute__((used)) static int arc4_set_key(struct crypto_tfm *tfm, const u8 *inkey,
                       unsigned int key_len)
{

        volatile struct arc4_t *arc4 = (struct arc4_t *) ARC4_START;
        u32 *in_key = (u32 *)inkey;



        *IFX_ARC4_CON = ( (1<<31) | ((key_len - 1)<<27) | (1<<26) | (3<<16) );


        arc4->K3R = *((u32 *) in_key + 0);
        arc4->K2R = *((u32 *) in_key + 1);
        arc4->K1R = *((u32 *) in_key + 2);
        arc4->K0R = *((u32 *) in_key + 3);







        return 0;
}
