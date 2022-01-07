
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int HTTP_FOLLOW_ALWAYS ;
 int HTTP_FOLLOW_INITIAL ;
 int HTTP_FOLLOW_NONE ;
 scalar_t__ LARGE_PACKET_MAX ;
 int _ (char*) ;
 int config_error_nonbool (char const*) ;
 int curl_cookie_file ;
 int curl_deleg ;
 int curl_empty_auth ;
 int curl_ftp_no_epsv ;
 int curl_http_proxy ;
 int curl_http_version ;
 long curl_low_speed_limit ;
 long curl_low_speed_time ;
 int curl_save_cookies ;
 int * curl_slist_append (int *,char const*) ;
 int curl_slist_free_all (int *) ;
 int curl_ssl_try ;
 int curl_ssl_verify ;
 int * extra_http_headers ;
 int free (int ) ;
 int git_config_bool (char const*,char const*) ;
 void* git_config_int (char const*,char const*) ;
 int git_config_pathname (int *,char const*,char const*) ;
 scalar_t__ git_config_ssize_t (char const*,char const*) ;
 int git_config_string (int *,char const*,char const*) ;
 int git_default_config (char const*,char const*,void*) ;
 int http_follow_config ;
 scalar_t__ http_post_buffer ;
 int http_proxy_authmethod ;
 int http_schannel_check_revoke ;
 int http_schannel_use_ssl_cainfo ;
 int http_ssl_backend ;
 void* max_requests ;
 int min_curl_sessions ;
 int ssl_cainfo ;
 int ssl_capath ;
 int ssl_cert ;
 int ssl_cert_password_required ;
 int ssl_cipherlist ;
 int ssl_key ;
 int ssl_pinnedkey ;
 int ssl_version ;
 int strcmp (char const*,char const*) ;
 int user_agent ;
 int warning (int ,...) ;
 int xstrdup_or_null (char const*) ;

__attribute__((used)) static int http_options(const char *var, const char *value, void *cb)
{
 if (!strcmp("http.version", var)) {
  return git_config_string(&curl_http_version, var, value);
 }
 if (!strcmp("http.sslverify", var)) {
  curl_ssl_verify = git_config_bool(var, value);
  return 0;
 }
 if (!strcmp("http.sslcipherlist", var))
  return git_config_string(&ssl_cipherlist, var, value);
 if (!strcmp("http.sslversion", var))
  return git_config_string(&ssl_version, var, value);
 if (!strcmp("http.sslcert", var))
  return git_config_pathname(&ssl_cert, var, value);
 if (!strcmp("http.sslcainfo", var))
  return git_config_pathname(&ssl_cainfo, var, value);
 if (!strcmp("http.sslcertpasswordprotected", var)) {
  ssl_cert_password_required = git_config_bool(var, value);
  return 0;
 }
 if (!strcmp("http.ssltry", var)) {
  curl_ssl_try = git_config_bool(var, value);
  return 0;
 }
 if (!strcmp("http.sslbackend", var)) {
  free(http_ssl_backend);
  http_ssl_backend = xstrdup_or_null(value);
  return 0;
 }

 if (!strcmp("http.schannelcheckrevoke", var)) {
  http_schannel_check_revoke = git_config_bool(var, value);
  return 0;
 }

 if (!strcmp("http.schannelusesslcainfo", var)) {
  http_schannel_use_ssl_cainfo = git_config_bool(var, value);
  return 0;
 }

 if (!strcmp("http.minsessions", var)) {
  min_curl_sessions = git_config_int(var, value);

  if (min_curl_sessions > 1)
   min_curl_sessions = 1;

  return 0;
 }






 if (!strcmp("http.lowspeedlimit", var)) {
  curl_low_speed_limit = (long)git_config_int(var, value);
  return 0;
 }
 if (!strcmp("http.lowspeedtime", var)) {
  curl_low_speed_time = (long)git_config_int(var, value);
  return 0;
 }

 if (!strcmp("http.noepsv", var)) {
  curl_ftp_no_epsv = git_config_bool(var, value);
  return 0;
 }
 if (!strcmp("http.proxy", var))
  return git_config_string(&curl_http_proxy, var, value);

 if (!strcmp("http.proxyauthmethod", var))
  return git_config_string(&http_proxy_authmethod, var, value);

 if (!strcmp("http.cookiefile", var))
  return git_config_pathname(&curl_cookie_file, var, value);
 if (!strcmp("http.savecookies", var)) {
  curl_save_cookies = git_config_bool(var, value);
  return 0;
 }

 if (!strcmp("http.postbuffer", var)) {
  http_post_buffer = git_config_ssize_t(var, value);
  if (http_post_buffer < 0)
   warning(_("negative value for http.postbuffer; defaulting to %d"), LARGE_PACKET_MAX);
  if (http_post_buffer < LARGE_PACKET_MAX)
   http_post_buffer = LARGE_PACKET_MAX;
  return 0;
 }

 if (!strcmp("http.useragent", var))
  return git_config_string(&user_agent, var, value);

 if (!strcmp("http.emptyauth", var)) {
  if (value && !strcmp("auto", value))
   curl_empty_auth = -1;
  else
   curl_empty_auth = git_config_bool(var, value);
  return 0;
 }

 if (!strcmp("http.delegation", var)) {



  warning(_("Delegation control is not supported with cURL < 7.22.0"));
  return 0;

 }

 if (!strcmp("http.pinnedpubkey", var)) {



  warning(_("Public key pinning not supported with cURL < 7.44.0"));
  return 0;

 }

 if (!strcmp("http.extraheader", var)) {
  if (!value) {
   return config_error_nonbool(var);
  } else if (!*value) {
   curl_slist_free_all(extra_http_headers);
   extra_http_headers = ((void*)0);
  } else {
   extra_http_headers =
    curl_slist_append(extra_http_headers, value);
  }
  return 0;
 }

 if (!strcmp("http.followredirects", var)) {
  if (value && !strcmp(value, "initial"))
   http_follow_config = HTTP_FOLLOW_INITIAL;
  else if (git_config_bool(var, value))
   http_follow_config = HTTP_FOLLOW_ALWAYS;
  else
   http_follow_config = HTTP_FOLLOW_NONE;
  return 0;
 }


 return git_default_config(var, value, cb);
}
