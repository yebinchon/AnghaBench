
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct skd_device {int skcomp_cycle; scalar_t__ skcomp_ix; int skcomp_table; } ;


 int SKD_SKCOMP_SIZE ;
 int memset (int ,int ,int ) ;

__attribute__((used)) static void skd_reset_skcomp(struct skd_device *skdev)
{
 memset(skdev->skcomp_table, 0, SKD_SKCOMP_SIZE);

 skdev->skcomp_ix = 0;
 skdev->skcomp_cycle = 1;
}
