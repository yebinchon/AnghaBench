
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ref {char* name; struct ref* next; } ;


 int refname_match (char const*,char*) ;
 int starts_with (char*,char*) ;
 int strlen (char const*) ;

int count_refspec_match(const char *pattern,
   struct ref *refs,
   struct ref **matched_ref)
{
 int patlen = strlen(pattern);
 struct ref *matched_weak = ((void*)0);
 struct ref *matched = ((void*)0);
 int weak_match = 0;
 int match = 0;

 for (weak_match = match = 0; refs; refs = refs->next) {
  char *name = refs->name;
  int namelen = strlen(name);

  if (!refname_match(pattern, name))
   continue;
  if (namelen != patlen &&
      patlen != namelen - 5 &&
      !starts_with(name, "refs/heads/") &&
      !starts_with(name, "refs/tags/")) {







   matched_weak = refs;
   weak_match++;
  }
  else {
   matched = refs;
   match++;
  }
 }
 if (!matched) {
  if (matched_ref)
   *matched_ref = matched_weak;
  return weak_match;
 }
 else {
  if (matched_ref)
   *matched_ref = matched;
  return match;
 }
}
