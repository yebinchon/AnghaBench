
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int data; } ;
typedef TYPE_1__ BinaryTree ;


 int _pico_free (int ) ;

void binarytree_clear(BinaryTree* self) {
 _pico_free(self->data);
}
