
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ecc_point {int ndigits; int y; int x; } ;


 scalar_t__ vli_is_zero (int ,int ) ;

__attribute__((used)) static bool ecc_point_is_zero(const struct ecc_point *point)
{
 return (vli_is_zero(point->x, point->ndigits) &&
  vli_is_zero(point->y, point->ndigits));
}
