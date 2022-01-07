
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int byte ;


 int mdfour (int *,int *,int) ;

unsigned Com_BlockChecksum (const void *buffer, int length)
{
 int digest[4];
 unsigned val;

 mdfour( (byte *)digest, (byte *)buffer, length );

 val = digest[0] ^ digest[1] ^ digest[2] ^ digest[3];

 return val;
}
