
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;


 int memtrace_size ;

__attribute__((used)) static int memtrace_enable_get(void *data, u64 *val)
{
 *val = memtrace_size;
 return 0;
}
