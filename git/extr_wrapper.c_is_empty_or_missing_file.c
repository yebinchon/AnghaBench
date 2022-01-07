
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stat {int st_size; } ;


 scalar_t__ ENOENT ;
 int _ (char*) ;
 int die_errno (int ,char const*) ;
 scalar_t__ errno ;
 scalar_t__ stat (char const*,struct stat*) ;

int is_empty_or_missing_file(const char *filename)
{
 struct stat st;

 if (stat(filename, &st) < 0) {
  if (errno == ENOENT)
   return 1;
  die_errno(_("could not stat %s"), filename);
 }

 return !st.st_size;
}
