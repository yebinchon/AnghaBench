
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {TYPE_1__* opts; } ;
typedef TYPE_2__ tag_state ;
typedef int git_tag ;
struct TYPE_5__ {scalar_t__ num_lines; } ;


 char* git_tag_message (int *) ;
 char* git_tag_name (int *) ;
 int print_list_lines (char const*,TYPE_2__ const*) ;
 int printf (char*,...) ;

__attribute__((used)) static void print_tag(git_tag *tag, const tag_state *state)
{
 printf("%-16s", git_tag_name(tag));

 if (state->opts->num_lines) {
  const char *msg = git_tag_message(tag);
  print_list_lines(msg, state);
 } else {
  printf("\n");
 }
}
