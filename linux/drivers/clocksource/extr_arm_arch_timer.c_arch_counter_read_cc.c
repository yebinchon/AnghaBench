
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct cyclecounter {int dummy; } ;


 int arch_timer_read_counter () ;

__attribute__((used)) static u64 arch_counter_read_cc(const struct cyclecounter *cc)
{
 return arch_timer_read_counter();
}
