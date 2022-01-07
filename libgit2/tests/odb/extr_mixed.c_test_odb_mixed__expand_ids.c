
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {scalar_t__ type; } ;
typedef TYPE_1__ git_odb_expand_id ;


 scalar_t__ GIT_OBJECT_ANY ;
 scalar_t__ GIT_OBJECT_BLOB ;
 scalar_t__ GIT_OBJECT_TREE ;
 int _odb ;
 int assert_found_objects (TYPE_1__*) ;
 int assert_notfound_objects (TYPE_1__*) ;
 int cl_git_pass (int ) ;
 int git__free (TYPE_1__*) ;
 int git_odb_expand_ids (int ,TYPE_1__*,size_t) ;
 int setup_prefix_query (TYPE_1__**,size_t*) ;

void test_odb_mixed__expand_ids(void)
{
 git_odb_expand_id *ids;
 size_t i, num;



 setup_prefix_query(&ids, &num);
 cl_git_pass(git_odb_expand_ids(_odb, ids, num));
 assert_found_objects(ids);
 git__free(ids);



 setup_prefix_query(&ids, &num);

 for (i = 0; i < num; i++)
  ids[i].type = 0;

 cl_git_pass(git_odb_expand_ids(_odb, ids, num));
 assert_found_objects(ids);
 git__free(ids);



 setup_prefix_query(&ids, &num);

 for (i = 0; i < num; i++)
  ids[i].type = GIT_OBJECT_ANY;

 cl_git_pass(git_odb_expand_ids(_odb, ids, num));
 assert_found_objects(ids);
 git__free(ids);



 setup_prefix_query(&ids, &num);

 for (i = 0; i < num; i++)
  ids[i].type = (ids[i].type == GIT_OBJECT_BLOB) ?
   GIT_OBJECT_TREE : GIT_OBJECT_BLOB;

 cl_git_pass(git_odb_expand_ids(_odb, ids, num));
 assert_notfound_objects(ids);
 git__free(ids);
}
