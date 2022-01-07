
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct throtl_grp {int * slice_end; int * slice_start; int service_queue; TYPE_1__* td; } ;
struct TYPE_2__ {int throtl_slice; } ;


 int READ ;
 int jiffies ;
 int roundup (unsigned long,int ) ;
 int throtl_log (int *,char*,char,int ,int ,int ) ;

__attribute__((used)) static inline void throtl_extend_slice(struct throtl_grp *tg, bool rw,
           unsigned long jiffy_end)
{
 tg->slice_end[rw] = roundup(jiffy_end, tg->td->throtl_slice);
 throtl_log(&tg->service_queue,
     "[%c] extend slice start=%lu end=%lu jiffies=%lu",
     rw == READ ? 'R' : 'W', tg->slice_start[rw],
     tg->slice_end[rw], jiffies);
}
