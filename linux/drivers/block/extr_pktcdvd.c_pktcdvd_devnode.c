
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int umode_t ;
struct gendisk {int disk_name; } ;


 int GFP_KERNEL ;
 char* kasprintf (int ,char*,int ) ;

__attribute__((used)) static char *pktcdvd_devnode(struct gendisk *gd, umode_t *mode)
{
 return kasprintf(GFP_KERNEL, "pktcdvd/%s", gd->disk_name);
}
