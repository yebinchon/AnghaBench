
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct admhcd {int dummy; } ;


 int ADMHC_PS_CCS ;
 int ADMHC_PS_SPE ;
 int ENODEV ;
 int admhc_read_portstatus (struct admhcd*,unsigned int) ;
 int admhc_vdbg (struct admhcd*,char*,unsigned int) ;
 int admhc_write_portstatus (struct admhcd*,unsigned int,int ) ;

__attribute__((used)) static inline int admhc_port_enable(struct admhcd *ahcd, unsigned port)
{
 u32 t;

 admhc_vdbg(ahcd, "enable port%d\n", port);
 t = admhc_read_portstatus(ahcd, port);
 if (!(t & ADMHC_PS_CCS))
  return -ENODEV;

 admhc_write_portstatus(ahcd, port, ADMHC_PS_SPE);

 return 0;
}
