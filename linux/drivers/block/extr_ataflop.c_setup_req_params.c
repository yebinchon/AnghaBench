
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int spt; } ;
struct TYPE_3__ {scalar_t__ error_count; } ;


 int DPRINT (char*) ;
 scalar_t__ READ ;
 int ReqBlock ;
 scalar_t__ ReqBuffer ;
 scalar_t__ ReqCmd ;
 int ReqCnt ;
 scalar_t__ ReqData ;
 int ReqSector ;
 int ReqSide ;
 int ReqTrack ;
 TYPE_2__* UDT ;
 scalar_t__ UseTrackbuffer ;
 TYPE_1__* fd_request ;
 int read_track ;

__attribute__((used)) static void setup_req_params( int drive )
{
 int block = ReqBlock + ReqCnt;

 ReqTrack = block / UDT->spt;
 ReqSector = block - ReqTrack * UDT->spt + 1;
 ReqSide = ReqTrack & 1;
 ReqTrack >>= 1;
 ReqData = ReqBuffer + 512 * ReqCnt;

 if (UseTrackbuffer)
  read_track = (ReqCmd == READ && fd_request->error_count == 0);
 else
  read_track = 0;

 DPRINT(("Request params: Si=%d Tr=%d Se=%d Data=%08lx\n",ReqSide,
   ReqTrack, ReqSector, (unsigned long)ReqData ));
}
