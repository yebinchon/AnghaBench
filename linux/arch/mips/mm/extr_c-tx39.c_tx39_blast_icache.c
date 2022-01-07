
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned long TX39_CONF_ICE ;
 int TX39_STOP_STREAMING () ;
 int blast_icache16 () ;
 int local_irq_restore (unsigned long) ;
 int local_irq_save (unsigned long) ;
 unsigned long read_c0_conf () ;
 int write_c0_conf (unsigned long) ;

__attribute__((used)) static inline void tx39_blast_icache(void)
{
 unsigned long flags, config;

 local_irq_save(flags);
 config = read_c0_conf();
 write_c0_conf(config & ~TX39_CONF_ICE);
 TX39_STOP_STREAMING();
 blast_icache16();
 write_c0_conf(config);
 local_irq_restore(flags);
}
