
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 int BOOTSTRAP_WORDS ;
 int RESUME_VECTOR_ADDR ;
 int mioa701_bootstrap ;
 int * phys_to_virt (int ) ;

__attribute__((used)) static void install_bootstrap(void)
{
 int i;
 u32 *rom_bootstrap = phys_to_virt(RESUME_VECTOR_ADDR);
 u32 *src = &mioa701_bootstrap;

 for (i = 0; i < BOOTSTRAP_WORDS; i++)
  rom_bootstrap[i] = src[i];
}
