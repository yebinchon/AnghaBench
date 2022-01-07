
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ git__prefixcmp (char const*,char*) ;

__attribute__((used)) static int local_file_url_prefixlen(const char *file_url)
{
 int len = -1;

 if (git__prefixcmp(file_url, "file://") == 0) {
  if (file_url[7] == '/')
   len = 8;
  else if (git__prefixcmp(file_url + 7, "localhost/") == 0)
   len = 17;
 }

 return len;
}
