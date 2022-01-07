
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int pgs; } ;
typedef TYPE_1__ sc_t ;


 size_t BITMAP_MAXBITS ;
 size_t PAGE ;
 int assert (int) ;

__attribute__((used)) static void
sc_data_update_sc_slab_size(sc_t *sc, size_t reg_size, size_t pgs_guess) {
 size_t min_pgs = reg_size / PAGE;
 if (reg_size % PAGE != 0) {
  min_pgs++;
 }




 size_t max_pgs = BITMAP_MAXBITS * reg_size / PAGE;

 assert(min_pgs <= max_pgs);
 assert(min_pgs > 0);
 assert(max_pgs >= 1);
 if (pgs_guess < min_pgs) {
  sc->pgs = (int)min_pgs;
 } else if (pgs_guess > max_pgs) {
  sc->pgs = (int)max_pgs;
 } else {
  sc->pgs = (int)pgs_guess;
 }
}
