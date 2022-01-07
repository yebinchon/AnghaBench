
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum cmit_fmt { ____Placeholder_cmit_fmt } cmit_fmt ;


 int CMIT_FMT_EMAIL ;
 int CMIT_FMT_MBOXRD ;

__attribute__((used)) static inline int cmit_fmt_is_mail(enum cmit_fmt fmt)
{
 return (fmt == CMIT_FMT_EMAIL || fmt == CMIT_FMT_MBOXRD);
}
