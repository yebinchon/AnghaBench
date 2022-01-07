
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int git_indexer_progress ;
struct TYPE_3__ {int progress_payload; int (* progress_cb ) (int *,int ) ;} ;
typedef TYPE_1__ git_indexer ;


 int git_error_set_after_callback_function (int ,char*) ;
 int stub1 (int *,int ) ;

__attribute__((used)) static int do_progress_callback(git_indexer *idx, git_indexer_progress *stats)
{
 if (idx->progress_cb)
  return git_error_set_after_callback_function(
   idx->progress_cb(stats, idx->progress_payload),
   "indexer progress");
 return 0;
}
