
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int failures; } ;
typedef TYPE_1__ git_pathspec_match_list ;


 size_t git_array_size (int ) ;

size_t git_pathspec_match_list_failed_entrycount(
 const git_pathspec_match_list *m)
{
 return m ? git_array_size(m->failures) : 0;
}
