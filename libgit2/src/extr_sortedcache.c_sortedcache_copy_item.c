
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int item_path_offset; } ;
typedef TYPE_1__ git_sortedcache ;


 int memcpy (void*,void*,int ) ;

__attribute__((used)) static int sortedcache_copy_item(void *payload, void *tgt_item, void *src_item)
{
 git_sortedcache *sc = payload;

 memcpy(tgt_item, src_item, sc->item_path_offset);
 return 0;
}
