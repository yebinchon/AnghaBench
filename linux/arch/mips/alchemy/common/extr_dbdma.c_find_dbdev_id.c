
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ u32 ;
struct TYPE_4__ {scalar_t__ dev_id; } ;
typedef TYPE_1__ dbdev_tab_t ;


 int DBDEV_TAB_SIZE ;
 TYPE_1__* dbdev_tab ;

__attribute__((used)) static dbdev_tab_t *find_dbdev_id(u32 id)
{
 int i;
 dbdev_tab_t *p;
 for (i = 0; i < DBDEV_TAB_SIZE; ++i) {
  p = &dbdev_tab[i];
  if (p->dev_id == id)
   return p;
 }
 return ((void*)0);
}
