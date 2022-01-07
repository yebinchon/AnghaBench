
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;



__attribute__((used)) static void ata_id_string(const u16 *id, unsigned char *s, unsigned int ofs,
     unsigned int len)
{
 unsigned int c;

 while (len > 0) {
  c = id[ofs] >> 8;
  *s = c;
  s++;

  c = id[ofs] & 0xff;
  *s = c;
  s++;

  ofs++;
  len -= 2;
 }
}
