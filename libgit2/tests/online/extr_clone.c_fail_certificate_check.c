
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef void git_cert ;


 int GIT_ECERTIFICATE ;
 int GIT_UNUSED (void*) ;

__attribute__((used)) static int fail_certificate_check(git_cert *cert, int valid, const char *host, void *payload)
{
 GIT_UNUSED(cert);
 GIT_UNUSED(valid);
 GIT_UNUSED(host);
 GIT_UNUSED(payload);

 return GIT_ECERTIFICATE;
}
