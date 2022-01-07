
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int type; int len; int data; } ;
typedef TYPE_1__ git_rawobj ;
typedef int git_oid ;


 int cl_git_fail (int ) ;
 int git_odb_hash (int *,int ,int ,int ) ;

__attribute__((used)) static void hash_object_fail(git_oid *oid, git_rawobj *obj)
{
 cl_git_fail(git_odb_hash(oid, obj->data, obj->len, obj->type));
}
