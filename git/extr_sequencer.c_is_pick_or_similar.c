
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum todo_command { ____Placeholder_todo_command } todo_command ;
__attribute__((used)) static int is_pick_or_similar(enum todo_command command)
{
 switch (command) {
 case 131:
 case 130:
 case 133:
 case 129:
 case 132:
 case 128:
  return 1;
 default:
  return 0;
 }
}
