
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {unsigned int* ui; } ;
typedef TYPE_1__ addr64 ;


 int MFC_Cmd ;
 int MFC_EAH ;
 int MFC_EAL ;
 int MFC_LSA ;
 int MFC_Size ;
 int MFC_TagID ;
 int spu_writech (int ,unsigned int) ;

__attribute__((used)) static inline void enqueue_putllc(addr64 lscsa_ea)
{
 unsigned int ls = 0;
 unsigned int size = 128;
 unsigned int tag_id = 0;
 unsigned int cmd = 0xB4;







 spu_writech(MFC_LSA, ls);
 spu_writech(MFC_EAH, lscsa_ea.ui[0]);
 spu_writech(MFC_EAL, lscsa_ea.ui[1]);
 spu_writech(MFC_Size, size);
 spu_writech(MFC_TagID, tag_id);
 spu_writech(MFC_Cmd, cmd);
}
