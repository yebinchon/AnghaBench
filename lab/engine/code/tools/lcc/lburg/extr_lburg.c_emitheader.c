
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int time_t ;


 int ctime (int *) ;
 int print (char*,...) ;
 int rcsid ;
 int time (int *) ;

__attribute__((used)) static void emitheader(void) {
 time_t timer = time(((void*)0));

 print("/*\ngenerated at %sby %s\n*/\n", ctime(&timer), rcsid);
 print("static void %Pkids(NODEPTR_TYPE, int, NODEPTR_TYPE[]);\n");
 print("static void %Plabel(NODEPTR_TYPE);\n");
 print("static int %Prule(void*, int);\n\n");
}
