
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {size_t len; int type; void* data; } ;
typedef TYPE_1__ git_rawobj ;
typedef int git_oid ;
typedef int git_object_t ;


 int assert (int *) ;
 int git_odb__hashobj (int *,TYPE_1__*) ;

int git_odb_hash(git_oid *id, const void *data, size_t len, git_object_t type)
{
 git_rawobj raw;

 assert(id);

 raw.data = (void *)data;
 raw.len = len;
 raw.type = type;

 return git_odb__hashobj(id, &raw);
}
