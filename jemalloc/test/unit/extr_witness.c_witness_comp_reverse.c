
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int name; int rank; } ;
typedef TYPE_1__ witness_t ;


 int assert (int) ;
 int assert_u_eq (int ,int ,char*) ;
 int strcmp (int ,int ) ;

__attribute__((used)) static int
witness_comp_reverse(const witness_t *a, void *oa, const witness_t *b,
    void *ob) {
 assert_u_eq(a->rank, b->rank, "Witnesses should have equal rank");

 assert(oa == (void *)a);
 assert(ob == (void *)b);

 return -strcmp(a->name, b->name);
}
