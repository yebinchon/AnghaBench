
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u16 ;
struct chrp_header {int signature; int* data; int len; } ;



__attribute__((used)) static u8 chrp_checksum(struct chrp_header* hdr)
{
 u8 *ptr;
 u16 sum = hdr->signature;
 for (ptr = (u8 *)&hdr->len; ptr < hdr->data; ptr++)
  sum += *ptr;
 while (sum > 0xFF)
  sum = (sum & 0xFF) + (sum>>8);
 return sum;
}
