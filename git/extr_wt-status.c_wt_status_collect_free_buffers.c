
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int detached_from; int onto; int branch; } ;
struct wt_status {TYPE_1__ state; } ;


 int free (int ) ;

void wt_status_collect_free_buffers(struct wt_status *s)
{
 free(s->state.branch);
 free(s->state.onto);
 free(s->state.detached_from);
}
