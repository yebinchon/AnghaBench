
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
typedef int u16 ;
struct nios2_timer {scalar_t__ base; } ;


 int readw (scalar_t__) ;

__attribute__((used)) static u16 timer_readw(struct nios2_timer *timer, u32 offs)
{
 return readw(timer->base + offs);
}
