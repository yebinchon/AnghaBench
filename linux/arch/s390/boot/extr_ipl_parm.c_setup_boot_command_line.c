
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ARCH_COMMAND_LINE_SIZE ;
 scalar_t__* COMMAND_LINE ;
 int EBCASC (scalar_t__*,int) ;
 int append_ipl_block_parm () ;
 int early_command_line ;
 scalar_t__ has_ebcdic_char (scalar_t__*) ;
 scalar_t__ ipl_block_valid ;
 int is_prot_virt_guest () ;
 int strcpy (int ,int ) ;
 int strim (scalar_t__*) ;

void setup_boot_command_line(void)
{
 COMMAND_LINE[ARCH_COMMAND_LINE_SIZE - 1] = 0;

 if (has_ebcdic_char(COMMAND_LINE))
  EBCASC(COMMAND_LINE, ARCH_COMMAND_LINE_SIZE);

 strcpy(early_command_line, strim(COMMAND_LINE));


 if (!is_prot_virt_guest() && ipl_block_valid)
  append_ipl_block_parm();
}
