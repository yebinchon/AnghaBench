
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int file; } ;
struct TYPE_3__ {int status; int iFile; int fileName; } ;


 int FMV_LOOPED ;
 int FS_FCloseFile (int ) ;
 int FS_FOpenFileRead (int ,int *,int ) ;
 int FS_Read (int ,int,int ) ;
 int RoQ_init () ;
 TYPE_2__ cin ;
 TYPE_1__* cinTable ;
 size_t currentHandle ;
 int qtrue ;

__attribute__((used)) static void RoQReset( void ) {

 if (currentHandle < 0) return;

 FS_FCloseFile( cinTable[currentHandle].iFile );
 FS_FOpenFileRead (cinTable[currentHandle].fileName, &cinTable[currentHandle].iFile, qtrue);

 FS_Read (cin.file, 16, cinTable[currentHandle].iFile);
 RoQ_init();
 cinTable[currentHandle].status = FMV_LOOPED;
}
