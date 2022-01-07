
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct octeon_cop2_state {int dummy; } ;


 unsigned long ST0_CU2 ;
 int local_irq_restore (unsigned long) ;
 int local_irq_save (unsigned long) ;
 int octeon_cop2_restore (struct octeon_cop2_state*) ;
 int preempt_enable () ;
 unsigned long read_c0_status () ;
 int write_c0_status (unsigned long) ;

void octeon_crypto_disable(struct octeon_cop2_state *state,
      unsigned long crypto_flags)
{
 unsigned long flags;

 local_irq_save(flags);
 if (crypto_flags & ST0_CU2)
  octeon_cop2_restore(state);
 else
  write_c0_status(read_c0_status() & ~ST0_CU2);
 local_irq_restore(flags);
 preempt_enable();
}
