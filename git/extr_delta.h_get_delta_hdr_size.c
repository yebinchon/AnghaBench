
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static inline unsigned long get_delta_hdr_size(const unsigned char **datap,
            const unsigned char *top)
{
 const unsigned char *data = *datap;
 unsigned long cmd, size = 0;
 int i = 0;
 do {
  cmd = *data++;
  size |= (cmd & 0x7f) << i;
  i += 7;
 } while (cmd & 0x80 && data < top);
 *datap = data;
 return size;
}
