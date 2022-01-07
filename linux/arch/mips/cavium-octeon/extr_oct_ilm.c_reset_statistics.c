
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;


 int reset_stats ;

__attribute__((used)) static int reset_statistics(void *data, u64 value)
{
 reset_stats = 1;
 return 0;
}
