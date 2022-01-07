
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {char const* name; void* opaque; int * comp; int rank; } ;
typedef TYPE_1__ witness_t ;
typedef int witness_rank_t ;
typedef int witness_comp_t ;



void
witness_init(witness_t *witness, const char *name, witness_rank_t rank,
    witness_comp_t *comp, void *opaque) {
 witness->name = name;
 witness->rank = rank;
 witness->comp = comp;
 witness->opaque = opaque;
}
