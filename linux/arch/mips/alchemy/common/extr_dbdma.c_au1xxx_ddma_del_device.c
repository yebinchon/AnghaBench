
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_4__ {int dev_id; } ;
typedef TYPE_1__ dbdev_tab_t ;


 TYPE_1__* find_dbdev_id (int ) ;
 int memset (TYPE_1__*,int ,int) ;

void au1xxx_ddma_del_device(u32 devid)
{
 dbdev_tab_t *p = find_dbdev_id(devid);

 if (p != ((void*)0)) {
  memset(p, 0, sizeof(dbdev_tab_t));
  p->dev_id = ~0;
 }
}
