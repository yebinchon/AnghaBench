
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;


 int BUG_ON (int) ;
 int ldm_error (char*,int,int) ;
 int memcpy (int*,int const*,int) ;

__attribute__((used)) static int ldm_get_vstr (const u8 *block, u8 *buffer, int buflen)
{
 int length;

 BUG_ON (!block || !buffer);

 length = block[0];
 if (length >= buflen) {
  ldm_error ("Truncating string %d -> %d.", length, buflen);
  length = buflen - 1;
 }
 memcpy (buffer, block + 1, length);
 buffer[length] = 0;
 return length;
}
