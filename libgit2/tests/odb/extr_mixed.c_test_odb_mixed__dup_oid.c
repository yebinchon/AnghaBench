
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int short_hex ;
typedef int git_oid ;
typedef int git_odb_object ;


 int GIT_OID_HEXSZ ;
 int _odb ;
 int cl_git_pass (int ) ;
 int git_odb_exists_prefix (int *,int ,int *,int) ;
 int git_odb_object_free (int *) ;
 int git_odb_read_prefix (int **,int ,int *,int) ;
 int git_oid_fromstr (int *,char const*) ;
 int git_oid_fromstrn (int *,char const*,int) ;

void test_odb_mixed__dup_oid(void) {
 const char hex[] = "ce013625030ba8dba906f756967f9e9ca394464a";
 const char short_hex[] = "ce01362";
 git_oid oid;
 git_odb_object *obj;

 cl_git_pass(git_oid_fromstr(&oid, hex));
 cl_git_pass(git_odb_read_prefix(&obj, _odb, &oid, GIT_OID_HEXSZ));
 git_odb_object_free(obj);

 cl_git_pass(git_odb_exists_prefix(((void*)0), _odb, &oid, GIT_OID_HEXSZ));

 cl_git_pass(git_oid_fromstrn(&oid, short_hex, sizeof(short_hex) - 1));
 cl_git_pass(git_odb_read_prefix(&obj, _odb, &oid, sizeof(short_hex) - 1));
 git_odb_object_free(obj);

 cl_git_pass(git_odb_exists_prefix(((void*)0), _odb, &oid, sizeof(short_hex) - 1));
}
