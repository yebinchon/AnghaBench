
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned short CRC_XOR_VALUE ;

unsigned short CRC_Value( unsigned short crcvalue ){
 return crcvalue ^ CRC_XOR_VALUE;
}
