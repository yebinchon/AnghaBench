
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct TYPE_10__ {int size; } ;
typedef TYPE_1__ git_pobject ;
struct TYPE_11__ {size_t nr_objects; int done; int big_file_threshold; TYPE_1__* object_list; int progress_cb_payload; int (* progress_cb ) (int ,int ,size_t,int ) ;} ;
typedef TYPE_2__ git_packbuilder ;


 int GIT_ERROR_CHECK_ALLOC (TYPE_1__**) ;
 int GIT_PACKBUILDER_DELTAFICATION ;
 int GIT_PACK_DEPTH ;
 scalar_t__ GIT_PACK_WINDOW ;
 int git__free (TYPE_1__**) ;
 TYPE_1__** git__mallocarray (size_t,int) ;
 int git__tsort (void**,size_t,int ) ;
 scalar_t__ ll_find_deltas (TYPE_2__*,TYPE_1__**,size_t,scalar_t__,int ) ;
 int report_delta_progress (TYPE_2__*,size_t,int) ;
 int stub1 (int ,int ,size_t,int ) ;
 int type_size_sort ;

__attribute__((used)) static int prepare_pack(git_packbuilder *pb)
{
 git_pobject **delta_list;
 size_t i, n = 0;

 if (pb->nr_objects == 0 || pb->done)
  return 0;





 if (pb->progress_cb)
   pb->progress_cb(GIT_PACKBUILDER_DELTAFICATION, 0, pb->nr_objects, pb->progress_cb_payload);

 delta_list = git__mallocarray(pb->nr_objects, sizeof(*delta_list));
 GIT_ERROR_CHECK_ALLOC(delta_list);

 for (i = 0; i < pb->nr_objects; ++i) {
  git_pobject *po = pb->object_list + i;


  if (po->size < 50 || po->size > pb->big_file_threshold)
   continue;

  delta_list[n++] = po;
 }

 if (n > 1) {
  git__tsort((void **)delta_list, n, type_size_sort);
  if (ll_find_deltas(pb, delta_list, n,
       GIT_PACK_WINDOW + 1,
       GIT_PACK_DEPTH) < 0) {
   git__free(delta_list);
   return -1;
  }
 }

 report_delta_progress(pb, pb->nr_objects, 1);

 pb->done = 1;
 git__free(delta_list);
 return 0;
}
