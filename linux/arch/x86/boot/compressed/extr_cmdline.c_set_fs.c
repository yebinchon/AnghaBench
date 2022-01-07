
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned long fs ;

__attribute__((used)) static inline void set_fs(unsigned long seg)
{
 fs = seg << 4;
}
