
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int S_CodecCloseStream (int *) ;
 int * s_backgroundStream ;
 scalar_t__* s_rawend ;

void S_Base_StopBackgroundTrack( void ) {
 if(!s_backgroundStream)
  return;
 S_CodecCloseStream(s_backgroundStream);
 s_backgroundStream = ((void*)0);
 s_rawend[0] = 0;
}
