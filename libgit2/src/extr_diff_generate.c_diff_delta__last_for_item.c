
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_16__ TYPE_6__ ;
typedef struct TYPE_15__ TYPE_5__ ;
typedef struct TYPE_14__ TYPE_4__ ;
typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


struct TYPE_14__ {int id; int mode; int path; } ;
typedef TYPE_4__ git_index_entry ;
struct TYPE_11__ {int (* strcomp ) (int ,int ) ;int deltas; } ;
struct TYPE_15__ {TYPE_1__ base; } ;
typedef TYPE_5__ git_diff_generated ;
struct TYPE_13__ {int id; int mode; int path; } ;
struct TYPE_12__ {int id; } ;
struct TYPE_16__ {int status; TYPE_3__ new_file; TYPE_2__ old_file; } ;
typedef TYPE_6__ git_diff_delta ;
 int git_oid__cmp (int *,int *) ;
 TYPE_6__* git_vector_last (int *) ;
 int stub1 (int ,int ) ;

__attribute__((used)) static git_diff_delta *diff_delta__last_for_item(
 git_diff_generated *diff,
 const git_index_entry *item)
{
 git_diff_delta *delta = git_vector_last(&diff->base.deltas);
 if (!delta)
  return ((void*)0);

 switch (delta->status) {
 case 130:
 case 132:
  if (git_oid__cmp(&delta->old_file.id, &item->id) == 0)
   return delta;
  break;
 case 133:
  if (git_oid__cmp(&delta->new_file.id, &item->id) == 0)
   return delta;
  break;
 case 129:
 case 128:
  if (diff->base.strcomp(delta->new_file.path, item->path) == 0 &&
   git_oid__cmp(&delta->new_file.id, &item->id) == 0)
   return delta;
  break;
 case 131:
  if (git_oid__cmp(&delta->old_file.id, &item->id) == 0 ||
      (delta->new_file.mode == item->mode &&
   git_oid__cmp(&delta->new_file.id, &item->id) == 0))
   return delta;
  break;
 default:
  break;
 }

 return ((void*)0);
}
