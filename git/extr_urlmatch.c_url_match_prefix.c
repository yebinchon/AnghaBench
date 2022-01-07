
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 size_t strlen (char const*) ;
 scalar_t__ strncmp (char const*,char const*,size_t) ;

__attribute__((used)) static size_t url_match_prefix(const char *url,
          const char *url_prefix,
          size_t url_prefix_len)
{
 if (!url || !url_prefix)
  return 0;
 if (!url_prefix_len || (url_prefix_len == 1 && *url_prefix == '/'))
  return (!*url || *url == '/') ? 1 : 0;
 if (url_prefix[url_prefix_len - 1] == '/')
  url_prefix_len--;
 if (strncmp(url, url_prefix, url_prefix_len))
  return 0;
 if ((strlen(url) == url_prefix_len) || (url[url_prefix_len] == '/'))
  return url_prefix_len + 1;
 return 0;
}
