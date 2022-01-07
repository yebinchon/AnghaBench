
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint64_t ;
struct TYPE_2__ {int thr_uid; } ;
typedef TYPE_1__ prof_thr_node_t ;


 int hash (int *,int,int,size_t*) ;

__attribute__((used)) static void
prof_thr_node_hash(const void *key, size_t r_hash[2]) {
 const prof_thr_node_t *thr_node = (prof_thr_node_t *)key;
 hash(&thr_node->thr_uid, sizeof(uint64_t), 0x94122f35U, r_hash);
}
