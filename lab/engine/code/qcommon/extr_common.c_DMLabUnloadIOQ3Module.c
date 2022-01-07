
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int free (int ) ;
 int mainzone ;
 int s_hunkDataRaw ;
 int smallzone ;

void DMLabUnloadIOQ3Module( void )
{
 free(mainzone);
 free(smallzone);
 free(s_hunkDataRaw);
}
