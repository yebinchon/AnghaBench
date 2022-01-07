
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int length; } ;


 int COMMAND ;
 scalar_t__ CT (int) ;
 scalar_t__ FD_WRITE ;
 int SECTOR ;
 int SECT_PER_TRACK ;
 int SIZECODE ;
 int pr_info (char*,int,int) ;
 TYPE_1__* raw_cmd ;

__attribute__((used)) static void virtualdmabug_workaround(void)
{
 int hard_sectors;
 int end_sector;

 if (CT(COMMAND) == FD_WRITE) {
  COMMAND &= ~0x80;

  hard_sectors = raw_cmd->length >> (7 + SIZECODE);
  end_sector = SECTOR + hard_sectors - 1;
  if (end_sector > SECT_PER_TRACK) {
   pr_info("too many sectors %d > %d\n",
    end_sector, SECT_PER_TRACK);
   return;
  }
  SECT_PER_TRACK = end_sector;


 }
}
