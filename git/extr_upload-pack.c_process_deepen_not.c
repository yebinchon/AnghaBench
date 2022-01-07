
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct string_list {int dummy; } ;
struct object_id {int dummy; } ;


 int die (char*,char const*) ;
 int expand_ref (int ,char const*,int ,struct object_id*,char**) ;
 int free (char*) ;
 scalar_t__ skip_prefix (char const*,char*,char const**) ;
 int string_list_append (struct string_list*,char*) ;
 int strlen (char const*) ;
 int the_repository ;

__attribute__((used)) static int process_deepen_not(const char *line, struct string_list *deepen_not, int *deepen_rev_list)
{
 const char *arg;
 if (skip_prefix(line, "deepen-not ", &arg)) {
  char *ref = ((void*)0);
  struct object_id oid;
  if (expand_ref(the_repository, arg, strlen(arg), &oid, &ref) != 1)
   die("git upload-pack: ambiguous deepen-not: %s", line);
  string_list_append(deepen_not, ref);
  free(ref);
  *deepen_rev_list = 1;
  return 1;
 }
 return 0;
}
