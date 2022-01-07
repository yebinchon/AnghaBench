
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct ia64_sal_os_state {int dummy; } ;
typedef int slidx_table_t ;
typedef int peidx_table_t ;
struct TYPE_5__ {scalar_t__ bc; scalar_t__ cc; } ;
typedef TYPE_1__ pal_processor_state_info_t ;
struct TYPE_6__ {scalar_t__ bsi; int type; scalar_t__ eb; } ;
typedef TYPE_2__ pal_bus_check_info_t ;


 scalar_t__ peidx_psp (int *) ;
 int recover_from_read_error (int *,int *,TYPE_2__*,struct ia64_sal_os_state*) ;

__attribute__((used)) static int
recover_from_platform_error(slidx_table_t *slidx, peidx_table_t *peidx,
       pal_bus_check_info_t *pbci,
       struct ia64_sal_os_state *sos)
{
 int status = 0;
 pal_processor_state_info_t *psp =
  (pal_processor_state_info_t*)peidx_psp(peidx);

 if (psp->bc && pbci->eb && pbci->bsi == 0) {
  switch(pbci->type) {
  case 1:
  case 3:
  case 9:
   status = recover_from_read_error(slidx, peidx, pbci,
        sos);
   break;
  case 0:
  case 2:
  case 4:
  case 5:
  case 6:
  case 7:
  case 8:
  case 10:
  case 11:
  case 12:

  default:
   break;
  }
 } else if (psp->cc && !psp->bc) {
  status = recover_from_read_error(slidx, peidx, pbci, sos);
 }

 return status;
}
