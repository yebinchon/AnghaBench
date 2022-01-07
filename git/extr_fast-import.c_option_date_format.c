
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int WHENSPEC_NOW ;
 int WHENSPEC_RAW ;
 int WHENSPEC_RFC2822 ;
 int die (char*,char const*) ;
 int strcmp (char const*,char*) ;
 int whenspec ;

__attribute__((used)) static void option_date_format(const char *fmt)
{
 if (!strcmp(fmt, "raw"))
  whenspec = WHENSPEC_RAW;
 else if (!strcmp(fmt, "rfc2822"))
  whenspec = WHENSPEC_RFC2822;
 else if (!strcmp(fmt, "now"))
  whenspec = WHENSPEC_NOW;
 else
  die("unknown --date-format argument %s", fmt);
}
