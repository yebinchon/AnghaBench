
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct urlmatch_config {char* section; int vars; int url; int * cb; int cascade_fn; int collect_fn; int * key; int member_0; } ;
struct strbuf {int buf; } ;
struct remote {int http_proxy_authmethod; scalar_t__ http_proxy; } ;
struct TYPE_3__ {scalar_t__ name; } ;
typedef TYPE_1__ curl_ssl_backend ;


 scalar_t__ CURLE_OK ;




 int CURL_GLOBAL_ALL ;
 int DEFAULT_MAX_REQUESTS ;
 struct strbuf STRBUF_INIT ;
 int STRING_LIST_INIT_DUP ;
 char* _ (char*) ;
 int atoi (char*) ;
 int credential_from_url (int *,char const*) ;
 int curl_default ;
 int curl_ftp_no_epsv ;
 scalar_t__ curl_global_init (int ) ;
 int curl_global_sslset (int,scalar_t__,TYPE_1__ const***) ;
 int curl_http_proxy ;
 void* curl_low_speed_limit ;
 void* curl_low_speed_time ;
 int curl_multi_init () ;
 scalar_t__ curl_session_count ;
 void* curl_slist_append (int ,char*) ;
 int curl_ssl_verify ;
 int curlm ;
 int die (char*,...) ;
 int free (char*) ;
 int get_curl_handle () ;
 char* getenv (char*) ;
 int git_config (int ,struct urlmatch_config*) ;
 int git_default_config ;
 int http_auth ;
 int http_copy_default_headers () ;
 scalar_t__ http_is_verbose ;
 int http_options ;
 int http_proactive_auth ;
 int http_proxy_authmethod ;
 scalar_t__ http_ssl_backend ;
 int max_requests ;
 void* no_pragma_header ;
 void* pragma_header ;
 int set_from_env (int *,char*) ;
 int ssl_cainfo ;
 int ssl_capath ;
 int ssl_cert ;
 int ssl_cert_password_required ;
 int ssl_key ;
 scalar_t__ starts_with (char const*,char*) ;
 int strbuf_addf (struct strbuf*,char*,scalar_t__) ;
 int string_list_clear (int *,int) ;
 void* strtol (char*,int *,int) ;
 char* url_normalize (char const*,int *) ;
 int urlmatch_config_entry ;
 int user_agent ;
 int var_override (int *,int ) ;
 int xstrdup (scalar_t__) ;

void http_init(struct remote *remote, const char *url, int proactive_auth)
{
 char *low_speed_limit;
 char *low_speed_time;
 char *normalized_url;
 struct urlmatch_config config = { STRING_LIST_INIT_DUP };

 config.section = "http";
 config.key = ((void*)0);
 config.collect_fn = http_options;
 config.cascade_fn = git_default_config;
 config.cb = ((void*)0);

 http_is_verbose = 0;
 normalized_url = url_normalize(url, &config.url);

 git_config(urlmatch_config_entry, &config);
 free(normalized_url);
 string_list_clear(&config.vars, 1);
 if (curl_global_init(CURL_GLOBAL_ALL) != CURLE_OK)
  die("curl_global_init failed");

 http_proactive_auth = proactive_auth;

 if (remote && remote->http_proxy)
  curl_http_proxy = xstrdup(remote->http_proxy);

 if (remote)
  var_override(&http_proxy_authmethod, remote->http_proxy_authmethod);

 pragma_header = curl_slist_append(http_copy_default_headers(),
  "Pragma: no-cache");
 no_pragma_header = curl_slist_append(http_copy_default_headers(),
  "Pragma:");
 if (getenv("GIT_SSL_NO_VERIFY"))
  curl_ssl_verify = 0;

 set_from_env(&ssl_cert, "GIT_SSL_CERT");






 set_from_env(&ssl_cainfo, "GIT_SSL_CAINFO");

 set_from_env(&user_agent, "GIT_HTTP_USER_AGENT");

 low_speed_limit = getenv("GIT_HTTP_LOW_SPEED_LIMIT");
 if (low_speed_limit != ((void*)0))
  curl_low_speed_limit = strtol(low_speed_limit, ((void*)0), 10);
 low_speed_time = getenv("GIT_HTTP_LOW_SPEED_TIME");
 if (low_speed_time != ((void*)0))
  curl_low_speed_time = strtol(low_speed_time, ((void*)0), 10);

 if (curl_ssl_verify == -1)
  curl_ssl_verify = 1;

 curl_session_count = 0;





 if (getenv("GIT_CURL_FTP_NO_EPSV"))
  curl_ftp_no_epsv = 1;

 if (url) {
  credential_from_url(&http_auth, url);
  if (!ssl_cert_password_required &&
      getenv("GIT_SSL_CERT_PASSWORD_PROTECTED") &&
      starts_with(url, "https://"))
   ssl_cert_password_required = 1;
 }


 curl_default = get_curl_handle();

}
