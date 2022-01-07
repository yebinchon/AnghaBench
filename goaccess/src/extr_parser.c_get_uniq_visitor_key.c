
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {char* host; char* date; int agent; } ;
typedef TYPE_1__ GLogItem ;


 char* deblank (int ) ;
 int free (char*) ;
 int memcpy (char*,char*,size_t) ;
 size_t strlen (char*) ;
 char* xcalloc (size_t,int) ;
 int xstrdup (int ) ;

__attribute__((used)) static char *
get_uniq_visitor_key (GLogItem * logitem)
{
  char *ua = ((void*)0), *key = ((void*)0);
  size_t s1, s2, s3;

  ua = deblank (xstrdup (logitem->agent));

  s1 = strlen (logitem->host);
  s2 = strlen (logitem->date);
  s3 = strlen (ua);


  key = xcalloc (s1 + s2 + s3 + 3, sizeof (char));

  memcpy (key, logitem->host, s1);

  key[s1] = '|';
  memcpy (key + s1 + 1, logitem->date, s2 + 1);

  key[s1 + s2 + 1] = '|';
  memcpy (key + s1 + s2 + 2, ua, s3 + 1);

  free (ua);
  return key;
}
