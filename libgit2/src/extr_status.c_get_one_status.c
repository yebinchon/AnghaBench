
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct status_file_info {int count; unsigned int status; int wildmatch_flags; char const* expected; int ambiguous; } ;


 int GIT_EAMBIGUOUS ;
 int WM_CASEFOLD ;
 int git__strcasecmp (char const*,char const*) ;
 int git__strcmp (char const*,char const*) ;
 scalar_t__ wildmatch (char const*,char const*,int) ;

__attribute__((used)) static int get_one_status(const char *path, unsigned int status, void *data)
{
 struct status_file_info *sfi = data;
 int (*strcomp)(const char *a, const char *b);

 sfi->count++;
 sfi->status = status;

 strcomp = (sfi->wildmatch_flags & WM_CASEFOLD) ? git__strcasecmp : git__strcmp;

 if (sfi->count > 1 ||
  (strcomp(sfi->expected, path) != 0 &&
   wildmatch(sfi->expected, path, sfi->wildmatch_flags) != 0))
 {
  sfi->ambiguous = 1;
  return GIT_EAMBIGUOUS;
 }

 return 0;
}
