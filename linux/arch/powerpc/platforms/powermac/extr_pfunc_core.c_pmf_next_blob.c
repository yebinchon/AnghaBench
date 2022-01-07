
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pmf_cmd {int cmdend; int cmdptr; int error; } ;



__attribute__((used)) static const void* pmf_next_blob(struct pmf_cmd *cmd, int count)
{
 const void *value;
 if ((cmd->cmdend - cmd->cmdptr) < count) {
  cmd->error = 1;
  return ((void*)0);
 }
 value = cmd->cmdptr;
 cmd->cmdptr += count;
 return value;
}
