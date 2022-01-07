
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int lhscount; struct TYPE_3__* link; } ;
typedef TYPE_1__* Nonterm ;


 int print (char*,...) ;

__attribute__((used)) static void emitstruct(Nonterm nts, int ntnumber) {
 print("struct %Pstate {\n%1short cost[%d];\n%1struct {\n", ntnumber + 1);
 for ( ; nts; nts = nts->link) {
  int n = 1, m = nts->lhscount;
  while ((m >>= 1) != 0)
   n++;
  print("%2unsigned int %P%S:%d;\n", nts, n);
 }
 print("%1} rule;\n};\n\n");
}
