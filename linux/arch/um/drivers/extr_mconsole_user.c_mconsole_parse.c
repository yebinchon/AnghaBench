
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mconsole_command {int command; } ;
struct TYPE_2__ {int data; } ;
struct mc_request {TYPE_1__ request; } ;


 int ARRAY_SIZE (struct mconsole_command*) ;
 struct mconsole_command* commands ;
 int strlen (int ) ;
 int strncmp (int ,int ,int ) ;

__attribute__((used)) static struct mconsole_command *mconsole_parse(struct mc_request *req)
{
 struct mconsole_command *cmd;
 int i;

 for (i = 0; i < ARRAY_SIZE(commands); i++) {
  cmd = &commands[i];
  if (!strncmp(req->request.data, cmd->command,
       strlen(cmd->command))) {
   return cmd;
  }
 }
 return ((void*)0);
}
