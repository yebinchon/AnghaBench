
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int git_reference ;
typedef int git_object ;



__attribute__((used)) static bool any_left_hand_identifier(git_object *object, git_reference *reference, size_t identifier_len)
{
 if (object != ((void*)0))
  return 1;

 if (reference != ((void*)0))
  return 1;

 if (identifier_len > 0)
  return 1;

 return 0;
}
