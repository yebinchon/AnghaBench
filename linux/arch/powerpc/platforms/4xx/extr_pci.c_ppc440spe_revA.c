
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int SPRN_PVR ;
 int mfspr (int ) ;

__attribute__((used)) static inline int ppc440spe_revA(void)
{

        if ((mfspr(SPRN_PVR) & 0xffefffff) == 0x53421890)
                return 1;
        else
                return 0;
}
