
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int nr; TYPE_1__* items; } ;
struct TYPE_3__ {char* string; } ;


 TYPE_2__* hide_refs ;
 scalar_t__ skip_prefix (char const*,char const*,char const**) ;

int ref_is_hidden(const char *refname, const char *refname_full)
{
 int i;

 if (!hide_refs)
  return 0;
 for (i = hide_refs->nr - 1; i >= 0; i--) {
  const char *match = hide_refs->items[i].string;
  const char *subject;
  int neg = 0;
  const char *p;

  if (*match == '!') {
   neg = 1;
   match++;
  }

  if (*match == '^') {
   subject = refname_full;
   match++;
  } else {
   subject = refname;
  }


  if (subject &&
      skip_prefix(subject, match, &p) &&
      (!*p || *p == '/'))
   return !neg;
 }
 return 0;
}
