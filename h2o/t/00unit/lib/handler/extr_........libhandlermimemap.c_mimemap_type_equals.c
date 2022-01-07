
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int len; int base; } ;
struct TYPE_7__ {TYPE_1__ mimetype; } ;
struct TYPE_8__ {TYPE_2__ data; } ;
typedef TYPE_3__ h2o_mimemap_type_t ;


 int h2o_memis (int ,int ,int ,int ) ;

__attribute__((used)) static inline int mimemap_type_equals(h2o_mimemap_type_t *x, h2o_mimemap_type_t *y)
{
    return h2o_memis(x->data.mimetype.base, x->data.mimetype.len, y->data.mimetype.base, y->data.mimetype.len);
}
