
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {void* param; int fn; } ;
typedef TYPE_1__ transport_definition ;
typedef int git_transport_cb ;


 int GIT_ENOTFOUND ;
 scalar_t__ git_path_exists (char const*) ;
 scalar_t__ git_path_isdir (char const*) ;
 TYPE_1__ local_transport_definition ;
 scalar_t__ strrchr (char const*,char) ;
 TYPE_1__* transport_find_by_url (char const*) ;

__attribute__((used)) static int transport_find_fn(
 git_transport_cb *out,
 const char *url,
 void **param)
{
 transport_definition *definition = transport_find_by_url(url);
 if (!definition && strrchr(url, ':')) {


  definition = transport_find_by_url("ssh://");
 }



 if (!definition && git_path_exists(url) && git_path_isdir(url))
  definition = &local_transport_definition;


 if (!definition)
  return GIT_ENOTFOUND;

 *out = definition->fn;
 *param = definition->param;

 return 0;
}
