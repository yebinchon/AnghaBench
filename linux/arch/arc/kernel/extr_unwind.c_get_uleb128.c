
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int value ;
typedef unsigned int uleb128_t ;
typedef int u8 ;



__attribute__((used)) static uleb128_t get_uleb128(const u8 **pcur, const u8 *end)
{
 const u8 *cur = *pcur;
 uleb128_t value;
 unsigned shift;

 for (shift = 0, value = 0; cur < end; shift += 7) {
  if (shift + 7 > 8 * sizeof(value)
      && (*cur & 0x7fU) >= (1U << (8 * sizeof(value) - shift))) {
   cur = end + 1;
   break;
  }
  value |= (uleb128_t) (*cur & 0x7f) << shift;
  if (!(*cur++ & 0x80))
   break;
 }
 *pcur = cur;

 return value;
}
