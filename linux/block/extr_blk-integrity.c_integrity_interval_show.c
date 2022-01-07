
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct blk_integrity {int interval_exp; } ;
typedef int ssize_t ;


 int sprintf (char*,char*,int) ;

__attribute__((used)) static ssize_t integrity_interval_show(struct blk_integrity *bi, char *page)
{
 return sprintf(page, "%u\n",
         bi->interval_exp ? 1 << bi->interval_exp : 0);
}
