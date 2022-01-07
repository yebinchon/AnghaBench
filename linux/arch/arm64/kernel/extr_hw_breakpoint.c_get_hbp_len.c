
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
__attribute__((used)) static int get_hbp_len(u8 hbp_len)
{
 unsigned int len_in_bytes = 0;

 switch (hbp_len) {
 case 135:
  len_in_bytes = 1;
  break;
 case 134:
  len_in_bytes = 2;
  break;
 case 133:
  len_in_bytes = 3;
  break;
 case 132:
  len_in_bytes = 4;
  break;
 case 131:
  len_in_bytes = 5;
  break;
 case 130:
  len_in_bytes = 6;
  break;
 case 129:
  len_in_bytes = 7;
  break;
 case 128:
  len_in_bytes = 8;
  break;
 }

 return len_in_bytes;
}
