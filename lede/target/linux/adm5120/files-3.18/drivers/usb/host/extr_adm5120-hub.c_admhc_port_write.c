
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct admhcd {int dummy; } ;


 int admhc_write_portstatus (struct admhcd*,unsigned int,int ) ;
 int dbg_port_write (struct admhcd*,char*,unsigned int,int ) ;

__attribute__((used)) static inline int admhc_port_write(struct admhcd *ahcd, unsigned port,
  u32 val)
{



 admhc_write_portstatus(ahcd, port, val);

 return 0;
}
