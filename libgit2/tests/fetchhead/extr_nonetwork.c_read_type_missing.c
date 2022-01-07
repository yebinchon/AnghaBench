
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int git_oid ;


 int GIT_UNUSED (void*) ;
 int cl_assert (int) ;
 int cl_assert_equal_oid (int *,int const*) ;
 int cl_assert_equal_s (char*,char const*) ;
 int git_oid_fromstr (int *,char*) ;

__attribute__((used)) static int read_type_missing(const char *ref_name, const char *remote_url,
 const git_oid *oid, unsigned int is_merge, void *payload)
{
 git_oid expected;

 GIT_UNUSED(payload);

 git_oid_fromstr(&expected, "49322bb17d3acc9146f98c97d078513228bbf3c0");

 cl_assert_equal_s("name", ref_name);
 cl_assert_equal_s("remote_url", remote_url);
 cl_assert_equal_oid(&expected, oid);
 cl_assert(is_merge == 0);

 return 0;
}
