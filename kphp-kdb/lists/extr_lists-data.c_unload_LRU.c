
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {size_t next; } ;


 size_t head_metafile ;
 TYPE_1__** metafiles ;
 int unload_metafile (size_t) ;

int unload_LRU () {
  if (metafiles[head_metafile]->next == head_metafile) {
    return 0;
  }
  unload_metafile (metafiles[head_metafile]->next);
  return 1;
}
