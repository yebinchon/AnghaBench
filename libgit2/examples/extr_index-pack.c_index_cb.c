
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int indexed_objects; int total_objects; } ;
typedef TYPE_1__ git_indexer_progress ;


 int printf (char*,int,int) ;

__attribute__((used)) static int index_cb(const git_indexer_progress *stats, void *data)
{
 (void)data;
 printf("\rProcessing %u of %u", stats->indexed_objects, stats->total_objects);

 return 0;
}
