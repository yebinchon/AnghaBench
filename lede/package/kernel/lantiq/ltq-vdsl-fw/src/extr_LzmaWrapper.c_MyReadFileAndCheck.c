
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int memcpy (void*,unsigned char*,size_t) ;
 int rpos ;

__attribute__((used)) static int MyReadFileAndCheck(unsigned char *src, void *dest, size_t size)
{
  if (size == 0)
    return 0;
  memcpy(dest, src + rpos, size);
  rpos += size;
  return 1;
}
