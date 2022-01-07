
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8_t ;
typedef int u16_t ;



__attribute__((used)) static u16_t
chksum(u16_t sum, const u8_t *data, u16_t len)
{
 u16_t t;
 const u8_t *dataptr;
 const u8_t *last_byte;

 dataptr = data;
 last_byte = data + len - 1;

 while(dataptr < last_byte) {
  t = (dataptr[0] << 8) + dataptr[1];
  sum += t;
  if(sum < t) {
   sum++;
  }
  dataptr += 2;
 }

 if(dataptr == last_byte) {
  t = (dataptr[0] << 8) + 0;
  sum += t;
  if(sum < t) {
   sum++;
  }
 }


 return sum;
}
