
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ key; int magic; } ;
typedef TYPE_1__ node_t ;


 int NODE_MAGIC ;
 int assert_u32_eq (int ,int ,char*) ;

__attribute__((used)) static int
node_cmp(const node_t *a, const node_t *b) {
 int ret;

 assert_u32_eq(a->magic, NODE_MAGIC, "Bad magic");
 assert_u32_eq(b->magic, NODE_MAGIC, "Bad magic");

 ret = (a->key > b->key) - (a->key < b->key);
 if (ret == 0) {




  ret = (((uintptr_t)a) > ((uintptr_t)b))
      - (((uintptr_t)a) < ((uintptr_t)b));
 }
 return ret;
}
