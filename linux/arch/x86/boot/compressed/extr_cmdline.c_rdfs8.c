
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ addr_t ;


 scalar_t__ fs ;

__attribute__((used)) static inline char rdfs8(addr_t addr)
{
 return *((char *)(fs + addr));
}
