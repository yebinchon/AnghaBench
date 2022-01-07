
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int git_odb_object ;


 int git_commit__parse_ext (void*,int *,int ) ;

int git_commit__parse(void *_commit, git_odb_object *odb_obj)
{
 return git_commit__parse_ext(_commit, odb_obj, 0);
}
