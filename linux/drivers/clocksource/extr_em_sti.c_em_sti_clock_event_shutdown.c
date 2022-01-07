
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct em_sti_priv {int dummy; } ;
struct clock_event_device {int dummy; } ;


 int USER_CLOCKEVENT ;
 struct em_sti_priv* ced_to_em_sti (struct clock_event_device*) ;
 int em_sti_stop (struct em_sti_priv*,int ) ;

__attribute__((used)) static int em_sti_clock_event_shutdown(struct clock_event_device *ced)
{
 struct em_sti_priv *p = ced_to_em_sti(ced);
 em_sti_stop(p, USER_CLOCKEVENT);
 return 0;
}
