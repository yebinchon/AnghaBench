
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned int CE_STAGESHIFT ;

__attribute__((used)) static inline unsigned create_ce_flags(unsigned stage)
{
 return (stage << CE_STAGESHIFT);
}
