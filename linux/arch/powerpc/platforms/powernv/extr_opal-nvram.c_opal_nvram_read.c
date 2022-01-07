
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t ssize_t ;
typedef scalar_t__ s64 ;
typedef int loff_t ;


 size_t EIO ;
 scalar_t__ OPAL_SUCCESS ;
 int __pa (char*) ;
 int nvram_size ;
 scalar_t__ opal_read_nvram (int ,size_t,int) ;

__attribute__((used)) static ssize_t opal_nvram_read(char *buf, size_t count, loff_t *index)
{
 s64 rc;
 int off;

 if (*index >= nvram_size)
  return 0;
 off = *index;
 if ((off + count) > nvram_size)
  count = nvram_size - off;
 rc = opal_read_nvram(__pa(buf), count, off);
 if (rc != OPAL_SUCCESS)
  return -EIO;
 *index += count;
 return count;
}
