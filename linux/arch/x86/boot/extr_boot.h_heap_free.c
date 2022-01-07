
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ HEAP ;
 scalar_t__ heap_end ;

__attribute__((used)) static inline bool heap_free(size_t n)
{
 return (int)(heap_end-HEAP) >= (int)n;
}
