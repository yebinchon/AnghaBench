
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int direction; int origin; } ;
typedef TYPE_1__ ray_t ;
typedef int m4x4_t ;


 int m4x4_transform_normal (int const,int ) ;
 int m4x4_transform_point (int const,int ) ;

void ray_transform( ray_t *ray, const m4x4_t matrix ){
 m4x4_transform_point( matrix, ray->origin );
 m4x4_transform_normal( matrix, ray->direction );
}
