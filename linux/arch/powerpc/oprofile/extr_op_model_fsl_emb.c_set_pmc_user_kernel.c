
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 int PMLCA_FCS ;
 int PMLCA_FCU ;
 int get_pmlca (int) ;
 int set_pmlca (int,int ) ;

__attribute__((used)) static void set_pmc_user_kernel(int ctr, int user, int kernel)
{
 u32 pmlca;

 pmlca = get_pmlca(ctr);

 if(user)
  pmlca &= ~PMLCA_FCU;
 else
  pmlca |= PMLCA_FCU;

 if(kernel)
  pmlca &= ~PMLCA_FCS;
 else
  pmlca |= PMLCA_FCS;

 set_pmlca(ctr, pmlca);
}
