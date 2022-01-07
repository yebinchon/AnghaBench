
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int CheckSum ;
 scalar_t__ FALSE ;
 int RecLength ;
 scalar_t__ RecStart ;
 int SEEK_CUR ;
 int SEEK_SET ;
 int binOut32 (int) ;
 scalar_t__ debug ;
 int dumpfTell (char*,int) ;
 int fOut ;
 int fseek (int ,long,int ) ;
 long ftell (int ) ;
 int printf (char*,int,int,...) ;
 scalar_t__ verbose ;

void binRecEnd(void)
{
    long RecEnd;

    if (!RecStart)
    {
        return;
    }

    RecStart = FALSE;


    RecEnd = ftell(fOut);

    if (debug)
          printf("[RecEnd  ] CheckSum[0x%08X] Length[%4d] Length[0x%X] RecEnd[0x%08lX]\n",
                CheckSum, RecLength, RecLength, RecEnd);

    fseek( fOut, -((long) RecLength), SEEK_CUR);

    dumpfTell("Data   ", -1);

    fseek( fOut, -4, SEEK_CUR);

    dumpfTell("Address   ", -1);

    fseek( fOut, -4, SEEK_CUR);

    dumpfTell("Length   ", -1);

    binOut32( RecLength );

    fseek( fOut, RecEnd, SEEK_SET);

    CheckSum += RecLength;

    CheckSum = ~CheckSum + 1;

    binOut32( CheckSum );

    if (verbose)
        printf("[Created Record of %d Bytes with CheckSum [0x%8X]\n", RecLength, CheckSum);
}
