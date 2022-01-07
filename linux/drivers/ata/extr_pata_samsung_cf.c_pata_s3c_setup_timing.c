
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned long ulong ;
struct s3c_ide_info {int dummy; } ;
struct ata_timing {int setup; int act8b; int rec8b; } ;



__attribute__((used)) static unsigned long
pata_s3c_setup_timing(struct s3c_ide_info *info, const struct ata_timing *ata)
{
 int t1 = ata->setup;
 int t2 = ata->act8b;
 int t2i = ata->rec8b;
 ulong piotime;

 piotime = ((t2i & 0xff) << 12) | ((t2 & 0xff) << 4) | (t1 & 0xf);

 return piotime;
}
