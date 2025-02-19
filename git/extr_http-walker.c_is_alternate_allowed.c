
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ARRAY_SIZE (char const**) ;
 scalar_t__ HTTP_FOLLOW_ALWAYS ;
 scalar_t__ http_follow_config ;
 int is_transport_allowed (char const*,int ) ;
 scalar_t__ skip_prefix (char const*,char const*,char const**) ;
 scalar_t__ starts_with (char const*,char*) ;
 int warning (char*,char const*) ;

__attribute__((used)) static int is_alternate_allowed(const char *url)
{
 const char *protocols[] = {
  "http", "https", "ftp", "ftps"
 };
 int i;

 if (http_follow_config != HTTP_FOLLOW_ALWAYS) {
  warning("alternate disabled by http.followRedirects: %s", url);
  return 0;
 }

 for (i = 0; i < ARRAY_SIZE(protocols); i++) {
  const char *end;
  if (skip_prefix(url, protocols[i], &end) &&
      starts_with(end, "://"))
   break;
 }

 if (i >= ARRAY_SIZE(protocols)) {
  warning("ignoring alternate with unknown protocol: %s", url);
  return 0;
 }
 if (!is_transport_allowed(protocols[i], 0)) {
  warning("ignoring alternate with restricted protocol: %s", url);
  return 0;
 }

 return 1;
}
