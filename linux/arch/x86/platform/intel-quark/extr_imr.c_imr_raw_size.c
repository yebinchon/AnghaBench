
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 size_t IMR_ALIGN ;

__attribute__((used)) static inline size_t imr_raw_size(size_t size)
{
 return size - IMR_ALIGN;
}
