
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int _ (char*) ;
 int common_categories ;
 int print_cmd_by_category (int ,int *) ;
 int puts (int ) ;

void list_common_cmds_help(void)
{
 puts(_("These are common Git commands used in various situations:"));
 print_cmd_by_category(common_categories, ((void*)0));
}
