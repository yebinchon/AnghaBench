
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int tx_kicks; } ;
struct vector_private {int tx_queue; TYPE_1__ estats; } ;
struct timer_list {int dummy; } ;


 struct vector_private* from_timer (int ,struct timer_list*,int ) ;
 int tl ;
 int vector_send (int ) ;
 struct vector_private* vp ;

__attribute__((used)) static void vector_timer_expire(struct timer_list *t)
{
 struct vector_private *vp = from_timer(vp, t, tl);

 vp->estats.tx_kicks++;
 vector_send(vp->tx_queue);
}
