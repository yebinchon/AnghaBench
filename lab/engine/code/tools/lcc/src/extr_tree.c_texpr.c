
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int Tree ;


 int stub1 (int) ;
 int where ;

Tree texpr(Tree (*f)(int), int tok, int a) {
 int save = where;
 Tree p;

 where = a;
 p = (*f)(tok);
 where = save;
 return p;
}
