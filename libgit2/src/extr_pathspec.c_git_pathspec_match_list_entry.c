
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ datatype; int matches; } ;
typedef TYPE_1__ git_pathspec_match_list ;


 scalar_t__ PATHSPEC_DATATYPE_STRINGS ;
 scalar_t__ git_array_get (int ,size_t) ;
 int git_array_valid_index (int ,size_t) ;

const char *git_pathspec_match_list_entry(
 const git_pathspec_match_list *m, size_t pos)
{
 if (!m || m->datatype != PATHSPEC_DATATYPE_STRINGS ||
  !git_array_valid_index(m->matches, pos))
  return ((void*)0);

 return *((const char **)git_array_get(m->matches, pos));
}
