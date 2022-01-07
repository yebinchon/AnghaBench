
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_8__ {TYPE_1__* key; } ;
typedef TYPE_3__ yoml_mapping_element_t ;
struct TYPE_7__ {int scalar; } ;
struct TYPE_6__ {TYPE_2__ data; } ;


 int strcmp (int ,int ) ;
 size_t strlen (int ) ;

__attribute__((used)) static int sort_from_longer_paths(const yoml_mapping_element_t *x, const yoml_mapping_element_t *y)
{
    size_t xlen = strlen(x->key->data.scalar), ylen = strlen(y->key->data.scalar);
    if (xlen < ylen)
        return 1;
    else if (xlen > ylen)
        return -1;

    return strcmp(x->key->data.scalar, y->key->data.scalar);
}
