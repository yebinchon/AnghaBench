
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fast_classifier {int lock; int * exceptions; } ;
typedef size_t fast_classifier_exception_t ;


 struct fast_classifier __fsc ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;

__attribute__((used)) static inline void fast_classifier_incr_exceptions(fast_classifier_exception_t except)
{
 struct fast_classifier *sc = &__fsc;

 spin_lock_bh(&sc->lock);
 sc->exceptions[except]++;
 spin_unlock_bh(&sc->lock);
}
