
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int git_oid ;


 int GIT_UNUSED (void*) ;
 int cl_assert (int) ;
 int cl_assert_equal_oid (int *,int const*) ;
 int git_oid_fromstr (int *,char*) ;

__attribute__((used)) static int read_old_style_cb(const char *name, const char *url,
 const git_oid *oid, unsigned int is_merge, void *payload)
{
 git_oid expected;

 GIT_UNUSED(payload);

 git_oid_fromstr(&expected, "49322bb17d3acc9146f98c97d078513228bbf3c0");

 cl_assert(name == ((void*)0));
 cl_assert(url == ((void*)0));
 cl_assert_equal_oid(&expected, oid);
 cl_assert(is_merge == 1);

 return 0;
}
