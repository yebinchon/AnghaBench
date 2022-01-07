
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stat {scalar_t__ st_mtime; } ;


 int stat (char const* const,struct stat*) ;

__attribute__((used)) static int sort_by_mtime (const void *p1, const void *p2)
{
  const char* const *f1 = (const char* const *) p1;
  const char* const *f2 = (const char* const *) p2;

  struct stat s1;
  struct stat s2;

  const int rc1 = stat (*f1, &s1);
  const int rc2 = stat (*f2, &s2);

  if (rc1 < rc2) return 1;
  if (rc1 > rc2) return -1;

  if (s1.st_mtime < s2.st_mtime) return 1;
  if (s1.st_mtime > s2.st_mtime) return -1;

  return 0;
}
