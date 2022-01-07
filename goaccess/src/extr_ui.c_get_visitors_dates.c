
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_7__ {int holder_size; int idx; TYPE_2__* items; } ;
struct TYPE_6__ {TYPE_1__* metrics; } ;
struct TYPE_5__ {char* data; } ;
typedef TYPE_3__ GHolder ;


 char** malloc (int) ;
 int qsort (char**,int,int,int ) ;
 int strcmp_asc ;

__attribute__((used)) static char **
get_visitors_dates (GHolder * h)
{
  char **dates = malloc (sizeof (char *) * h->holder_size);
  int i;

  for (i = 0; i < h->idx; i++) {
    dates[i] = h->items[i].metrics->data;
  }
  qsort (dates, h->holder_size, sizeof (char *), strcmp_asc);

  return dates;
}
