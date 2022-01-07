
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int GIT_OID_HEXSZ ;
 int _packbuilder ;
 int cl_assert_equal_s (char*,char*) ;
 int git_oid_fmt (char*,int ) ;
 int git_packbuilder_hash (int ) ;
 int git_packbuilder_write (int ,char*,int ,int *,int *) ;
 int seed_packbuilder () ;

void test_pack_packbuilder__get_hash(void)
{
 char hex[GIT_OID_HEXSZ+1]; hex[GIT_OID_HEXSZ] = '\0';

 seed_packbuilder();

 git_packbuilder_write(_packbuilder, ".", 0, ((void*)0), ((void*)0));
 git_oid_fmt(hex, git_packbuilder_hash(_packbuilder));

 cl_assert_equal_s(hex, "7f5fa362c664d68ba7221259be1cbd187434b2f0");
}
