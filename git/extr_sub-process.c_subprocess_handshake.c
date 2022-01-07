
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct child_process {int dummy; } ;
struct subprocess_entry {struct child_process process; } ;
struct subprocess_capability {int dummy; } ;


 int SIGPIPE ;
 int SIG_IGN ;
 scalar_t__ handshake_capabilities (struct child_process*,struct subprocess_capability*,unsigned int*) ;
 scalar_t__ handshake_version (struct child_process*,char const*,int*,int*) ;
 int sigchain_pop (int ) ;
 int sigchain_push (int ,int ) ;

int subprocess_handshake(struct subprocess_entry *entry,
    const char *welcome_prefix,
    int *versions,
    int *chosen_version,
    struct subprocess_capability *capabilities,
    unsigned int *supported_capabilities)
{
 int retval;
 struct child_process *process = &entry->process;

 sigchain_push(SIGPIPE, SIG_IGN);

 retval = handshake_version(process, welcome_prefix, versions,
       chosen_version) ||
   handshake_capabilities(process, capabilities,
     supported_capabilities);

 sigchain_pop(SIGPIPE);
 return retval;
}
