
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {char* attrdata; size_t nattrs; char const** attrs; } ;
typedef TYPE_1__ git_filter_def ;


 char* git_attr__false ;
 char* git_attr__true ;
 char* git_attr__unset ;
 scalar_t__ strlen (char*) ;

__attribute__((used)) static void filter_def_set_attrs(git_filter_def *fdef)
{
 char *scan = fdef->attrdata;
 size_t i;

 for (i = 0; i < fdef->nattrs; ++i) {
  const char *name, *value;

  switch (*scan) {
  case '=':
   name = scan + 1;
   for (scan++; *scan != '='; scan++) ;
   *scan++ = '\0';
   value = scan;
   break;
  case '-':
   name = scan + 1; value = git_attr__false; break;
  case '+':
   name = scan + 1; value = git_attr__true; break;
  case '!':
   name = scan + 1; value = git_attr__unset; break;
  default:
   name = scan; value = ((void*)0); break;
  }

  fdef->attrs[i] = name;
  fdef->attrs[i + fdef->nattrs] = value;

  scan += strlen(scan) + 1;
 }
}
