
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct clock_event_device {int dummy; } ;


 int AU1000_SYS_CNTRCTRL ;
 int AU1000_SYS_RTCMATCH2 ;
 int AU1000_SYS_RTCREAD ;
 int SYS_CNTRL_M21 ;
 int alchemy_rdsys (int ) ;
 int alchemy_wrsys (unsigned long,int ) ;

__attribute__((used)) static int au1x_rtcmatch2_set_next_event(unsigned long delta,
      struct clock_event_device *cd)
{
 delta += alchemy_rdsys(AU1000_SYS_RTCREAD);

 while (alchemy_rdsys(AU1000_SYS_CNTRCTRL) & SYS_CNTRL_M21)
  ;
 alchemy_wrsys(delta, AU1000_SYS_RTCMATCH2);

 return 0;
}
