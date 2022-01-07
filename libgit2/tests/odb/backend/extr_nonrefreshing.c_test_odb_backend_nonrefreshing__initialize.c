
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int EXISTING_HASH ;
 int NONEXISTING_HASH ;
 int _existing_oid ;
 int _nonexisting_oid ;
 int git_oid_fromstr (int *,int ) ;
 int setup_repository_and_backend () ;

void test_odb_backend_nonrefreshing__initialize(void)
{
 git_oid_fromstr(&_nonexisting_oid, NONEXISTING_HASH);
 git_oid_fromstr(&_existing_oid, EXISTING_HASH);
 setup_repository_and_backend();
}
