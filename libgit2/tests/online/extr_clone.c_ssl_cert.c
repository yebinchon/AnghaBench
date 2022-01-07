
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef void git_cert ;


 int GIT_ECERTIFICATE ;
 int GIT_UNUSED (void*) ;
 int * _remote_sslnoverify ;

__attribute__((used)) static int ssl_cert(git_cert *cert, int valid, const char *host, void *payload)
{
 GIT_UNUSED(cert);
 GIT_UNUSED(host);
 GIT_UNUSED(payload);

 if (_remote_sslnoverify != ((void*)0))
  valid = 1;

 return valid ? 0 : GIT_ECERTIFICATE;
}
