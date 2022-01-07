
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int cl_assert (int) ;
 int git_oid_ncmp (int *,int *,int) ;
 int id ;
 int idp ;

void test_core_oid__ncmp(void)
{
 cl_assert(!git_oid_ncmp(&id, &idp, 0));
 cl_assert(!git_oid_ncmp(&id, &idp, 1));
 cl_assert(!git_oid_ncmp(&id, &idp, 2));
 cl_assert(!git_oid_ncmp(&id, &idp, 17));
 cl_assert(!git_oid_ncmp(&id, &idp, 18));
 cl_assert(git_oid_ncmp(&id, &idp, 19));
 cl_assert(git_oid_ncmp(&id, &idp, 40));
 cl_assert(git_oid_ncmp(&id, &idp, 41));
 cl_assert(git_oid_ncmp(&id, &idp, 42));

 cl_assert(!git_oid_ncmp(&id, &id, 0));
 cl_assert(!git_oid_ncmp(&id, &id, 1));
 cl_assert(!git_oid_ncmp(&id, &id, 39));
 cl_assert(!git_oid_ncmp(&id, &id, 40));
 cl_assert(!git_oid_ncmp(&id, &id, 41));
}
