
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct subprocess_capability {unsigned int flag; scalar_t__ name; } ;
struct child_process {int * argv; int out; int in; } ;


 int die (char*,int ,char const*) ;
 int error (char*) ;
 scalar_t__ packet_flush_gently (int ) ;
 char* packet_read_line (int ,int *) ;
 scalar_t__ packet_write_fmt_gently (int ,char*,scalar_t__) ;
 int skip_prefix (char*,char*,char const**) ;
 scalar_t__ strcmp (char const*,scalar_t__) ;

__attribute__((used)) static int handshake_capabilities(struct child_process *process,
      struct subprocess_capability *capabilities,
      unsigned int *supported_capabilities)
{
 int i;
 char *line;

 for (i = 0; capabilities[i].name; i++) {
  if (packet_write_fmt_gently(process->in, "capability=%s\n",
         capabilities[i].name))
   return error("Could not write requested capability");
 }
 if (packet_flush_gently(process->in))
  return error("Could not write flush packet");

 while ((line = packet_read_line(process->out, ((void*)0)))) {
  const char *p;
  if (!skip_prefix(line, "capability=", &p))
   continue;

  for (i = 0;
       capabilities[i].name && strcmp(p, capabilities[i].name);
       i++)
   ;
  if (capabilities[i].name) {
   if (supported_capabilities)
    *supported_capabilities |= capabilities[i].flag;
  } else {
   die("subprocess '%s' requested unsupported capability '%s'",
       process->argv[0], p);
  }
 }

 return 0;
}
