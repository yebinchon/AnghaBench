
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ idx; } ;
typedef TYPE_1__ GHolder ;


 char* T_DASH_HEAD ;
 int free (char*) ;
 scalar_t__ get_start_end_parsing_dates (TYPE_1__*,char**,char**,char*) ;
 scalar_t__ snprintf (int *,int ,char*,char const*,char*,char*) ;
 int sprintf (char*,char*,char const*,char*,char*) ;
 char* xmalloc (scalar_t__) ;
 char* xstrdup (char const*) ;

char *
get_overall_header (GHolder * h)
{
  const char *head = T_DASH_HEAD;
  char *hd = ((void*)0), *start = ((void*)0), *end = ((void*)0);

  if (h->idx == 0 || get_start_end_parsing_dates (h, &start, &end, "%d/%b/%Y"))
    return xstrdup (head);

  hd = xmalloc (snprintf (((void*)0), 0, "%s (%s - %s)", head, start, end) + 1);
  sprintf (hd, "%s (%s - %s)", head, start, end);

  free (end);
  free (start);

  return hd;
}
