
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct macio_chip {int dummy; } ;
struct device_node {int dummy; } ;


 long ENODEV ;
 int HEATHROW_FCR ;
 int HEATHROW_MBCR ;
 int HRW_MESH_ENABLE ;
 int LOCK (unsigned long) ;
 int MACIO_BIC (int ,int) ;
 int MACIO_BIS (int ,int) ;
 int MACIO_IN32 (int ) ;
 int UNLOCK (unsigned long) ;
 struct macio_chip* macio_find (struct device_node*,int ) ;
 int macio_unknown ;
 int udelay (int) ;

__attribute__((used)) static long heathrow_mesh_enable(struct device_node *node, long param,
     long value)
{
 struct macio_chip* macio;
 unsigned long flags;

 macio = macio_find(node, macio_unknown);
 if (!macio)
  return -ENODEV;
 LOCK(flags);

 if (value)
  MACIO_BIS(HEATHROW_FCR, HRW_MESH_ENABLE);
 else
  MACIO_BIC(HEATHROW_FCR, HRW_MESH_ENABLE);
 (void)MACIO_IN32(HEATHROW_FCR);
 udelay(10);

 if (value)
  MACIO_BIC(HEATHROW_MBCR, 0x04000000);
 else
  MACIO_BIS(HEATHROW_MBCR, 0x04000000);
 (void)MACIO_IN32(HEATHROW_MBCR);
 udelay(10);
 UNLOCK(flags);

 return 0;
}
