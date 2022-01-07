
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ idx; } ;
typedef int GJSON ;
typedef TYPE_1__ GHolder ;


 int OVERALL_ENDDATE ;
 int OVERALL_STARTDATE ;
 int free (char*) ;
 scalar_t__ get_start_end_parsing_dates (TYPE_1__*,char**,char**,char*) ;
 int pskeysval (int *,int ,char*,int,int ) ;

__attribute__((used)) static void
poverall_start_end_date (GJSON * json, GHolder * h, int sp)
{
  char *start = ((void*)0), *end = ((void*)0);

  if (h->idx == 0 || get_start_end_parsing_dates (h, &start, &end, "%d/%b/%Y"))
    return;

  pskeysval (json, OVERALL_STARTDATE, start, sp, 0);
  pskeysval (json, OVERALL_ENDDATE, end, sp, 0);

  free (end);
  free (start);
}
