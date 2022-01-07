
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int nvram_read_partition (int *,char*,int,unsigned int*,unsigned int*) ;
 int rtas_log_partition ;

int nvram_read_error_log(char *buff, int length,
   unsigned int *err_type, unsigned int *error_log_cnt)
{
 return nvram_read_partition(&rtas_log_partition, buff, length,
      err_type, error_log_cnt);
}
