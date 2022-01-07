
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u_char ;
struct TYPE_6__ {int adkcon; int dsklen; int * dskptr; int dsksync; } ;
struct TYPE_5__ {TYPE_1__* type; } ;
struct TYPE_4__ {int read_size; } ;


 int ADK_FAST ;
 int ADK_MSBSYNC ;
 int ADK_SETCLR ;
 int ADK_WORDSYNC ;
 int DSKLEN_DMAEN ;
 int MFM_SYNC ;
 scalar_t__ ZTWO_PADDR (int *) ;
 int block_flag ;
 TYPE_3__ custom ;
 int fd_deselect (int) ;
 int fd_select (int) ;
 int get_fdc (int) ;
 scalar_t__ raw_buf ;
 int rel_fdc () ;
 TYPE_2__* unit ;
 int wait_event (int ,int) ;
 int wait_fd_block ;

__attribute__((used)) static void raw_read(int drive)
{
 drive&=3;
 get_fdc(drive);
 wait_event(wait_fd_block, !block_flag);
 fd_select(drive);

 custom.adkcon = ADK_MSBSYNC;
 custom.adkcon = ADK_SETCLR|ADK_WORDSYNC|ADK_FAST;

 custom.dsksync = MFM_SYNC;

 custom.dsklen = 0;
 custom.dskptr = (u_char *)ZTWO_PADDR((u_char *)raw_buf);
 custom.dsklen = unit[drive].type->read_size/sizeof(short) | DSKLEN_DMAEN;
 custom.dsklen = unit[drive].type->read_size/sizeof(short) | DSKLEN_DMAEN;

 block_flag = 1;

 wait_event(wait_fd_block, !block_flag);

 custom.dsklen = 0;
 fd_deselect(drive);
 rel_fdc();
}
