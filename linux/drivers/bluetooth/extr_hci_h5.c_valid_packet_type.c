
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
__attribute__((used)) static bool valid_packet_type(u8 type)
{
 switch (type) {
 case 130:
 case 129:
 case 128:
 case 131:
 case 132:
  return 1;
 default:
  return 0;
 }
}
