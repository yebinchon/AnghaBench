
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct ia64_sal_os_state {int dummy; } ;
typedef int slidx_table_t ;
typedef int peidx_table_t ;
struct TYPE_5__ {int cm; scalar_t__ ci; scalar_t__ cc; scalar_t__ bc; scalar_t__ uc; scalar_t__ rc; scalar_t__ tc; scalar_t__ us; } ;
typedef TYPE_1__ pal_processor_state_info_t ;
struct TYPE_6__ {scalar_t__ bsi; scalar_t__ eb; scalar_t__ ib; } ;
typedef TYPE_2__ pal_bus_check_info_t ;


 int fatal_mca (char*) ;
 int mca_recovered (char*) ;
 int peidx_bus_check_num (int *) ;
 scalar_t__ peidx_psp (int *) ;
 int recover_from_platform_error (int *,int *,TYPE_2__*,struct ia64_sal_os_state*) ;
 int recover_from_tlb_check (int *) ;

__attribute__((used)) static int
recover_from_processor_error(int platform, slidx_table_t *slidx,
        peidx_table_t *peidx, pal_bus_check_info_t *pbci,
        struct ia64_sal_os_state *sos)
{
 pal_processor_state_info_t *psp =
  (pal_processor_state_info_t*)peidx_psp(peidx);
 if (psp->cm == 1)
  return mca_recovered("machine check is already corrected.");




 if (psp->us || psp->ci == 0)
  return fatal_mca("error not contained");




 if (psp->tc && !(psp->cc || psp->bc || psp->rc || psp->uc))
  return recover_from_tlb_check(peidx);
 if (psp->cc == 0 && (psp->bc == 0 || pbci == ((void*)0)))
  return fatal_mca("No cache or bus check");




 if (peidx_bus_check_num(peidx) > 1)
  return fatal_mca("Too many bus checks");

 if (pbci->ib)
  return fatal_mca("Internal Bus error");
 if (pbci->eb && pbci->bsi > 0)
  return fatal_mca("External bus check fatal status");




 if (platform)
  return recover_from_platform_error(slidx, peidx, pbci, sos);




 return fatal_mca("Strange SAL record");
}
