
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct blk_integrity {TYPE_1__* profile; } ;
typedef int ssize_t ;
struct TYPE_2__ {char* name; } ;


 int sprintf (char*,char*,...) ;

__attribute__((used)) static ssize_t integrity_format_show(struct blk_integrity *bi, char *page)
{
 if (bi->profile && bi->profile->name)
  return sprintf(page, "%s\n", bi->profile->name);
 else
  return sprintf(page, "none\n");
}
