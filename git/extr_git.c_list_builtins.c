
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct string_list {int dummy; } ;
struct TYPE_3__ {unsigned int option; int cmd; } ;


 int ARRAY_SIZE (TYPE_1__*) ;
 TYPE_1__* commands ;
 int string_list_append (struct string_list*,int ) ;

__attribute__((used)) static void list_builtins(struct string_list *out, unsigned int exclude_option)
{
 int i;
 for (i = 0; i < ARRAY_SIZE(commands); i++) {
  if (exclude_option &&
      (commands[i].option & exclude_option))
   continue;
  string_list_append(out, commands[i].cmd);
 }
}
