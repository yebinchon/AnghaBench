
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ git_object_t ;
typedef int git_object ;


 int GIT_EINVALIDSPEC ;
 scalar_t__ GIT_OBJECT_INVALID ;
 int dereference_to_non_tag (int **,int *) ;
 int git_object_id (int *) ;
 int git_object_owner (int *) ;
 int git_object_peel (int **,int *,scalar_t__) ;
 int handle_grep_syntax (int **,int ,int ,char const*) ;
 scalar_t__ parse_obj_type (char const*) ;

__attribute__((used)) static int handle_caret_curly_syntax(git_object **out, git_object *obj, const char *curly_braces_content)
{
 git_object_t expected_type;

 if (*curly_braces_content == '\0')
  return dereference_to_non_tag(out, obj);

 if (*curly_braces_content == '/')
  return handle_grep_syntax(out, git_object_owner(obj), git_object_id(obj), curly_braces_content + 1);

 expected_type = parse_obj_type(curly_braces_content);

 if (expected_type == GIT_OBJECT_INVALID)
  return GIT_EINVALIDSPEC;

 return git_object_peel(out, obj, expected_type);
}
