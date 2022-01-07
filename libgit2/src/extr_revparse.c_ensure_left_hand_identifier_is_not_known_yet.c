
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int git_reference ;
typedef int git_object ;


 int GIT_EINVALIDSPEC ;
 int ensure_base_rev_is_not_known_yet (int *) ;

__attribute__((used)) static int ensure_left_hand_identifier_is_not_known_yet(git_object *object, git_reference *reference)
{
 if (!ensure_base_rev_is_not_known_yet(object) && reference == ((void*)0))
  return 0;

 return GIT_EINVALIDSPEC;
}
