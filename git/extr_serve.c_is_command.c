
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct protocol_capability {int command; int (* advertise ) (int ,int *) ;int name; } ;


 int die (char*,char const*,...) ;
 struct protocol_capability* get_capability (char const*) ;
 scalar_t__ skip_prefix (char const*,char*,char const**) ;
 int stub1 (int ,int *) ;
 int the_repository ;

__attribute__((used)) static int is_command(const char *key, struct protocol_capability **command)
{
 const char *out;

 if (skip_prefix(key, "command=", &out)) {
  struct protocol_capability *cmd = get_capability(out);

  if (*command)
   die("command '%s' requested after already requesting command '%s'",
       out, (*command)->name);
  if (!cmd || !cmd->advertise(the_repository, ((void*)0)) || !cmd->command)
   die("invalid command '%s'", out);

  *command = cmd;
  return 1;
 }

 return 0;
}
