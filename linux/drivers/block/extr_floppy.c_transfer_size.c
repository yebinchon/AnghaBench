
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int sect; } ;


 int SUPBOUND (int,scalar_t__) ;
 TYPE_1__* _floppy ;
 scalar_t__ current_count_sectors ;
 scalar_t__ fsector_t ;

__attribute__((used)) static int transfer_size(int ssize, int max_sector, int max_size)
{
 SUPBOUND(max_sector, fsector_t + max_size);


 max_sector -= (max_sector % _floppy->sect) % ssize;


 current_count_sectors = max_sector - fsector_t;

 return max_sector;
}
