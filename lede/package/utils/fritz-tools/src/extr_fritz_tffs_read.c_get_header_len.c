
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint16_t ;
struct tffs_entry_header {int len; } ;


 int ntohs (int ) ;
 scalar_t__ swap_bytes ;

__attribute__((used)) static inline uint16_t get_header_len(const struct tffs_entry_header *header)
{
 if (swap_bytes)
  return ntohs(header->len);

 return header->len;
}
