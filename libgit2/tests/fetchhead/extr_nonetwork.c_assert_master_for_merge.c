
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef void git_oid ;


 int GIT_UNUSED (void*) ;
 int strcmp (char*,char const*) ;

__attribute__((used)) static int assert_master_for_merge(const char *ref, const char *url, const git_oid *id, unsigned int is_merge, void *data)
{
 GIT_UNUSED(url);
 GIT_UNUSED(id);
 GIT_UNUSED(data);

 if (!strcmp("refs/heads/master", ref) && !is_merge)
  return -1;

 return 0;
}
