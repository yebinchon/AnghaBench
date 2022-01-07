
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef TYPE_1__* Tree ;
struct TYPE_4__ {char* type; } ;
 int assert (char*) ;
 int error (char*,char*,char*,...) ;
 int generic (int) ;

void typeerror(int op, Tree l, Tree r) {
 int i;
 static struct { int op; char *name; } ops[] = {
  {149, "="}, {139, "*"}, {132, "-"},
  {151, "+"}, {128, "-"}, {137, "<<"},
  {135, "%"}, {129, ">>"}, {148, "&"},
  {147, "~"}, {146, "|"}, {145, "^"},
  {143, "/"}, {134, "*"}, {142, "=="},
  {141, ">="}, {140, ">"}, {138, "<="},
  {136, "<"}, {133, "!="}, {150, "&&"},
  {131, "!"}, {130, "||"}, {144, "?:"},
  {0, 0}
 };

 op = generic(op);
 for (i = 0; ops[i].op; i++)
  if (op == ops[i].op)
   break;
 assert(ops[i].name);
 if (r)
  error("operands of %s have illegal types `%t' and `%t'\n",
   ops[i].name, l->type, r->type);
 else
  error("operand of unary %s has illegal type `%t'\n", ops[i].name,
   l->type);
}
