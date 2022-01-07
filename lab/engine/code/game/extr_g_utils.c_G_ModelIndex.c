
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int CS_MODELS ;
 int G_FindConfigstringIndex (char*,int ,int ,int ) ;
 int MAX_MODELS ;
 int qtrue ;

int G_ModelIndex( char *name ) {
 return G_FindConfigstringIndex (name, CS_MODELS, MAX_MODELS, qtrue);
}
