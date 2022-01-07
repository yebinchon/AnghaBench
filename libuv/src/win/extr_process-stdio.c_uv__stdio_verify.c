
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ WORD ;
typedef int BYTE ;


 unsigned int CHILD_STDIO_COUNT (int *) ;
 scalar_t__ CHILD_STDIO_SIZE (unsigned int) ;

int uv__stdio_verify(BYTE* buffer, WORD size) {
  unsigned int count;


  if (buffer == ((void*)0))
    return 0;


  if (size < CHILD_STDIO_SIZE(0))
    return 0;


  count = CHILD_STDIO_COUNT(buffer);
  if (count > 256)
    return 0;


  if (size < CHILD_STDIO_SIZE(count))
    return 0;

  return 1;
}
