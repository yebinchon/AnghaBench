
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct throtl_grp {TYPE_1__* td; int * slice_end; } ;
struct TYPE_2__ {int throtl_slice; } ;


 int roundup (unsigned long,int ) ;

__attribute__((used)) static inline void throtl_set_slice_end(struct throtl_grp *tg, bool rw,
     unsigned long jiffy_end)
{
 tg->slice_end[rw] = roundup(jiffy_end, tg->td->throtl_slice);
}
