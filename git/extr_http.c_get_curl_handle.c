
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_6__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct strbuf {char* buf; } ;
struct TYPE_11__ {char* password; } ;
struct TYPE_10__ {char* protocol; } ;
struct TYPE_9__ {char* host; } ;
struct TYPE_8__ {char* name; char* curl_deleg_param; char* ssl_version; } ;
typedef int CURL ;


 int ARRAY_SIZE (TYPE_1__*) ;
 char* CURLAUTH_ANY ;
 int CURLOPT_CAINFO ;
 int CURLOPT_CAPATH ;
 int CURLOPT_FTP_USE_EPSV ;
 int CURLOPT_GSSAPI_DELEGATION ;
 int CURLOPT_HTTPAUTH ;
 int CURLOPT_HTTP_VERSION ;
 int CURLOPT_KEYPASSWD ;
 int CURLOPT_LOW_SPEED_LIMIT ;
 int CURLOPT_LOW_SPEED_TIME ;
 int CURLOPT_MAXREDIRS ;
 int CURLOPT_NETRC ;
 int CURLOPT_NOPROXY ;
 int CURLOPT_PINNEDPUBLICKEY ;
 int CURLOPT_POST301 ;
 int CURLOPT_POSTREDIR ;
 int CURLOPT_PROTOCOLS ;
 int CURLOPT_PROXY ;
 int CURLOPT_PROXYTYPE ;
 int CURLOPT_PROXY_CAINFO ;
 int CURLOPT_REDIR_PROTOCOLS ;
 int CURLOPT_SSLCERT ;
 int CURLOPT_SSLKEY ;
 int CURLOPT_SSLVERSION ;
 int CURLOPT_SSL_CIPHER_LIST ;
 int CURLOPT_SSL_OPTIONS ;
 int CURLOPT_SSL_VERIFYHOST ;
 int CURLOPT_SSL_VERIFYPEER ;
 int CURLOPT_USERAGENT ;
 int CURLOPT_USE_SSL ;
 int CURLOPT_VERBOSE ;
 char* CURLPROXY_HTTPS ;
 char* CURLPROXY_SOCKS4 ;
 char* CURLPROXY_SOCKS4A ;
 char* CURLPROXY_SOCKS5 ;
 char* CURLPROXY_SOCKS5_HOSTNAME ;
 char* CURLSSLOPT_NO_REVOKE ;
 char* CURLUSESSL_TRY ;
 char* CURL_NETRC_OPTIONAL ;
 char* CURL_REDIR_POST_ALL ;
 struct strbuf STRBUF_INIT ;
 int _ (char*) ;
 TYPE_6__ cert_auth ;
 int cookies_to_redact ;
 int credential_from_url (TYPE_2__*,char*) ;
 char* curl_deleg ;
 TYPE_1__* curl_deleg_levels ;
 int * curl_easy_init () ;
 int curl_easy_setopt (int *,int ,...) ;
 scalar_t__ curl_ftp_no_epsv ;
 char* curl_http_proxy ;
 scalar_t__ curl_http_version ;
 char* curl_low_speed_limit ;
 char* curl_low_speed_time ;
 char* curl_no_proxy ;
 scalar_t__ curl_ssl_try ;
 int curl_ssl_verify ;
 int die (char*,...) ;
 char* get_curl_allowed_protocols (int) ;
 int get_curl_http_version_opt (scalar_t__,long*) ;
 char* getenv (char*) ;
 int git_user_agent () ;
 scalar_t__ has_cert_password () ;
 TYPE_3__ http_auth ;
 scalar_t__ http_proactive_auth ;
 int http_schannel_check_revoke ;
 int http_schannel_use_ssl_cainfo ;
 char* http_ssl_backend ;
 int init_curl_http_auth (int *) ;
 int init_curl_proxy_auth (int *) ;
 TYPE_2__ proxy_auth ;
 int set_curl_keepalive (int *) ;
 int setup_curl_trace (int *) ;
 char* ssl_cainfo ;
 char* ssl_capath ;
 char* ssl_cert ;
 char* ssl_cipherlist ;
 char* ssl_key ;
 char* ssl_pinnedkey ;
 char* ssl_version ;
 TYPE_1__* sslversions ;
 scalar_t__ starts_with (char*,char*) ;
 int strbuf_addf (struct strbuf*,char*,char*) ;
 int strbuf_release (struct strbuf*) ;
 int strcmp (char*,char*) ;
 int string_list_sort (int *) ;
 int string_list_split (int *,char*,char,int) ;
 scalar_t__ strstr (char*,char*) ;
 scalar_t__ trace_curl_data ;
 int user_agent ;
 int var_override (char**,char*) ;
 int warning (char*,...) ;

__attribute__((used)) static CURL *get_curl_handle(void)
{
 CURL *result = curl_easy_init();

 if (!result)
  die("curl_easy_init failed");

 if (!curl_ssl_verify) {
  curl_easy_setopt(result, CURLOPT_SSL_VERIFYPEER, 0);
  curl_easy_setopt(result, CURLOPT_SSL_VERIFYHOST, 0);
 } else {

  curl_easy_setopt(result, CURLOPT_SSL_VERIFYPEER, 1);

  curl_easy_setopt(result, CURLOPT_SSL_VERIFYHOST, 2);
 }
 if (http_ssl_backend && !strcmp("schannel", http_ssl_backend) &&
     !http_schannel_check_revoke) {



  warning(_("CURLSSLOPT_NO_REVOKE not supported with cURL < 7.44.0"));

 }

 if (http_proactive_auth)
  init_curl_http_auth(result);

 if (getenv("GIT_SSL_VERSION"))
  ssl_version = getenv("GIT_SSL_VERSION");
 if (ssl_version && *ssl_version) {
  int i;
  for (i = 0; i < ARRAY_SIZE(sslversions); i++) {
   if (!strcmp(ssl_version, sslversions[i].name)) {
    curl_easy_setopt(result, CURLOPT_SSLVERSION,
       sslversions[i].ssl_version);
    break;
   }
  }
  if (i == ARRAY_SIZE(sslversions))
   warning("unsupported ssl version %s: using default",
    ssl_version);
 }

 if (getenv("GIT_SSL_CIPHER_LIST"))
  ssl_cipherlist = getenv("GIT_SSL_CIPHER_LIST");
 if (ssl_cipherlist != ((void*)0) && *ssl_cipherlist)
  curl_easy_setopt(result, CURLOPT_SSL_CIPHER_LIST,
    ssl_cipherlist);

 if (ssl_cert != ((void*)0))
  curl_easy_setopt(result, CURLOPT_SSLCERT, ssl_cert);
 if (has_cert_password())
  curl_easy_setopt(result, CURLOPT_KEYPASSWD, cert_auth.password);
 if (http_ssl_backend && !strcmp("schannel", http_ssl_backend) &&
     !http_schannel_use_ssl_cainfo) {
  curl_easy_setopt(result, CURLOPT_CAINFO, ((void*)0));



 } else if (ssl_cainfo != ((void*)0))
  curl_easy_setopt(result, CURLOPT_CAINFO, ssl_cainfo);

 if (curl_low_speed_limit > 0 && curl_low_speed_time > 0) {
  curl_easy_setopt(result, CURLOPT_LOW_SPEED_LIMIT,
     curl_low_speed_limit);
  curl_easy_setopt(result, CURLOPT_LOW_SPEED_TIME,
     curl_low_speed_time);
 }

 curl_easy_setopt(result, CURLOPT_MAXREDIRS, 20);
 warning(_("Protocol restrictions not supported with cURL < 7.19.4"));

 if (getenv("GIT_CURL_VERBOSE"))
  curl_easy_setopt(result, CURLOPT_VERBOSE, 1L);
 setup_curl_trace(result);
 if (getenv("GIT_TRACE_CURL_NO_DATA"))
  trace_curl_data = 0;
 if (getenv("GIT_REDACT_COOKIES")) {
  string_list_split(&cookies_to_redact,
      getenv("GIT_REDACT_COOKIES"), ',', -1);
  string_list_sort(&cookies_to_redact);
 }

 curl_easy_setopt(result, CURLOPT_USERAGENT,
  user_agent ? user_agent : git_user_agent());

 if (curl_ftp_no_epsv)
  curl_easy_setopt(result, CURLOPT_FTP_USE_EPSV, 0);
 if (!curl_http_proxy) {
  if (http_auth.protocol && !strcmp(http_auth.protocol, "https")) {
   var_override(&curl_http_proxy, getenv("HTTPS_PROXY"));
   var_override(&curl_http_proxy, getenv("https_proxy"));
  } else {
   var_override(&curl_http_proxy, getenv("http_proxy"));
  }
  if (!curl_http_proxy) {
   var_override(&curl_http_proxy, getenv("ALL_PROXY"));
   var_override(&curl_http_proxy, getenv("all_proxy"));
  }
 }

 if (curl_http_proxy && curl_http_proxy[0] == '\0') {





  curl_easy_setopt(result, CURLOPT_PROXY, "");
 } else if (curl_http_proxy) {
  if (strstr(curl_http_proxy, "://"))
   credential_from_url(&proxy_auth, curl_http_proxy);
  else {
   struct strbuf url = STRBUF_INIT;
   strbuf_addf(&url, "http://%s", curl_http_proxy);
   credential_from_url(&proxy_auth, url.buf);
   strbuf_release(&url);
  }

  if (!proxy_auth.host)
   die("Invalid proxy URL '%s'", curl_http_proxy);

  curl_easy_setopt(result, CURLOPT_PROXY, proxy_auth.host);





 }
 init_curl_proxy_auth(result);

 set_curl_keepalive(result);

 return result;
}
