
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
char *BoyerMoore( unsigned char *data, unsigned int dataLength, unsigned char *string, unsigned int strLength )
{
 unsigned int skipTable[256], i;
 unsigned char *search;
 register unsigned char lastChar;

 if (strLength == 0)
  return ((void*)0);

 for (i = 0; i < 256; i++)
  skipTable[i] = strLength;
 search = string;
 i = --strLength;
 do {
  skipTable[*search++] = i;
 } while (i--);
 lastChar = *--search;
 search = data + strLength;
 dataLength -= strLength+(strLength-1);
 while ((int)dataLength > 0 ) {
  unsigned int skip;
  skip = skipTable[*search];
  search += skip;
  dataLength -= skip;
  skip = skipTable[*search];
  search += skip;
  dataLength -= skip;
  skip = skipTable[*search];
  if (*search != lastChar) {
   search += skip;
   dataLength -= skip;
   continue;
  }
  i = strLength;
  do {
   if (i-- == 0) return search;
  } while (*--search == string[i]);
  search += (strLength - i + 1);
  dataLength--;
 }
 return ((void*)0);
}
