
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int failures; } ;
typedef TYPE_1__ git_pathspec_match_list ;


 char** git_array_get (int ,size_t) ;

const char * git_pathspec_match_list_failed_entry(
 const git_pathspec_match_list *m, size_t pos)
{
 char **entry = m ? git_array_get(m->failures, pos) : ((void*)0);

 return entry ? *entry : ((void*)0);
}
