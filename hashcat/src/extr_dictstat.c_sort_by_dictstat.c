
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct stat {scalar_t__ STAT_NANOSECONDS_ACCESS_TIME; scalar_t__ st_atime; } ;
struct TYPE_2__ {int stat; int encoding_to; int encoding_from; } ;
typedef TYPE_1__ dictstat_t ;


 int memcmp (struct stat*,struct stat*,int) ;
 int memcpy (struct stat*,int *,int) ;
 int strcmp (int ,int ) ;

int sort_by_dictstat (const void *s1, const void *s2)
{
  const dictstat_t *d1 = (const dictstat_t *) s1;
  const dictstat_t *d2 = (const dictstat_t *) s2;

  const int rc_from = strcmp (d1->encoding_from, d2->encoding_from);

  if (rc_from != 0) return rc_from;

  const int rc_to = strcmp (d1->encoding_to, d2->encoding_to);

  if (rc_to != 0) return rc_to;

  struct stat stat1;
  struct stat stat2;

  memcpy (&stat1, &d1->stat, sizeof (struct stat));
  memcpy (&stat2, &d2->stat, sizeof (struct stat));

  stat1.st_atime = 0;
  stat2.st_atime = 0;






  const int rc_memcmp = memcmp (&stat1, &stat2, sizeof (struct stat));

  return rc_memcmp;
}
