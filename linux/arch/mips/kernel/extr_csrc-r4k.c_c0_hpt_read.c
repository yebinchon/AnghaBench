
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct clocksource {int dummy; } ;


 int read_c0_count () ;

__attribute__((used)) static u64 c0_hpt_read(struct clocksource *cs)
{
 return read_c0_count();
}
