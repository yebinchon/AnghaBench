
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int mtcr (char*,unsigned int) ;

__attribute__((used)) static inline void cache_op_line(unsigned long i, unsigned int val)
{
 mtcr("cr22", i);
 mtcr("cr17", val);
}
