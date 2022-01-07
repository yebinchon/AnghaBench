
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct pmf_cmd {int cmdend; int cmdptr; int error; } ;



__attribute__((used)) static u32 pmf_next32(struct pmf_cmd *cmd)
{
 u32 value;
 if ((cmd->cmdend - cmd->cmdptr) < 4) {
  cmd->error = 1;
  return 0;
 }
 value = *((u32 *)cmd->cmdptr);
 cmd->cmdptr += 4;
 return value;
}
