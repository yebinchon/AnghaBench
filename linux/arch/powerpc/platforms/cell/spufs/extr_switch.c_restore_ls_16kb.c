
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct spu_state {TYPE_1__* lscsa; } ;
struct spu {int dummy; } ;
struct TYPE_2__ {int * ls; } ;


 unsigned int MFC_GET_CMD ;
 int send_mfc_dma (struct spu*,unsigned long,unsigned int,unsigned int,unsigned int,unsigned int,unsigned int) ;

__attribute__((used)) static inline void restore_ls_16kb(struct spu_state *csa, struct spu *spu)
{
 unsigned long addr = (unsigned long)&csa->lscsa->ls[0];
 unsigned int ls_offset = 0x0;
 unsigned int size = 16384;
 unsigned int tag = 0;
 unsigned int rclass = 0;
 unsigned int cmd = MFC_GET_CMD;





 send_mfc_dma(spu, addr, ls_offset, size, tag, rclass, cmd);
}
