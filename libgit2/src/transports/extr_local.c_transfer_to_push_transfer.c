
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int (* push_transfer_progress ) (int ,int ,int ,int ) ;int payload; } ;
typedef TYPE_1__ git_remote_callbacks ;
struct TYPE_5__ {int received_bytes; int total_objects; int received_objects; } ;
typedef TYPE_2__ git_indexer_progress ;


 int stub1 (int ,int ,int ,int ) ;

__attribute__((used)) static int transfer_to_push_transfer(const git_indexer_progress *stats, void *payload)
{
 const git_remote_callbacks *cbs = payload;

 if (!cbs || !cbs->push_transfer_progress)
  return 0;

 return cbs->push_transfer_progress(stats->received_objects, stats->total_objects, stats->received_bytes,
        cbs->payload);
}
