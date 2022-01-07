
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef char* Type ;
struct TYPE_5__ {scalar_t__ scope; char src; int sclass; char* type; int defined; } ;
typedef TYPE_1__* Symbol ;
typedef char Coordinate ;


 int AUTO ;
 int FUNC ;
 int REGISTER ;
 char* atop (char*) ;
 int error (char*,...) ;
 int expr1 (int ) ;
 char gettok () ;
 int identifiers ;
 TYPE_1__* install (char*,int *,scalar_t__,int ) ;
 scalar_t__ isarray (char*) ;
 scalar_t__ isfunc (char*) ;
 scalar_t__ isstruct (char*) ;
 scalar_t__ isvolatile (char*) ;
 scalar_t__ level ;
 TYPE_1__* lookup (char*,int ) ;
 char* ptr (char*) ;
 int stringf (char*,char*) ;
 char t ;
 int warning (char*,char*,int ) ;

__attribute__((used)) static Symbol dclparam(int sclass, char *id, Type ty, Coordinate *pos) {
 Symbol p;

 if (isfunc(ty))
  ty = ptr(ty);
 else if (isarray(ty))
  ty = atop(ty);
 if (sclass == 0)
  sclass = AUTO;
 else if (sclass != REGISTER) {
  error("invalid storage class `%k' for `%t%s\n",
   sclass, ty, stringf(id ? " %s'" : "' parameter", id));
  sclass = AUTO;
 } else if (isvolatile(ty) || isstruct(ty)) {
  warning("register declaration ignored for `%t%s\n",
   ty, stringf(id ? " %s'" : "' parameter", id));
  sclass = AUTO;
 }

 p = lookup(id, identifiers);
 if (p && p->scope == level)
  error("duplicate declaration for `%s' previously declared at %w\n", id, &p->src);

 else
  p = install(id, &identifiers, level, FUNC);
 p->sclass = sclass;
 p->src = *pos;
 p->type = ty;
 p->defined = 1;
 if (t == '=') {
  error("illegal initialization for parameter `%s'\n", id);
  t = gettok();
  (void)expr1(0);
 }
 return p;
}
