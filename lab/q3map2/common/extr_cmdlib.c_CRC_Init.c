
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned short CRC_INIT_VALUE ;

void CRC_Init( unsigned short *crcvalue ){
 *crcvalue = CRC_INIT_VALUE;
}
