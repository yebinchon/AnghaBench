
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int glIndex_t ;


 int BUFFER_OFFSET (int) ;
 int GL_INDEX_TYPE ;
 int GL_TRIANGLES ;
 int qglDrawElements (int ,int,int ,int ) ;

void R_DrawElements( int numIndexes, int firstIndex )
{
 qglDrawElements(GL_TRIANGLES, numIndexes, GL_INDEX_TYPE, BUFFER_OFFSET(firstIndex * sizeof(glIndex_t)));
}
