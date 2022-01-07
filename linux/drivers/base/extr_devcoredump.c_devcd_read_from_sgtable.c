
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct scatterlist {int dummy; } ;
typedef int ssize_t ;
typedef size_t loff_t ;


 int EINVAL ;
 int sg_nents (struct scatterlist*) ;
 int sg_pcopy_to_buffer (struct scatterlist*,int ,char*,size_t,size_t) ;

__attribute__((used)) static ssize_t devcd_read_from_sgtable(char *buffer, loff_t offset,
           size_t buf_len, void *data,
           size_t data_len)
{
 struct scatterlist *table = data;

 if (offset > data_len)
  return -EINVAL;

 if (offset + buf_len > data_len)
  buf_len = data_len - offset;
 return sg_pcopy_to_buffer(table, sg_nents(table), buffer, buf_len,
      offset);
}
