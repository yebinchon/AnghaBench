
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int pbt; } ;
struct TYPE_6__ {TYPE_1__ pb0_hdr; } ;


 int COMMAND_LINE_SIZE ;


 char* early_command_line ;
 TYPE_2__ ipl_block ;
 size_t ipl_block_get_ascii_scpdata (char*,int ,TYPE_2__*) ;
 size_t ipl_block_get_ascii_vmparm (char*,int ,TYPE_2__*) ;
 int memmove (char*,char*,size_t) ;
 size_t strlen (char*) ;

__attribute__((used)) static void append_ipl_block_parm(void)
{
 char *parm, *delim;
 size_t len, rc = 0;

 len = strlen(early_command_line);

 delim = early_command_line + len;
 parm = early_command_line + len + 1;

 switch (ipl_block.pb0_hdr.pbt) {
 case 129:
  rc = ipl_block_get_ascii_vmparm(
   parm, COMMAND_LINE_SIZE - len - 1, &ipl_block);
  break;
 case 128:
  rc = ipl_block_get_ascii_scpdata(
   parm, COMMAND_LINE_SIZE - len - 1, &ipl_block);
  break;
 }
 if (rc) {
  if (*parm == '=')
   memmove(early_command_line, parm + 1, rc);
  else
   *delim = ' ';
 }
}
