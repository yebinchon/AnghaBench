
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int PATHSPEC_GLOB ;
 int PATHSPEC_ICASE ;
 int PATHSPEC_LITERAL ;
 int _ (char*) ;
 int die (int ) ;
 scalar_t__ get_glob_global () ;
 scalar_t__ get_icase_global () ;
 scalar_t__ get_literal_global () ;
 scalar_t__ get_noglob_global () ;

__attribute__((used)) static int get_global_magic(int element_magic)
{
 int global_magic = 0;

 if (get_literal_global())
  global_magic |= PATHSPEC_LITERAL;


 if (get_glob_global() && !(element_magic & PATHSPEC_LITERAL))
  global_magic |= PATHSPEC_GLOB;

 if (get_glob_global() && get_noglob_global())
  die(_("global 'glob' and 'noglob' pathspec settings are incompatible"));

 if (get_icase_global())
  global_magic |= PATHSPEC_ICASE;

 if ((global_magic & PATHSPEC_LITERAL) &&
     (global_magic & ~PATHSPEC_LITERAL))
  die(_("global 'literal' pathspec setting is incompatible "
        "with all other global pathspec settings"));


 if (get_noglob_global() && !(element_magic & PATHSPEC_GLOB))
  global_magic |= PATHSPEC_LITERAL;

 return global_magic;
}
