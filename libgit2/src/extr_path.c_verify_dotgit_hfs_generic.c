
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char next_hfs_char (char const**,size_t*) ;

__attribute__((used)) static bool verify_dotgit_hfs_generic(const char *path, size_t len, const char *needle, size_t needle_len)
{
 size_t i;
 char c;

 if (next_hfs_char(&path, &len) != '.')
  return 1;

 for (i = 0; i < needle_len; i++) {
  c = next_hfs_char(&path, &len);
  if (c != needle[i])
   return 1;
 }

 if (next_hfs_char(&path, &len) != '\0')
  return 1;

 return 0;
}
