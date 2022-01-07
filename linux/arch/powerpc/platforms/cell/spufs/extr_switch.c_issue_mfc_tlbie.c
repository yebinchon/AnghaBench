
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct spu_state {int dummy; } ;
struct spu {int dummy; } ;


 int mb () ;
 int spu_tlb_invalidate (struct spu*) ;

__attribute__((used)) static inline void issue_mfc_tlbie(struct spu_state *csa, struct spu *spu)
{






 spu_tlb_invalidate(spu);
 mb();
}
