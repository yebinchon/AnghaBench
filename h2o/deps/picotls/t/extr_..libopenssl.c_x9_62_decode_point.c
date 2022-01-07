
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int len; int base; } ;
typedef TYPE_1__ ptls_iovec_t ;
typedef int EC_POINT ;
typedef int EC_GROUP ;
typedef int BN_CTX ;


 int EC_POINT_free (int *) ;
 int * EC_POINT_new (int const*) ;
 int EC_POINT_oct2point (int const*,int *,int ,int ,int *) ;

__attribute__((used)) static EC_POINT *x9_62_decode_point(const EC_GROUP *group, ptls_iovec_t vec, BN_CTX *bn_ctx)
{
    EC_POINT *point = ((void*)0);

    if ((point = EC_POINT_new(group)) == ((void*)0))
        return ((void*)0);
    if (!EC_POINT_oct2point(group, point, vec.base, vec.len, bn_ctx)) {
        EC_POINT_free(point);
        return ((void*)0);
    }

    return point;
}
