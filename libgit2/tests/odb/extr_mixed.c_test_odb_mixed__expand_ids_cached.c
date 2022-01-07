
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


typedef int git_odb_object ;
struct TYPE_6__ {scalar_t__ type; int length; int id; } ;
typedef TYPE_1__ git_odb_expand_id ;


 scalar_t__ GIT_OBJECT_ANY ;
 int _odb ;
 int assert_found_objects (TYPE_1__*) ;
 int cl_git_pass (int ) ;
 int git__free (TYPE_1__*) ;
 int git_odb_expand_ids (int ,TYPE_1__*,size_t) ;
 int git_odb_object_free (int *) ;
 int git_odb_read_prefix (int **,int ,int *,int ) ;
 int setup_prefix_query (TYPE_1__**,size_t*) ;

void test_odb_mixed__expand_ids_cached(void)
{
 git_odb_expand_id *ids;
 size_t i, num;



 setup_prefix_query(&ids, &num);

 for (i = 0; i < num; i++) {
  git_odb_object *obj;
  if (ids[i].type == GIT_OBJECT_ANY)
   continue;
  cl_git_pass(git_odb_read_prefix(&obj, _odb, &ids[i].id, ids[i].length));
  git_odb_object_free(obj);
 }

 cl_git_pass(git_odb_expand_ids(_odb, ids, num));
 assert_found_objects(ids);
 git__free(ids);
}
