
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;


 int UNCORE_FREERUNNING_UMASK_START ;

__attribute__((used)) static inline unsigned int uncore_freerunning_type(u64 config)
{
 return ((((config >> 8) - UNCORE_FREERUNNING_UMASK_START) >> 4) & 0xf);
}
