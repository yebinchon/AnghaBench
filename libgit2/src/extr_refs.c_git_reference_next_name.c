
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int git_reference_iterator ;


 int git_refdb_iterator_next_name (char const**,int *) ;

int git_reference_next_name(const char **out, git_reference_iterator *iter)
{
 return git_refdb_iterator_next_name(out, iter);
}
