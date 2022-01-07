
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct zpodd {int zp_ready; } ;
struct ata_device {struct zpodd* zpodd; } ;



bool zpodd_zpready(struct ata_device *dev)
{
 struct zpodd *zpodd = dev->zpodd;
 return zpodd->zp_ready;
}
