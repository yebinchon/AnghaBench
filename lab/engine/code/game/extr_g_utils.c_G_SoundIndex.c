
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int CS_SOUNDS ;
 int G_FindConfigstringIndex (char*,int ,int ,int ) ;
 int MAX_SOUNDS ;
 int qtrue ;

int G_SoundIndex( char *name ) {
 return G_FindConfigstringIndex (name, CS_SOUNDS, MAX_SOUNDS, qtrue);
}
