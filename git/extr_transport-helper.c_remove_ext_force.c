
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char* strchr (char const*,char) ;

__attribute__((used)) static const char *remove_ext_force(const char *url)
{
 if (url) {
  const char *colon = strchr(url, ':');
  if (colon && colon[1] == ':')
   return colon + 2;
 }
 return url;
}
