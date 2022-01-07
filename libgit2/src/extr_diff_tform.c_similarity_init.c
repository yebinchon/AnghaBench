
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {size_t idx; scalar_t__ src; int repo; int * odb_obj; TYPE_5__* file; int data; int * blob; } ;
typedef TYPE_1__ similarity_info ;
struct TYPE_9__ {scalar_t__ new_src; scalar_t__ old_src; int repo; } ;
typedef TYPE_2__ git_diff ;
struct TYPE_10__ {scalar_t__ size; } ;


 scalar_t__ GIT_ITERATOR_TYPE_WORKDIR ;
 int git_buf_init (int *,int ) ;
 int git_diff_file__resolve_zero_size (TYPE_5__*,int **,int ) ;
 TYPE_5__* similarity_get_file (TYPE_2__*,size_t) ;

__attribute__((used)) static int similarity_init(
 similarity_info *info, git_diff *diff, size_t file_idx)
{
 info->idx = file_idx;
 info->src = (file_idx & 1) ? diff->new_src : diff->old_src;
 info->repo = diff->repo;
 info->file = similarity_get_file(diff, file_idx);
 info->odb_obj = ((void*)0);
 info->blob = ((void*)0);
 git_buf_init(&info->data, 0);

 if (info->file->size > 0 || info->src == GIT_ITERATOR_TYPE_WORKDIR)
  return 0;

 return git_diff_file__resolve_zero_size(
  info->file, &info->odb_obj, info->repo);
}
