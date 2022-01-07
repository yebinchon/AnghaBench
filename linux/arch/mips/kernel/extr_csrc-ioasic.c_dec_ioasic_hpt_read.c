
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct clocksource {int dummy; } ;


 int IO_REG_FCTR ;
 int ioasic_read (int ) ;

__attribute__((used)) static u64 dec_ioasic_hpt_read(struct clocksource *cs)
{
 return ioasic_read(IO_REG_FCTR);
}
