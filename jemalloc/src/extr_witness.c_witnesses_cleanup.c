
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int witness_tsd_t ;


 int witness_assert_lockless (int ) ;
 int witness_tsd_tsdn (int *) ;

void
witnesses_cleanup(witness_tsd_t *witness_tsd) {
 witness_assert_lockless(witness_tsd_tsdn(witness_tsd));


}
