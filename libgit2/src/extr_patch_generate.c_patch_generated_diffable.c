
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_21__ TYPE_9__ ;
typedef struct TYPE_20__ TYPE_8__ ;
typedef struct TYPE_19__ TYPE_7__ ;
typedef struct TYPE_18__ TYPE_6__ ;
typedef struct TYPE_17__ TYPE_5__ ;
typedef struct TYPE_16__ TYPE_4__ ;
typedef struct TYPE_15__ TYPE_3__ ;
typedef struct TYPE_14__ TYPE_2__ ;
typedef struct TYPE_13__ TYPE_1__ ;
typedef struct TYPE_12__ TYPE_10__ ;


struct TYPE_17__ {size_t len; } ;
struct TYPE_21__ {TYPE_8__* file; TYPE_5__ map; } ;
struct TYPE_16__ {size_t len; } ;
struct TYPE_19__ {TYPE_6__* file; TYPE_4__ map; } ;
struct TYPE_14__ {int flags; } ;
struct TYPE_15__ {TYPE_2__ diff_opts; TYPE_1__* delta; } ;
struct TYPE_12__ {TYPE_9__ nfile; TYPE_7__ ofile; TYPE_3__ base; } ;
typedef TYPE_10__ git_patch_generated ;
struct TYPE_20__ {int id; scalar_t__ size; } ;
struct TYPE_18__ {int id; scalar_t__ size; } ;
struct TYPE_13__ {scalar_t__ status; int flags; } ;


 scalar_t__ GIT_DELTA_UNMODIFIED ;
 int GIT_DIFF_FLAG_BINARY ;
 int GIT_DIFF_SHOW_BINARY ;
 int git_oid_equal (int *,int *) ;

__attribute__((used)) static bool patch_generated_diffable(git_patch_generated *patch)
{
 size_t olen, nlen;

 if (patch->base.delta->status == GIT_DELTA_UNMODIFIED)
  return 0;





 if ((patch->base.delta->flags & GIT_DIFF_FLAG_BINARY) != 0 &&
  (patch->base.diff_opts.flags & GIT_DIFF_SHOW_BINARY) == 0) {
  olen = (size_t)patch->ofile.file->size;
  nlen = (size_t)patch->nfile.file->size;
 } else {
  olen = patch->ofile.map.len;
  nlen = patch->nfile.map.len;
 }


 if (!olen && !nlen)
  return 0;


 return (olen != nlen ||
  !git_oid_equal(&patch->ofile.file->id, &patch->nfile.file->id));
}
