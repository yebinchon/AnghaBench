
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct crlf_attrs {scalar_t__ crlf_action; } ;
typedef int git_filter_source ;
typedef int git_filter ;
typedef int ca ;


 scalar_t__ GIT_CRLF_BINARY ;
 int GIT_ERROR_CHECK_ALLOC (void*) ;
 int GIT_PASSTHROUGH ;
 int GIT_UNUSED (int *) ;
 int convert_attrs (struct crlf_attrs*,char const**,int const*) ;
 void* git__malloc (int) ;
 int memcpy (void*,struct crlf_attrs*,int) ;

__attribute__((used)) static int crlf_check(
 git_filter *self,
 void **payload,
 const git_filter_source *src,
 const char **attr_values)
{
 struct crlf_attrs ca;

 GIT_UNUSED(self);

 convert_attrs(&ca, attr_values, src);

 if (ca.crlf_action == GIT_CRLF_BINARY)
  return GIT_PASSTHROUGH;

 *payload = git__malloc(sizeof(ca));
 GIT_ERROR_CHECK_ALLOC(*payload);
 memcpy(*payload, &ca, sizeof(ca));

 return 0;
}
