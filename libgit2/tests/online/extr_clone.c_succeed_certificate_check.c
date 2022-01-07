
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef void git_cert ;


 int GIT_UNUSED (void*) ;
 int cl_assert_equal_s (char*,char const*) ;

__attribute__((used)) static int succeed_certificate_check(git_cert *cert, int valid, const char *host, void *payload)
{
 GIT_UNUSED(cert);
 GIT_UNUSED(valid);
 GIT_UNUSED(payload);

 cl_assert_equal_s("github.com", host);

 return 0;
}
