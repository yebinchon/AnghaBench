
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int GIT_FILELOCK_EXTENSION ;
 int is_valid_ref_char (char const) ;
 int memcmp (char const*,int ,int const) ;
 scalar_t__ strlen (int ) ;

__attribute__((used)) static int ensure_segment_validity(const char *name, char may_contain_glob)
{
 const char *current = name;
 char prev = '\0';
 const int lock_len = (int)strlen(GIT_FILELOCK_EXTENSION);
 int segment_len;

 if (*current == '.')
  return -1;

 for (current = name; ; current++) {
  if (*current == '\0' || *current == '/')
   break;

  if (!is_valid_ref_char(*current))
   return -1;

  if (prev == '.' && *current == '.')
   return -1;

  if (prev == '@' && *current == '{')
   return -1;

  if (*current == '*') {
   if (!may_contain_glob)
    return -1;
   may_contain_glob = 0;
  }

  prev = *current;
 }

 segment_len = (int)(current - name);


 if (segment_len >= lock_len &&
  !memcmp(current - lock_len, GIT_FILELOCK_EXTENSION, lock_len))
   return -1;

 return segment_len;
}
