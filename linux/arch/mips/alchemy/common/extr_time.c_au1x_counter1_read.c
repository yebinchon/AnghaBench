
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct clocksource {int dummy; } ;


 int AU1000_SYS_RTCREAD ;
 int alchemy_rdsys (int ) ;

__attribute__((used)) static u64 au1x_counter1_read(struct clocksource *cs)
{
 return alchemy_rdsys(AU1000_SYS_RTCREAD);
}
