
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct urlmatch_item {size_t pathmatch_len; char user_matched; int hostmatch_len; } ;
struct url_info {scalar_t__ scheme_len; scalar_t__ user_len; scalar_t__ port_len; int host_len; scalar_t__ path_off; scalar_t__ url_len; scalar_t__ url; scalar_t__ port_off; scalar_t__ user_off; } ;


 int match_host (struct url_info const*,struct url_info const*) ;
 scalar_t__ strncmp (scalar_t__,scalar_t__,scalar_t__) ;
 size_t url_match_prefix (scalar_t__,scalar_t__,scalar_t__) ;

__attribute__((used)) static int match_urls(const struct url_info *url,
        const struct url_info *url_prefix,
        struct urlmatch_item *match)
{
 char usermatched = 0;
 size_t pathmatchlen;

 if (!url || !url_prefix || !url->url || !url_prefix->url)
  return 0;


 if (url_prefix->scheme_len != url->scheme_len ||
     strncmp(url->url, url_prefix->url, url->scheme_len))
  return 0;


 if (url_prefix->user_off) {
  if (!url->user_off || url->user_len != url_prefix->user_len ||
      strncmp(url->url + url->user_off,
       url_prefix->url + url_prefix->user_off,
       url->user_len))
   return 0;
  usermatched = 1;
 }


 if (!match_host(url, url_prefix))
  return 0;


 if (url_prefix->port_len != url->port_len ||
     strncmp(url->url + url->port_off,
      url_prefix->url + url_prefix->port_off, url->port_len))
  return 0;


 pathmatchlen = url_match_prefix(
  url->url + url->path_off,
  url_prefix->url + url_prefix->path_off,
  url_prefix->url_len - url_prefix->path_off);
 if (!pathmatchlen)
  return 0;

 if (match) {
  match->hostmatch_len = url_prefix->host_len;
  match->pathmatch_len = pathmatchlen;
  match->user_matched = usermatched;
 }

 return 1;
}
