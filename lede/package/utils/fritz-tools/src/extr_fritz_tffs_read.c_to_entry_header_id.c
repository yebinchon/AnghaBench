
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef int uint16_t ;


 int ntohl (int) ;
 scalar_t__ swap_bytes ;

__attribute__((used)) static inline uint16_t to_entry_header_id(uint32_t name_id)
{
 if (swap_bytes)
  return ntohl(name_id) & 0xffff;

 return name_id & 0xffff;
}
