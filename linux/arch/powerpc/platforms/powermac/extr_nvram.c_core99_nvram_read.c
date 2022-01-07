
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t ssize_t ;
typedef int loff_t ;


 size_t ENODEV ;
 int NVRAM_SIZE ;
 int memcpy (char*,int *,size_t) ;
 int * nvram_image ;

__attribute__((used)) static ssize_t core99_nvram_read(char *buf, size_t count, loff_t *index)
{
 int i;

 if (nvram_image == ((void*)0))
  return -ENODEV;
 if (*index > NVRAM_SIZE)
  return 0;

 i = *index;
 if (i + count > NVRAM_SIZE)
  count = NVRAM_SIZE - i;

 memcpy(buf, &nvram_image[i], count);
 *index = i + count;
 return count;
}
