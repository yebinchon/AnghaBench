
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ipl_parameter_block {int dummy; } ;
typedef int ssize_t ;


 int LOADPARM_LEN ;
 int reipl_get_ascii_loadparm (char*,struct ipl_parameter_block*) ;
 int sprintf (char*,char*,char*) ;

__attribute__((used)) static ssize_t reipl_generic_loadparm_show(struct ipl_parameter_block *ipb,
        char *page)
{
 char buf[LOADPARM_LEN + 1];

 reipl_get_ascii_loadparm(buf, ipb);
 return sprintf(page, "%s\n", buf);
}
