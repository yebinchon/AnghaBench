
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int track; } ;


 int DPRINT (char*) ;
 int FDCCMD_SEEK ;
 int FDCREG_CMD ;
 int FDCREG_DATA ;
 int FDC_WRITE (int ,int ) ;
 int MotorOn ;
 int NeedSeek ;
 int SET_IRQ_HANDLER (int (*) (int )) ;
 TYPE_1__ SUD ;
 int finish_fdc_done (int ) ;
 int start_timeout () ;

__attribute__((used)) static void finish_fdc( void )
{
 if (!NeedSeek) {
  finish_fdc_done( 0 );
 }
 else {
  DPRINT(("finish_fdc: dummy seek started\n"));
  FDC_WRITE (FDCREG_DATA, SUD.track);
  SET_IRQ_HANDLER( finish_fdc_done );
  FDC_WRITE (FDCREG_CMD, FDCCMD_SEEK);
  MotorOn = 1;
  start_timeout();



   }
}
