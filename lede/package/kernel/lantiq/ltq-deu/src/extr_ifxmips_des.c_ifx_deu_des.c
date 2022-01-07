
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
typedef int u32 ;
struct TYPE_2__ {scalar_t__ M; int E_D; int O; scalar_t__ BUS; } ;
struct des_t {int IVHR; int IVLR; int OHR; int OLR; TYPE_1__ controlr; void* ILR; void* IHR; void* K1LR; void* K1HR; void* K2LR; void* K2HR; void* K3LR; void* K3HR; } ;
struct des_ctx {int* expkey; scalar_t__ controlr_M; int key_length; } ;


 int CRTCL_SECT_END ;
 int CRTCL_SECT_START ;
 scalar_t__ DES_3DES_START ;
 void* DEU_ENDIAN_SWAP (int) ;
 void* INPUT_ENDIAN_SWAP (int) ;
 int printk (char*,int) ;

void ifx_deu_des (void *ctx_arg, u8 *out_arg, const u8 *in_arg,
             u8 *iv_arg, u32 nbytes, int encdec, int mode)
{
        volatile struct des_t *des = (struct des_t *) DES_3DES_START;
        struct des_ctx *dctx = ctx_arg;
        u32 *key = dctx->expkey;
        unsigned long flag;

        int i = 0;
        int nblocks = 0;

        CRTCL_SECT_START;

        des->controlr.M = dctx->controlr_M;
        if (dctx->controlr_M == 0)
        {
                des->K1HR = DEU_ENDIAN_SWAP(*((u32 *) key + 0));
                des->K1LR = DEU_ENDIAN_SWAP(*((u32 *) key + 1));

        }
        else {

                switch (dctx->key_length) {
                case 24:
                        des->K3HR = DEU_ENDIAN_SWAP(*((u32 *) key + 4));
                        des->K3LR = DEU_ENDIAN_SWAP(*((u32 *) key + 5));


                case 16:
                        des->K2HR = DEU_ENDIAN_SWAP(*((u32 *) key + 2));
                        des->K2LR = DEU_ENDIAN_SWAP(*((u32 *) key + 3));


                case 8:
                        des->K1HR = DEU_ENDIAN_SWAP(*((u32 *) key + 0));
                        des->K1LR = DEU_ENDIAN_SWAP(*((u32 *) key + 1));
                        break;

                default:
                        CRTCL_SECT_END;
                        return;
                }
        }

        des->controlr.E_D = !encdec;
        des->controlr.O = mode;

        if (mode > 0) {
                des->IVHR = DEU_ENDIAN_SWAP(*(u32 *) iv_arg);
                des->IVLR = DEU_ENDIAN_SWAP(*((u32 *) iv_arg + 1));
        };

        nblocks = nbytes / 4;

        for (i = 0; i < nblocks; i += 2) {
                des->IHR = INPUT_ENDIAN_SWAP(*((u32 *) in_arg + i));
                des->ILR = INPUT_ENDIAN_SWAP(*((u32 *) in_arg + 1 + i));

                while (des->controlr.BUS) {

                }

                *((u32 *) out_arg + 0 + i) = des->OHR;
                *((u32 *) out_arg + 1 + i) = des->OLR;

        }



    if (mode > 0) {
        *(u32 *) iv_arg = DEU_ENDIAN_SWAP(des->IVHR);
        *((u32 *) iv_arg + 1) = DEU_ENDIAN_SWAP(des->IVLR);
    };

    CRTCL_SECT_END;
}
