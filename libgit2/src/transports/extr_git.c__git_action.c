
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int git_subtransport ;
typedef int git_smart_subtransport_stream ;
typedef int git_smart_subtransport ;
typedef int git_smart_service_t ;






 int _git_receivepack (int *,char const*,int **) ;
 int _git_receivepack_ls (int *,char const*,int **) ;
 int _git_uploadpack (int *,char const*,int **) ;
 int _git_uploadpack_ls (int *,char const*,int **) ;

__attribute__((used)) static int _git_action(
 git_smart_subtransport_stream **stream,
 git_smart_subtransport *subtransport,
 const char *url,
 git_smart_service_t action)
{
 git_subtransport *t = (git_subtransport *) subtransport;

 switch (action) {
  case 128:
   return _git_uploadpack_ls(t, url, stream);

  case 129:
   return _git_uploadpack(t, url, stream);

  case 130:
   return _git_receivepack_ls(t, url, stream);

  case 131:
   return _git_receivepack(t, url, stream);
 }

 *stream = ((void*)0);
 return -1;
}
