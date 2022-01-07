
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ref {int match_status; int name; } ;





 int _ (char*) ;
 int error (int ,int ) ;

int report_unmatched_refs(struct ref **sought, int nr_sought)
{
 int i, ret = 0;

 for (i = 0; i < nr_sought; i++) {
  if (!sought[i])
   continue;
  switch (sought[i]->match_status) {
  case 130:
   continue;
  case 129:
   error(_("no such remote ref %s"), sought[i]->name);
   break;
  case 128:
   error(_("Server does not allow request for unadvertised object %s"),
         sought[i]->name);
   break;
  }
  ret = 1;
 }
 return ret;
}
