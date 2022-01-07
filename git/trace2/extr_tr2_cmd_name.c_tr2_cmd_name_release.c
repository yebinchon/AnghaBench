
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int strbuf_release (int *) ;
 int tr2cmdname_hierarchy ;

void tr2_cmd_name_release(void)
{
 strbuf_release(&tr2cmdname_hierarchy);
}
