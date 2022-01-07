
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int (* subprocess_start_fn ) (struct subprocess_entry*) ;
struct child_process {int use_shell; int in; int out; int clean_on_exit; char* trace2_child_class; int clean_on_exit_handler; int args; } ;
struct subprocess_entry {char const* cmd; int ent; struct child_process process; } ;
struct hashmap {int dummy; } ;


 int argv_array_push (int *,char const*) ;
 int child_process_init (struct child_process*) ;
 int error (char*,char const*) ;
 int hashmap_add (struct hashmap*,int *) ;
 int hashmap_entry_init (int *,int ) ;
 int start_command (struct child_process*) ;
 int strhash (char const*) ;
 int subprocess_exit_handler ;
 int subprocess_stop (struct hashmap*,struct subprocess_entry*) ;

int subprocess_start(struct hashmap *hashmap, struct subprocess_entry *entry, const char *cmd,
 subprocess_start_fn startfn)
{
 int err;
 struct child_process *process;

 entry->cmd = cmd;
 process = &entry->process;

 child_process_init(process);
 argv_array_push(&process->args, cmd);
 process->use_shell = 1;
 process->in = -1;
 process->out = -1;
 process->clean_on_exit = 1;
 process->clean_on_exit_handler = subprocess_exit_handler;
 process->trace2_child_class = "subprocess";

 err = start_command(process);
 if (err) {
  error("cannot fork to run subprocess '%s'", cmd);
  return err;
 }

 hashmap_entry_init(&entry->ent, strhash(cmd));

 err = startfn(entry);
 if (err) {
  error("initialization for subprocess '%s' failed", cmd);
  subprocess_stop(hashmap, entry);
  return err;
 }

 hashmap_add(hashmap, &entry->ent);
 return 0;
}
