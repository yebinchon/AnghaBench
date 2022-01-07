
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct atom_value {void* s; } ;
struct TYPE_2__ {char* name; } ;


 void* copy_email (char const*) ;
 void* copy_line (char const*) ;
 void* copy_name (char const*) ;
 char* find_wholine (char const*,int,void*) ;
 int grab_date (char const*,struct atom_value*,char const*) ;
 scalar_t__ starts_with (char const*,char*) ;
 scalar_t__ strcmp (char const*,char*) ;
 int strlen (char const*) ;
 scalar_t__ strncmp (char const*,char const*,int) ;
 TYPE_1__* used_atom ;
 int used_atom_cnt ;

__attribute__((used)) static void grab_person(const char *who, struct atom_value *val, int deref, void *buf)
{
 int i;
 int wholen = strlen(who);
 const char *wholine = ((void*)0);

 for (i = 0; i < used_atom_cnt; i++) {
  const char *name = used_atom[i].name;
  struct atom_value *v = &val[i];
  if (!!deref != (*name == '*'))
   continue;
  if (deref)
   name++;
  if (strncmp(who, name, wholen))
   continue;
  if (name[wholen] != 0 &&
      strcmp(name + wholen, "name") &&
      strcmp(name + wholen, "email") &&
      !starts_with(name + wholen, "date"))
   continue;
  if (!wholine)
   wholine = find_wholine(who, wholen, buf);
  if (!wholine)
   return;
  if (name[wholen] == 0)
   v->s = copy_line(wholine);
  else if (!strcmp(name + wholen, "name"))
   v->s = copy_name(wholine);
  else if (!strcmp(name + wholen, "email"))
   v->s = copy_email(wholine);
  else if (starts_with(name + wholen, "date"))
   grab_date(wholine, v, name);
 }





 if (strcmp(who, "tagger") && strcmp(who, "committer"))
  return;
 if (!wholine)
  wholine = find_wholine(who, wholen, buf);
 if (!wholine)
  return;
 for (i = 0; i < used_atom_cnt; i++) {
  const char *name = used_atom[i].name;
  struct atom_value *v = &val[i];
  if (!!deref != (*name == '*'))
   continue;
  if (deref)
   name++;

  if (starts_with(name, "creatordate"))
   grab_date(wholine, v, name);
  else if (!strcmp(name, "creator"))
   v->s = copy_line(wholine);
 }
}
