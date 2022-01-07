
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {int password; scalar_t__ username; } ;
struct TYPE_5__ {int curlauth_param; int name; } ;
typedef int CURL ;


 int ARRAY_SIZE (TYPE_1__*) ;
 int CURLAUTH_ANY ;
 int CURLOPT_PROXYAUTH ;
 int credential_fill (TYPE_2__*) ;
 int curl_easy_setopt (int *,int ,int ) ;
 int getenv (char*) ;
 scalar_t__ http_proxy_authmethod ;
 TYPE_2__ proxy_auth ;
 TYPE_1__* proxy_authmethods ;
 int set_proxyauth_name_password (int *) ;
 int strcmp (scalar_t__,int ) ;
 int var_override (scalar_t__*,int ) ;
 int warning (char*,scalar_t__) ;

__attribute__((used)) static void init_curl_proxy_auth(CURL *result)
{
 if (proxy_auth.username) {
  if (!proxy_auth.password)
   credential_fill(&proxy_auth);
  set_proxyauth_name_password(result);
 }

 var_override(&http_proxy_authmethod, getenv("GIT_HTTP_PROXY_AUTHMETHOD"));
}
