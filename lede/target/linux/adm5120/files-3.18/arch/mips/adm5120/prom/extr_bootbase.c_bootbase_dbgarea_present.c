
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef scalar_t__ u32 ;


 scalar_t__ ZYNOS_MAGIC_DBGAREA1 ;
 scalar_t__ ZYNOS_MAGIC_DBGAREA2 ;
 scalar_t__ prom_read_be32 (int *) ;

__attribute__((used)) static inline int bootbase_dbgarea_present(u8 *data)
{
 u32 t;

 t = prom_read_be32(data+5);
 if (t != ZYNOS_MAGIC_DBGAREA1)
  return 0;

 t = prom_read_be32(data+9);
 if (t != ZYNOS_MAGIC_DBGAREA2)
  return 0;

 return 1;
}
