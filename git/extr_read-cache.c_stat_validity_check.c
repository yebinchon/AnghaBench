
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stat_validity {int * sd; } ;
struct stat {int st_mode; } ;


 scalar_t__ S_ISREG (int ) ;
 int match_stat_data (int *,struct stat*) ;
 scalar_t__ stat (char const*,struct stat*) ;

int stat_validity_check(struct stat_validity *sv, const char *path)
{
 struct stat st;

 if (stat(path, &st) < 0)
  return sv->sd == ((void*)0);
 if (!sv->sd)
  return 0;
 return S_ISREG(st.st_mode) && !match_stat_data(sv->sd, &st);
}
