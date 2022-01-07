
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int git_tag ;
typedef int git_object ;


 int GIT_OBJECT_ANY ;
 int git_object_peel (int **,int const*,int ) ;

int git_tag_peel(git_object **tag_target, const git_tag *tag)
{
 return git_object_peel(tag_target, (const git_object *)tag, GIT_OBJECT_ANY);
}
