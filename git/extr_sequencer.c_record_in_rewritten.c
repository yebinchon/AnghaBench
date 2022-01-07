
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct object_id {int dummy; } ;
typedef enum todo_command { ____Placeholder_todo_command } todo_command ;
typedef int FILE ;


 int fclose (int *) ;
 int flush_rewritten_pending () ;
 int * fopen_or_warn (int ,char*) ;
 int fprintf (int *,char*,char*) ;
 int is_fixup (int) ;
 char* oid_to_hex (struct object_id*) ;
 int rebase_path_rewritten_pending () ;

__attribute__((used)) static void record_in_rewritten(struct object_id *oid,
  enum todo_command next_command)
{
 FILE *out = fopen_or_warn(rebase_path_rewritten_pending(), "a");

 if (!out)
  return;

 fprintf(out, "%s\n", oid_to_hex(oid));
 fclose(out);

 if (!is_fixup(next_command))
  flush_rewritten_pending();
}
