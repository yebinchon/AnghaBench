
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int maxs; int mins; } ;
typedef TYPE_1__ tree_t ;


 int ClearBounds (int ,int ) ;
 int memset (TYPE_1__*,int ,int) ;
 TYPE_1__* safe_malloc (int) ;

tree_t *AllocTree( void ){
 tree_t *tree;

 tree = safe_malloc( sizeof( *tree ) );
 memset( tree, 0, sizeof( *tree ) );
 ClearBounds( tree->mins, tree->maxs );

 return tree;
}
