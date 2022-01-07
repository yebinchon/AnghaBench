
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef scalar_t__ time_t ;


 int TIMESTAMP_MAGIC ;
 int time (scalar_t__*) ;

uint32_t jboot_timestamp(void)
{
 time_t rawtime;
 time(&rawtime);
 return (((uint32_t) rawtime) - TIMESTAMP_MAGIC) >> 2;
}
