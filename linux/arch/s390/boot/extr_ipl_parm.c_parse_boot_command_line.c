
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int CONFIG_RANDOMIZE_BASE ;
 scalar_t__ IS_ENABLED (int ) ;
 int PAGE_SIZE ;
 int command_line_buf ;
 int early_command_line ;
 scalar_t__ kaslr_enabled ;
 int kstrtobool (char*,int*) ;
 int memory_end ;
 int memory_end_set ;
 int memparse (char*,int *) ;
 int modify_fac_list (char*) ;
 char* next_arg (char*,char**,char**) ;
 int noexec_disabled ;
 int round_down (int ,int ) ;
 int round_up (int ,int ) ;
 int strcmp (char*,char*) ;
 char* strcpy (int ,int ) ;
 int vmalloc_size ;

void parse_boot_command_line(void)
{
 char *param, *val;
 bool enabled;
 char *args;
 int rc;

 kaslr_enabled = IS_ENABLED(CONFIG_RANDOMIZE_BASE);
 args = strcpy(command_line_buf, early_command_line);
 while (*args) {
  args = next_arg(args, &param, &val);

  if (!strcmp(param, "mem") && val) {
   memory_end = round_down(memparse(val, ((void*)0)), PAGE_SIZE);
   memory_end_set = 1;
  }

  if (!strcmp(param, "vmalloc") && val)
   vmalloc_size = round_up(memparse(val, ((void*)0)), PAGE_SIZE);

  if (!strcmp(param, "noexec")) {
   rc = kstrtobool(val, &enabled);
   if (!rc && !enabled)
    noexec_disabled = 1;
  }

  if (!strcmp(param, "facilities") && val)
   modify_fac_list(val);

  if (!strcmp(param, "nokaslr"))
   kaslr_enabled = 0;
 }
}
