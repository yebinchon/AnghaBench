
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {char* member_0; char* member_1; int oid; } ;
typedef TYPE_1__ fake_object ;


 int _odb ;
 int _oid ;
 int cl_assert (int ) ;
 int cl_git_pass (int ) ;
 int git_odb_exists (int ,int *) ;
 int git_oid_fromstr (int *,int ) ;
 int setup_backend (TYPE_1__ const*) ;

void test_odb_backend_simple__exists_succeeds(void)
{
 const fake_object objs[] = {
  { "f6ea0495187600e7b2288c8ac19c5886383a4632", "foobar" },
  { ((void*)0), ((void*)0) }
 };

 setup_backend(objs);

 cl_git_pass(git_oid_fromstr(&_oid, objs[0].oid));
 cl_assert(git_odb_exists(_odb, &_oid));
}
