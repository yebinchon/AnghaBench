
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct admhcd {int dummy; } ;


 int ADMHC_PS_CCS ;
 int ADMHC_PS_CSC ;
 int ADMHC_PS_SPE ;
 int ADMHC_PS_SPR ;
 int ENODEV ;
 int admhc_read_portstatus (struct admhcd*,unsigned int) ;
 int admhc_vdbg (struct admhcd*,char*,unsigned int) ;
 int admhc_write_portstatus (struct admhcd*,unsigned int,int) ;
 int mdelay (int) ;

__attribute__((used)) static inline int admhc_port_reset(struct admhcd *ahcd, unsigned port)
{
 u32 t;

 admhc_vdbg(ahcd, "reset port%d\n", port);
 t = admhc_read_portstatus(ahcd, port);
 if (!(t & ADMHC_PS_CCS))
  return -ENODEV;

 admhc_write_portstatus(ahcd, port, ADMHC_PS_SPR);
 mdelay(10);
 admhc_write_portstatus(ahcd, port, (ADMHC_PS_SPE | ADMHC_PS_CSC));
 mdelay(100);

 return 0;
}
