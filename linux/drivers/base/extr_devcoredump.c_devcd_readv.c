
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ssize_t ;
typedef int loff_t ;


 int memory_read_from_buffer (char*,size_t,int *,void*,size_t) ;

__attribute__((used)) static ssize_t devcd_readv(char *buffer, loff_t offset, size_t count,
      void *data, size_t datalen)
{
 return memory_read_from_buffer(buffer, count, &offset, data, datalen);
}
