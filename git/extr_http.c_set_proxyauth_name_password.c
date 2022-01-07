
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct strbuf {int dummy; } ;
struct TYPE_2__ {int password; int username; } ;
typedef int CURL ;


 int CURLOPT_PROXYPASSWORD ;
 int CURLOPT_PROXYUSERNAME ;
 int CURLOPT_PROXYUSERPWD ;
 struct strbuf STRBUF_INIT ;
 int curl_easy_setopt (int *,int ,int ) ;
 int curl_proxyuserpwd ;
 int is_rfc3986_unreserved ;
 TYPE_1__ proxy_auth ;
 int strbuf_addch (struct strbuf*,char) ;
 int strbuf_addstr_urlencode (struct strbuf*,int ,int ) ;
 int strbuf_detach (struct strbuf*,int *) ;

__attribute__((used)) static void set_proxyauth_name_password(CURL *result)
{






  struct strbuf s = STRBUF_INIT;

  strbuf_addstr_urlencode(&s, proxy_auth.username,
     is_rfc3986_unreserved);
  strbuf_addch(&s, ':');
  strbuf_addstr_urlencode(&s, proxy_auth.password,
     is_rfc3986_unreserved);
  curl_proxyuserpwd = strbuf_detach(&s, ((void*)0));
  curl_easy_setopt(result, CURLOPT_PROXYUSERPWD, curl_proxyuserpwd);

}
