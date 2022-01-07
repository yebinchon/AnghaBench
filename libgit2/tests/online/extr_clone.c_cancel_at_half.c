
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int received_objects; int total_objects; } ;
typedef TYPE_1__ git_indexer_progress ;


 int GIT_UNUSED (void*) ;

__attribute__((used)) static int cancel_at_half(const git_indexer_progress *stats, void *payload)
{
 GIT_UNUSED(payload);

 if (stats->received_objects > (stats->total_objects/2))
  return 4321;
 return 0;
}
