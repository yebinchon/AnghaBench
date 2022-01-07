
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
struct xive_q {int dummy; } ;


 int __xive_native_disable_queue (int ,struct xive_q*,int ) ;

void xive_native_disable_queue(u32 vp_id, struct xive_q *q, u8 prio)
{
 __xive_native_disable_queue(vp_id, q, prio);
}
