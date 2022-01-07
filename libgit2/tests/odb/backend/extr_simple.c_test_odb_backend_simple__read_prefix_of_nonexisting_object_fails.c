
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {char* member_0; char* member_1; } ;
typedef TYPE_1__ fake_object ;


 int GIT_ENOTFOUND ;
 int _obj ;
 int _odb ;
 int _oid ;
 int cl_git_fail_with (int ,int ) ;
 int cl_git_pass (int ) ;
 int git_odb_read (int *,int ,int *) ;
 int git_oid_fromstrn (int *,char*,int ) ;
 int setup_backend (TYPE_1__ const*) ;
 int strlen (char*) ;

void test_odb_backend_simple__read_prefix_of_nonexisting_object_fails(void)
{
 const fake_object objs[] = {
  { "f6ea0495187600e7b2288c8ac19c5886383a4632", "foobar" },
  { ((void*)0), ((void*)0) }
 };
 char *hash = "f6ea0495187600e8";

 setup_backend(objs);

 cl_git_pass(git_oid_fromstrn(&_oid, hash, strlen(hash)));
 cl_git_fail_with(GIT_ENOTFOUND, git_odb_read(&_obj, _odb, &_oid));
}
