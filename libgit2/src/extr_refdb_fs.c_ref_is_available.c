
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ strcmp (char const*,char const*) ;
 size_t strlen (char const*) ;
 int strncmp (char const*,char const*,size_t) ;

__attribute__((used)) static bool ref_is_available(
 const char *old_ref, const char *new_ref, const char *this_ref)
{
 if (old_ref == ((void*)0) || strcmp(old_ref, this_ref)) {
  size_t reflen = strlen(this_ref);
  size_t newlen = strlen(new_ref);
  size_t cmplen = reflen < newlen ? reflen : newlen;
  const char *lead = reflen < newlen ? new_ref : this_ref;

  if (!strncmp(new_ref, this_ref, cmplen) && lead[cmplen] == '/') {
   return 0;
  }
 }

 return 1;
}
