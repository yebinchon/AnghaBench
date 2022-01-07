
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct refname_atom {scalar_t__ option; int rstrip; int lstrip; } ;


 scalar_t__ R_LSTRIP ;
 scalar_t__ R_RSTRIP ;
 scalar_t__ R_SHORT ;
 char const* lstrip_ref_components (char const*,int ) ;
 char const* rstrip_ref_components (char const*,int ) ;
 char const* shorten_unambiguous_ref (char const*,int ) ;
 int warn_ambiguous_refs ;
 char const* xstrdup (char const*) ;

__attribute__((used)) static const char *show_ref(struct refname_atom *atom, const char *refname)
{
 if (atom->option == R_SHORT)
  return shorten_unambiguous_ref(refname, warn_ambiguous_refs);
 else if (atom->option == R_LSTRIP)
  return lstrip_ref_components(refname, atom->lstrip);
 else if (atom->option == R_RSTRIP)
  return rstrip_ref_components(refname, atom->rstrip);
 else
  return xstrdup(refname);
}
