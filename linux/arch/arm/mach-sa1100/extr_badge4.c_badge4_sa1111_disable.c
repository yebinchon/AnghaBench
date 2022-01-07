
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int BADGE4_5V_USB ;
 unsigned int SA1111_DEVID_USB ;
 int badge4_set_5V (int ,int ) ;

__attribute__((used)) static void badge4_sa1111_disable(void *data, unsigned devid)
{
 if (devid == SA1111_DEVID_USB)
  badge4_set_5V(BADGE4_5V_USB, 0);
}
