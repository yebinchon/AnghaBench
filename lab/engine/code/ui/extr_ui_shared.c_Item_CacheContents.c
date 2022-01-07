
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int window; } ;
typedef TYPE_1__ itemDef_t ;


 int Window_CacheContents (int *) ;

__attribute__((used)) static void Item_CacheContents(itemDef_t *item) {
 if (item) {
  Window_CacheContents(&item->window);
 }

}
