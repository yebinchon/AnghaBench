
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned char* ftrace_nop_code ;

__attribute__((used)) static unsigned char *ftrace_nop_replace(void)
{
 return ftrace_nop_code;
}
