
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct child_process {int out; int in; } ;


 int error (char*,...) ;
 scalar_t__ packet_flush_gently (int ) ;
 char* packet_read_line (int ,int *) ;
 scalar_t__ packet_write_fmt_gently (int ,char*,...) ;
 int skip_prefix (char*,char const*,char const**) ;
 scalar_t__ strcmp (char const*,char*) ;
 scalar_t__ strtol_i (char const*,int,int*) ;

__attribute__((used)) static int handshake_version(struct child_process *process,
        const char *welcome_prefix, int *versions,
        int *chosen_version)
{
 int version_scratch;
 int i;
 char *line;
 const char *p;

 if (!chosen_version)
  chosen_version = &version_scratch;

 if (packet_write_fmt_gently(process->in, "%s-client\n",
        welcome_prefix))
  return error("Could not write client identification");
 for (i = 0; versions[i]; i++) {
  if (packet_write_fmt_gently(process->in, "version=%d\n",
         versions[i]))
   return error("Could not write requested version");
 }
 if (packet_flush_gently(process->in))
  return error("Could not write flush packet");

 if (!(line = packet_read_line(process->out, ((void*)0))) ||
     !skip_prefix(line, welcome_prefix, &p) ||
     strcmp(p, "-server"))
  return error("Unexpected line '%s', expected %s-server",
        line ? line : "<flush packet>", welcome_prefix);
 if (!(line = packet_read_line(process->out, ((void*)0))) ||
     !skip_prefix(line, "version=", &p) ||
     strtol_i(p, 10, chosen_version))
  return error("Unexpected line '%s', expected version",
        line ? line : "<flush packet>");
 if ((line = packet_read_line(process->out, ((void*)0))))
  return error("Unexpected line '%s', expected flush", line);


 for (i = 0; versions[i]; i++) {
  if (versions[i] == *chosen_version)
   break;
 }
 if (!versions[i])
  return error("Version %d not supported", *chosen_version);

 return 0;
}
