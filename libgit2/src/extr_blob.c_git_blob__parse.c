
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int git_odb_object ;
typedef int git_cached_obj ;
struct TYPE_4__ {int * odb; } ;
struct TYPE_5__ {TYPE_1__ data; scalar_t__ raw; } ;
typedef TYPE_2__ git_blob ;


 int assert (TYPE_2__*) ;
 int git_cached_obj_incref (int *) ;

int git_blob__parse(void *_blob, git_odb_object *odb_obj)
{
 git_blob *blob = (git_blob *) _blob;
 assert(blob);
 git_cached_obj_incref((git_cached_obj *)odb_obj);
 blob->raw = 0;
 blob->data.odb = odb_obj;
 return 0;
}
