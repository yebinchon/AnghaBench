
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_9__ {int default_driver; int repo; TYPE_3__* theirs; TYPE_2__* ours; TYPE_1__* ancestor; } ;
typedef TYPE_4__ git_merge_driver_source ;
typedef int git_merge_driver ;
struct TYPE_8__ {int * path; } ;
struct TYPE_7__ {int * path; } ;
struct TYPE_6__ {int * path; } ;


 char* git_merge_file__best_path (int *,int *,int *) ;
 int * merge_driver_lookup_with_wildcard (char const*) ;
 int merge_driver_name_for_path (char const**,int ,char const*,int ) ;

int git_merge_driver_for_source(
 const char **name_out,
 git_merge_driver **driver_out,
 const git_merge_driver_source *src)
{
 const char *path, *driver_name;
 int error = 0;

 path = git_merge_file__best_path(
  src->ancestor ? src->ancestor->path : ((void*)0),
  src->ours ? src->ours->path : ((void*)0),
  src->theirs ? src->theirs->path : ((void*)0));

 if ((error = merge_driver_name_for_path(
   &driver_name, src->repo, path, src->default_driver)) < 0)
  return error;

 *name_out = driver_name;
 *driver_out = merge_driver_lookup_with_wildcard(driver_name);
 return error;
}
