
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int PAGE_SIZE ;
 unsigned long _ALIGN_DOWN (int ,int ) ;
 unsigned long _ALIGN_UP (int ,int ) ;
 int initrd_end ;
 int initrd_start ;

__attribute__((used)) static inline int overlaps_initrd(unsigned long start, unsigned long size)
{







 return 0;

}
