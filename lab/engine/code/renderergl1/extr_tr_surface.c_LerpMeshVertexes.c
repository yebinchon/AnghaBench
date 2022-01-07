
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int md3Surface_t ;
struct TYPE_2__ {scalar_t__ integer; } ;


 int LerpMeshVertexes_altivec (int *,float) ;
 int LerpMeshVertexes_scalar (int *,float) ;
 TYPE_1__* com_altivec ;

__attribute__((used)) static void LerpMeshVertexes(md3Surface_t *surf, float backlerp)
{







 LerpMeshVertexes_scalar( surf, backlerp );
}
