
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {struct TYPE_4__* verts; } ;
typedef TYPE_1__ mesh_t ;


 int free (TYPE_1__*) ;

void FreeMesh( mesh_t *m ) {
 free( m->verts );
 free( m );
}
