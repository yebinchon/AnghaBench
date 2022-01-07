
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef void git_oid ;


 int GIT_UNUSED (void*) ;

__attribute__((used)) static int read_noop(const char *ref_name, const char *remote_url,
 const git_oid *oid, unsigned int is_merge, void *payload)
{
 GIT_UNUSED(ref_name);
 GIT_UNUSED(remote_url);
 GIT_UNUSED(oid);
 GIT_UNUSED(is_merge);
 GIT_UNUSED(payload);

 return 0;
}
