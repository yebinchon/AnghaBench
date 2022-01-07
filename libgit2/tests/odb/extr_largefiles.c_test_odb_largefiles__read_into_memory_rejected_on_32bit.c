
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int git_oid ;
typedef int git_odb_object ;


 int cl_git_fail (int ) ;
 int cl_is_env_set (char*) ;
 int cl_skip () ;
 int git_odb_object_free (int *) ;
 int git_odb_read (int **,int ,int *) ;
 int odb ;
 int writefile (int *) ;

void test_odb_largefiles__read_into_memory_rejected_on_32bit(void)
{
 git_oid oid;
 git_odb_object *obj = ((void*)0);





 if (!cl_is_env_set("GITTEST_INVASIVE_FS_SIZE") ||
  !cl_is_env_set("GITTEST_INVASIVE_MEMORY") ||
  !cl_is_env_set("GITTEST_SLOW"))
  cl_skip();

 writefile(&oid);
 cl_git_fail(git_odb_read(&obj, odb, &oid));

 git_odb_object_free(obj);
}
