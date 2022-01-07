
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int CONSTANTS ;
 int GLOBAL ;
 int checkref ;
 int constants ;
 int doconst ;
 int doextern ;
 int doglobal ;
 int externals ;
 int foreach (int ,int ,int ,int *) ;
 int identifiers ;

void finalize(void) {
 foreach(externals, GLOBAL, doextern, ((void*)0));
 foreach(identifiers, GLOBAL, doglobal, ((void*)0));
 foreach(identifiers, GLOBAL, checkref, ((void*)0));
 foreach(constants, CONSTANTS, doconst, ((void*)0));
}
