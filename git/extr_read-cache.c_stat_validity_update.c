
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stat_validity {scalar_t__ sd; } ;
struct stat_data {int dummy; } ;
struct stat {int st_mode; } ;


 int S_ISREG (int ) ;
 int fill_stat_data (scalar_t__,struct stat*) ;
 scalar_t__ fstat (int,struct stat*) ;
 int stat_validity_clear (struct stat_validity*) ;
 scalar_t__ xcalloc (int,int) ;

void stat_validity_update(struct stat_validity *sv, int fd)
{
 struct stat st;

 if (fstat(fd, &st) < 0 || !S_ISREG(st.st_mode))
  stat_validity_clear(sv);
 else {
  if (!sv->sd)
   sv->sd = xcalloc(1, sizeof(struct stat_data));
  fill_stat_data(sv->sd, &st);
 }
}
