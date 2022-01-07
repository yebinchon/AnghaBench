
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int git_oid ;
struct TYPE_5__ {size_t size; scalar_t__ type; } ;
struct TYPE_6__ {TYPE_1__ cached; } ;
typedef TYPE_2__ git_odb_object ;
typedef scalar_t__ git_object_t ;


 unsigned int ARRAY_SIZE (int *) ;
 int _odb ;
 int cl_assert (int) ;
 int cl_git_pass (int ) ;
 int git_odb_object_free (TYPE_2__*) ;
 int git_odb_read (TYPE_2__**,int ,int *) ;
 int git_odb_read_header (size_t*,scalar_t__*,int ,int *) ;
 int git_oid_fromstr (int *,int ) ;
 int * packed_objects_one ;

void test_odb_packed_one__read_header_0(void)
{
 unsigned int i;

 for (i = 0; i < ARRAY_SIZE(packed_objects_one); ++i) {
  git_oid id;
  git_odb_object *obj;
  size_t len;
  git_object_t type;

  cl_git_pass(git_oid_fromstr(&id, packed_objects_one[i]));

  cl_git_pass(git_odb_read(&obj, _odb, &id));
  cl_git_pass(git_odb_read_header(&len, &type, _odb, &id));

  cl_assert(obj->cached.size == len);
  cl_assert(obj->cached.type == type);

  git_odb_object_free(obj);
 }
}
