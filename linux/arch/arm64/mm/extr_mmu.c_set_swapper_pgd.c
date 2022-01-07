
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int pgd_t ;


 int WRITE_ONCE (int ,int ) ;
 int __pa_symbol (int *) ;
 int pgd_clear_fixmap () ;
 int * pgd_set_fixmap (int ) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int swapper_pgdir_lock ;

void set_swapper_pgd(pgd_t *pgdp, pgd_t pgd)
{
 pgd_t *fixmap_pgdp;

 spin_lock(&swapper_pgdir_lock);
 fixmap_pgdp = pgd_set_fixmap(__pa_symbol(pgdp));
 WRITE_ONCE(*fixmap_pgdp, pgd);





 pgd_clear_fixmap();
 spin_unlock(&swapper_pgdir_lock);
}
