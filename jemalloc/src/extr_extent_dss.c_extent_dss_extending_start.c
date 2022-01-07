
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int spin_t ;


 int ATOMIC_ACQ_REL ;
 int ATOMIC_RELAXED ;
 int SPIN_INITIALIZER ;
 scalar_t__ atomic_compare_exchange_weak_b (int *,int*,int,int ,int ) ;
 int dss_extending ;
 int spin_adaptive (int *) ;

__attribute__((used)) static void
extent_dss_extending_start(void) {
 spin_t spinner = SPIN_INITIALIZER;
 while (1) {
  bool expected = 0;
  if (atomic_compare_exchange_weak_b(&dss_extending, &expected,
      1, ATOMIC_ACQ_REL, ATOMIC_RELAXED)) {
   break;
  }
  spin_adaptive(&spinner);
 }
}
