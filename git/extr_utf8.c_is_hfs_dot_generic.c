
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef char ucs_char_t ;


 int is_dir_sep (char) ;
 char next_hfs_char (char const**) ;
 char const tolower (char) ;

__attribute__((used)) static int is_hfs_dot_generic(const char *path,
         const char *needle, size_t needle_len)
{
 ucs_char_t c;

 c = next_hfs_char(&path);
 if (c != '.')
  return 0;






 for (; needle_len > 0; needle++, needle_len--) {
  c = next_hfs_char(&path);





  if (c > 127)
   return 0;
  if (tolower(c) != *needle)
   return 0;
 }

 c = next_hfs_char(&path);
 if (c && !is_dir_sep(c))
  return 0;

 return 1;
}
