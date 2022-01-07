
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {TYPE_1__* opts; } ;
typedef TYPE_2__ tag_state ;
struct TYPE_4__ {int num_lines; } ;


 int printf (char*,...) ;

__attribute__((used)) static void print_list_lines(const char *message, const tag_state *state)
{
 const char *msg = message;
 int num = state->opts->num_lines - 1;

 if (!msg) return;


 while(*msg && *msg != '\n') printf("%c", *msg++);


 while(*msg && *msg == '\n') msg++;

 printf("\n");


 if (num == 0) return;
 if (*msg && msg[1]) printf("\n");


 while (*msg && num-- >= 2) {
  printf("    ");

  while (*msg && *msg != '\n') printf("%c", *msg++);


  if (*msg && *msg == '\n' && msg[1] == '\n') {
   num--;
   printf("\n");
  }
  while(*msg && *msg == '\n') msg++;

  printf("\n");
 }
}
