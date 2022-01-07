
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int __sync () ;
 int current_cpu_type () ;
 int get_ebase_cpunum () ;
 int r4k_blast_dcache () ;
 int r4k_blast_icache () ;
 int r4k_blast_scache () ;
 int r4k_blast_scache_node (int) ;

__attribute__((used)) static inline void local_r4k___flush_cache_all(void * args)
{
 switch (current_cpu_type()) {
 case 137:
 case 130:
 case 131:
 case 128:
 case 129:
 case 135:
 case 134:
 case 133:
 case 132:





  r4k_blast_scache();
  break;

 case 136:

  r4k_blast_scache_node(get_ebase_cpunum() >> 2);
  break;

 case 138:
  r4k_blast_scache();
  __sync();
  break;

 default:
  r4k_blast_dcache();
  r4k_blast_icache();
  break;
 }
}
