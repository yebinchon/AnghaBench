
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int u64 ;
struct ia64_sal_os_state {int dummy; } ;
struct TYPE_6__ {int proc_err; } ;
typedef TYPE_1__ slidx_table_t ;
typedef int sal_log_processor_info_t ;
typedef int peidx_table_t ;
typedef int pal_bus_check_info_t ;
struct TYPE_7__ {scalar_t__ hdr; } ;


 int bus_check ;
 int fatal_mca (char*) ;
 scalar_t__ is_mca_global (int *,int *,struct ia64_sal_os_state*) ;
 int mca_make_peidx (int *,int *) ;
 int mca_make_slidx (void*,TYPE_1__*) ;
 int peidx_check_info (int *,int ,int ) ;
 int proc_err ;
 int recover_from_processor_error (int,TYPE_1__*,int *,int *,struct ia64_sal_os_state*) ;
 int slidx_count (TYPE_1__*,int ) ;
 TYPE_2__* slidx_first_entry (int *) ;

__attribute__((used)) static int
mca_try_to_recover(void *rec, struct ia64_sal_os_state *sos)
{
 int platform_err;
 int n_proc_err;
 slidx_table_t slidx;
 peidx_table_t peidx;
 pal_bus_check_info_t pbci;


 platform_err = mca_make_slidx(rec, &slidx);


 n_proc_err = slidx_count(&slidx, proc_err);


 if (n_proc_err > 1)
  return fatal_mca("Too Many Errors");
 else if (n_proc_err == 0)

  return fatal_mca("Weird SAL record");


 mca_make_peidx((sal_log_processor_info_t*)
  slidx_first_entry(&slidx.proc_err)->hdr, &peidx);


 *((u64*)&pbci) = peidx_check_info(&peidx, bus_check, 0);


 if (is_mca_global(&peidx, &pbci, sos))
  return fatal_mca("global MCA");


 return recover_from_processor_error(platform_err, &slidx, &peidx,
         &pbci, sos);
}
