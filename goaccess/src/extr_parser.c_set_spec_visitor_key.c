
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ date_spec_hr; } ;


 TYPE_1__ conf ;
 int free (char*) ;
 int memcpy (char*,char*,size_t) ;
 char* strchr (char*,char) ;
 size_t strlen (char*) ;
 char* xmalloc (size_t) ;
 char* xstrdup (char const*) ;

__attribute__((used)) static void
set_spec_visitor_key (char **fdate, const char *ftime)
{
  size_t dlen = 0, tlen = 0;
  char *key = ((void*)0), *tkey = ((void*)0), *pch = ((void*)0);

  tkey = xstrdup (ftime);
  if (conf.date_spec_hr && (pch = strchr (tkey, ':')) && (pch - tkey) > 0)
    *pch = '\0';

  dlen = strlen (*fdate);
  tlen = strlen (tkey);

  key = xmalloc (dlen + tlen + 1);
  memcpy (key, *fdate, dlen);
  memcpy (key + dlen, tkey, tlen + 1);

  free (*fdate);
  free (tkey);
  *fdate = key;
}
