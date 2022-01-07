
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int git_filter_source ;
typedef int git_filter ;
typedef int git_buf ;


 int GIT_PASSTHROUGH ;
 int bitflip_filter_apply (int *,void**,int *,int const*,int const*) ;
 int cl_fail (char*) ;
 int reverse_filter_apply (int *,void**,int *,int const*,int const*) ;
 scalar_t__ strcmp (char const*,char*) ;

__attribute__((used)) static int wildcard_filter_apply(
 git_filter *self,
 void **payload,
 git_buf *to,
 const git_buf *from,
 const git_filter_source *source)
{
 const char *filtername = *payload;

 if (filtername && strcmp(filtername, "wcflip") == 0)
  return bitflip_filter_apply(self, payload, to, from, source);
 else if (filtername && strcmp(filtername, "wcreverse") == 0)
  return reverse_filter_apply(self, payload, to, from, source);

 cl_fail("Unexpected attribute");
 return GIT_PASSTHROUGH;
}
