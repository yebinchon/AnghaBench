
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int git_packbuilder_progress ;
struct TYPE_3__ {void* progress_cb_payload; int progress_cb; } ;
typedef TYPE_1__ git_packbuilder ;



int git_packbuilder_set_callbacks(git_packbuilder *pb, git_packbuilder_progress progress_cb, void *progress_cb_payload)
{
 if (!pb)
  return -1;

 pb->progress_cb = progress_cb;
 pb->progress_cb_payload = progress_cb_payload;

 return 0;
}
