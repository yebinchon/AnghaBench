
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;


 int unpackInt16 (int*) ;

__attribute__((used)) static int check_header(const uint8_t *header)
{
 return (header[0] == 31 && header[1] == 139 && header[2] == 8 && (header[3] & 4) != 0
   && unpackInt16((uint8_t*)&header[10]) == 6
   && header[12] == 'B' && header[13] == 'C'
   && unpackInt16((uint8_t*)&header[14]) == 2);
}
