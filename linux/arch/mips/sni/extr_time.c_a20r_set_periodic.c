
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct clock_event_device {int dummy; } ;


 scalar_t__ A20R_PT_CLOCK_BASE ;
 int SNI_COUNTER0_DIV ;
 int SNI_COUNTER2_DIV ;
 int wmb () ;

__attribute__((used)) static int a20r_set_periodic(struct clock_event_device *evt)
{
 *(volatile u8 *)(A20R_PT_CLOCK_BASE + 12) = 0x34;
 wmb();
 *(volatile u8 *)(A20R_PT_CLOCK_BASE + 0) = SNI_COUNTER0_DIV;
 wmb();
 *(volatile u8 *)(A20R_PT_CLOCK_BASE + 0) = SNI_COUNTER0_DIV >> 8;
 wmb();

 *(volatile u8 *)(A20R_PT_CLOCK_BASE + 12) = 0xb4;
 wmb();
 *(volatile u8 *)(A20R_PT_CLOCK_BASE + 8) = SNI_COUNTER2_DIV;
 wmb();
 *(volatile u8 *)(A20R_PT_CLOCK_BASE + 8) = SNI_COUNTER2_DIV >> 8;
 wmb();
 return 0;
}
