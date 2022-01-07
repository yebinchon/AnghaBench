
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct throtl_grp {unsigned long* slice_start; scalar_t__* slice_end; int service_queue; TYPE_1__* td; scalar_t__* io_disp; scalar_t__* bytes_disp; } ;
struct TYPE_2__ {scalar_t__ throtl_slice; } ;


 int READ ;
 scalar_t__ jiffies ;
 int throtl_log (int *,char*,char,unsigned long,scalar_t__,scalar_t__) ;
 scalar_t__ time_after_eq (unsigned long,unsigned long) ;

__attribute__((used)) static inline void throtl_start_new_slice_with_credit(struct throtl_grp *tg,
  bool rw, unsigned long start)
{
 tg->bytes_disp[rw] = 0;
 tg->io_disp[rw] = 0;







 if (time_after_eq(start, tg->slice_start[rw]))
  tg->slice_start[rw] = start;

 tg->slice_end[rw] = jiffies + tg->td->throtl_slice;
 throtl_log(&tg->service_queue,
     "[%c] new slice with credit start=%lu end=%lu jiffies=%lu",
     rw == READ ? 'R' : 'W', tg->slice_start[rw],
     tg->slice_end[rw], jiffies);
}
