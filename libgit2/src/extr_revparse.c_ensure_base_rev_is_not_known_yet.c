
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int git_object ;


 int GIT_EINVALIDSPEC ;

__attribute__((used)) static int ensure_base_rev_is_not_known_yet(git_object *object)
{
 if (object == ((void*)0))
  return 0;

 return GIT_EINVALIDSPEC;
}
