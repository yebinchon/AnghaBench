
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum cmit_fmt { ____Placeholder_cmit_fmt } cmit_fmt ;


 int CMIT_FMT_USERFORMAT ;
 int * user_format ;

int commit_format_is_empty(enum cmit_fmt fmt)
{
 return fmt == CMIT_FMT_USERFORMAT && !*user_format;
}
