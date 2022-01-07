
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t u8 ;



__attribute__((used)) static bool printable_utf8 (const u8 *buf, const size_t len)
{


  const int cp_types[256] =
  {
    -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1,
    -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1,
     0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
     0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
     0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
     0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
     0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
     0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
    -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1,
    -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1,
    -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1,
    -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1,
    -1, -1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1,
     1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1,
     2, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 4, 5, 5,
     6, 7, 7, 7, 8, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1
  };



  const size_t cp_lens[9] = { 1, 2, 3, 3, 3, 3, 4, 4, 4 };

  for (size_t pos = 0; pos < len; pos++)
  {
    const u8 c0 = buf[pos];

    const int cp_type = cp_types[c0];

    if (cp_type == -1) return 0;



    const size_t cp_len = cp_lens[cp_type];

    if ((pos + cp_len) > len) return 0;



    if (cp_len >= 2)
    {
      pos++;

      const u8 c1 = buf[pos];

      switch (cp_type)
      {
        case 2: if ((c1 < 0xa0) || (c1 > 0xbf)) return 0; break;
        case 4: if ((c1 < 0x80) || (c1 > 0x9f)) return 0; break;
        case 6: if ((c1 < 0x90) || (c1 > 0xbf)) return 0; break;
        case 8: if ((c1 < 0x80) || (c1 > 0x8f)) return 0; break;
        default: if ((c1 < 0x80) || (c1 > 0xbf)) return 0; break;
      }

      for (size_t j = 2; j < cp_len; j++)
      {
        pos++;

        const u8 cx = buf[pos];

        if ((cx < 0x80) || (cx > 0xbf)) return 0;
      }
    }
  }

  return 1;
}
