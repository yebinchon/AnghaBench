
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef void git_oid ;


 int GIT_UNUSED (void*) ;
 int cl_assert (unsigned int) ;
 int find_master_haacked_called ;
 int found_haacked ;
 int found_master ;
 int strcmp (char*,char const*) ;

int find_master_haacked(const char *ref_name, const char *remote_url, const git_oid *oid, unsigned int is_merge, void *payload)
{
 GIT_UNUSED(remote_url);
 GIT_UNUSED(oid);
 GIT_UNUSED(payload);

 find_master_haacked_called = 1;

 if (!strcmp("refs/heads/master", ref_name)) {
  cl_assert(is_merge);
  found_master = 1;
 }
 if (!strcmp("refs/heads/haacked", ref_name)) {
  cl_assert(is_merge);
  found_haacked = 1;
 }

 return 0;
}
