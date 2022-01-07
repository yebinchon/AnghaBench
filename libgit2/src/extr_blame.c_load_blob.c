
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int git_object ;
struct TYPE_4__ {int newest_commit; } ;
struct TYPE_5__ {int path; scalar_t__ final; scalar_t__ final_blob; TYPE_1__ options; int repository; } ;
typedef TYPE_2__ git_blame ;


 int GIT_OBJECT_BLOB ;
 int git_commit_lookup (scalar_t__*,int ,int *) ;
 int git_object_lookup_bypath (int **,int *,int ,int ) ;

__attribute__((used)) static int load_blob(git_blame *blame)
{
 int error;

 if (blame->final_blob) return 0;

 error = git_commit_lookup(&blame->final, blame->repository, &blame->options.newest_commit);
 if (error < 0)
  goto cleanup;
 error = git_object_lookup_bypath((git_object**)&blame->final_blob,
   (git_object*)blame->final, blame->path, GIT_OBJECT_BLOB);

cleanup:
 return error;
}
