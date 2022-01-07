
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u64 ;


 int DIAG204_CPU_NAME_LEN ;

__attribute__((used)) static inline u64 cpu_id(u8 ctidx, void *diag224_buf)
{
 return *((u64 *)(diag224_buf + (ctidx + 1) * DIAG204_CPU_NAME_LEN));
}
