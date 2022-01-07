
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 int PAGE_SIZE ;
 int fls (int) ;
 int get_num_physpages () ;

__attribute__((used)) static inline u32 ltq_calc_bar11mask(void)
{
 u32 mem, bar11mask;


 mem = get_num_physpages() * PAGE_SIZE;
 bar11mask = (0x0ffffff0 & ~((1 << (fls(mem) - 1)) - 1)) | 8;

 return bar11mask;
}
