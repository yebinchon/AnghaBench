
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {float sort; int sortedIndex; } ;
typedef TYPE_1__ shader_t ;
struct TYPE_4__ {int numShaders; TYPE_1__** sortedShaders; TYPE_1__** shaders; } ;


 int FixRenderCommandList (int) ;
 TYPE_2__ tr ;

__attribute__((used)) static void SortNewShader( void ) {
 int i;
 float sort;
 shader_t *newShader;

 newShader = tr.shaders[ tr.numShaders - 1 ];
 sort = newShader->sort;

 for ( i = tr.numShaders - 2 ; i >= 0 ; i-- ) {
  if ( tr.sortedShaders[ i ]->sort <= sort ) {
   break;
  }
  tr.sortedShaders[i+1] = tr.sortedShaders[i];
  tr.sortedShaders[i+1]->sortedIndex++;
 }



 FixRenderCommandList( i+1 );

 newShader->sortedIndex = i+1;
 tr.sortedShaders[i+1] = newShader;
}
