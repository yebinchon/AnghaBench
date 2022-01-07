
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t ptrdiff_t ;
typedef size_t UInt32 ;
typedef size_t CLzRef ;
typedef scalar_t__ Byte ;



__attribute__((used)) static UInt32 * Hc_GetMatchesSpec(unsigned lenLimit, UInt32 curMatch, UInt32 pos, const Byte *cur, CLzRef *son,
    UInt32 _cyclicBufferPos, UInt32 _cyclicBufferSize, UInt32 cutValue,
    UInt32 *distances, unsigned maxLen)
{
  const Byte *lim = cur + lenLimit;
  son[_cyclicBufferPos] = curMatch;
  do
  {
    UInt32 delta = pos - curMatch;
    if (delta >= _cyclicBufferSize)
      break;
    {
      ptrdiff_t diff;
      curMatch = son[_cyclicBufferPos - delta + ((delta > _cyclicBufferPos) ? _cyclicBufferSize : 0)];
      diff = (ptrdiff_t)0 - delta;
      if (cur[maxLen] == cur[maxLen + diff])
      {
        const Byte *c = cur;
        while (*c == c[diff])
        {
          if (++c == lim)
          {
            distances[0] = (UInt32)(lim - cur);
            distances[1] = delta - 1;
            return distances + 2;
          }
        }
        {
          unsigned len = (unsigned)(c - cur);
          if (maxLen < len)
          {
            maxLen = len;
            distances[0] = (UInt32)len;
            distances[1] = delta - 1;
            distances += 2;
          }
        }
      }
    }
  }
  while (--cutValue);

  return distances;
}
