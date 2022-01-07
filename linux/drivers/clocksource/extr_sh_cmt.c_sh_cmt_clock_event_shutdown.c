
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sh_cmt_channel {int dummy; } ;
struct clock_event_device {int dummy; } ;


 int FLAG_CLOCKEVENT ;
 struct sh_cmt_channel* ced_to_sh_cmt (struct clock_event_device*) ;
 int sh_cmt_stop (struct sh_cmt_channel*,int ) ;

__attribute__((used)) static int sh_cmt_clock_event_shutdown(struct clock_event_device *ced)
{
 struct sh_cmt_channel *ch = ced_to_sh_cmt(ced);

 sh_cmt_stop(ch, FLAG_CLOCKEVENT);
 return 0;
}
