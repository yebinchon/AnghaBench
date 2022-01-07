
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int S_ISLNK (unsigned int) ;
 scalar_t__ is_dir_sep (char const) ;
 int skip_iprefix (char const*,char*,char const**) ;

__attribute__((used)) static int verify_dotfile(const char *rest, unsigned mode)
{







 if (*rest == '\0' || is_dir_sep(*rest))
  return 0;

 switch (*rest) {
 case 'g':
 case 'G':
  if (rest[1] != 'i' && rest[1] != 'I')
   break;
  if (rest[2] != 't' && rest[2] != 'T')
   break;
  if (rest[3] == '\0' || is_dir_sep(rest[3]))
   return 0;
  if (S_ISLNK(mode)) {
   rest += 3;
   if (skip_iprefix(rest, "modules", &rest) &&
       (*rest == '\0' || is_dir_sep(*rest)))
    return 0;
  }
  break;
 case '.':
  if (rest[1] == '\0' || is_dir_sep(rest[1]))
   return 0;
 }
 return 1;
}
