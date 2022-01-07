
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct request {int dummy; } ;
struct driver_data {int dd_flag; } ;


 int MTIP_DDF_OVER_TEMP_BIT ;
 int MTIP_DDF_REBUILD_FAILED_BIT ;
 int MTIP_DDF_REMOVE_PENDING_BIT ;
 int MTIP_DDF_SEC_LOCK_BIT ;
 int MTIP_DDF_STOP_IO ;
 int MTIP_DDF_WRITE_PROTECT_BIT ;
 scalar_t__ likely (int) ;
 scalar_t__ rq_data_dir (struct request*) ;
 scalar_t__ test_bit (int ,int*) ;

__attribute__((used)) static inline bool is_stopped(struct driver_data *dd, struct request *rq)
{
 if (likely(!(dd->dd_flag & MTIP_DDF_STOP_IO)))
  return 0;

 if (test_bit(MTIP_DDF_REMOVE_PENDING_BIT, &dd->dd_flag))
  return 1;
 if (test_bit(MTIP_DDF_OVER_TEMP_BIT, &dd->dd_flag))
  return 1;
 if (test_bit(MTIP_DDF_WRITE_PROTECT_BIT, &dd->dd_flag) &&
     rq_data_dir(rq))
  return 1;
 if (test_bit(MTIP_DDF_SEC_LOCK_BIT, &dd->dd_flag))
  return 1;
 if (test_bit(MTIP_DDF_REBUILD_FAILED_BIT, &dd->dd_flag))
  return 1;

 return 0;
}
