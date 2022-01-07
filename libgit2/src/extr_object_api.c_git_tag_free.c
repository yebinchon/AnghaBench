
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int git_tag ;
typedef int git_object ;


 int git_object_free (int *) ;

void git_tag_free(git_tag *obj)
{
 git_object_free((git_object *)obj);
}
