
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int git_object_t ;


 int GIT_EINVALIDSPEC ;
 int GIT_OBJECT_ANY ;





__attribute__((used)) static int check_type_combination(git_object_t type, git_object_t target)
{
 if (type == target)
  return 0;

 switch (type) {
 case 131:
 case 128:

  return GIT_EINVALIDSPEC;
  break;
 case 130:

  if (target != 128 && target != GIT_OBJECT_ANY)
   return GIT_EINVALIDSPEC;
  break;
 case 129:

  break;
 default:
  return GIT_EINVALIDSPEC;
 }

 return 0;
}
