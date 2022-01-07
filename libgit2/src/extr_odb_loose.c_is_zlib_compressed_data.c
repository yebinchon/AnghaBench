
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static int is_zlib_compressed_data(unsigned char *data, size_t data_len)
{
 unsigned int w;

 if (data_len < 2)
  return 0;

 w = ((unsigned int)(data[0]) << 8) + data[1];
 return (data[0] & 0x8F) == 0x08 && !(w % 31);
}
