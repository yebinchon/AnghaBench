
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct subprocess_entry {int dummy; } ;
struct subprocess_capability {char* member_0; int member_1; } ;
struct cmd2process {int supported_capabilities; } ;





 int subprocess_handshake (struct subprocess_entry*,char*,int*,int *,struct subprocess_capability*,int *) ;

__attribute__((used)) static int start_multi_file_filter_fn(struct subprocess_entry *subprocess)
{
 static int versions[] = {2, 0};
 static struct subprocess_capability capabilities[] = {
  { "clean", 130 },
  { "smudge", 128 },
  { "delay", 129 },
  { ((void*)0), 0 }
 };
 struct cmd2process *entry = (struct cmd2process *)subprocess;
 return subprocess_handshake(subprocess, "git-filter", versions, ((void*)0),
        capabilities,
        &entry->supported_capabilities);
}
