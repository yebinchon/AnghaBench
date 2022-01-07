
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_30__ TYPE_4__ ;
typedef struct TYPE_29__ TYPE_2__ ;
typedef struct TYPE_28__ TYPE_1__ ;


typedef TYPE_2__* Type ;
struct TYPE_30__ {TYPE_2__* type; } ;
struct TYPE_29__ {TYPE_1__* type; int size; } ;
struct TYPE_28__ {int size; } ;



 int Aflag ;






 int GLOBAL ;
 TYPE_2__* enumdcl () ;
 int error (char*,...) ;
 int gettok () ;
 TYPE_2__* inttype ;
 int isconst (TYPE_2__*) ;
 int isqual (TYPE_2__*) ;
 int istypename (int,TYPE_4__*) ;
 int isvolatile (TYPE_2__*) ;
 int level ;
 TYPE_2__* longdouble ;
 TYPE_2__* longlong ;
 TYPE_2__* longtype ;
 TYPE_2__* qual (int const,TYPE_2__*) ;
 TYPE_2__* shorttype ;
 TYPE_2__* signedchar ;
 int src ;
 TYPE_2__* structdcl (int) ;
 int t ;
 TYPE_4__* tsym ;
 TYPE_2__* unqual (TYPE_2__*) ;
 TYPE_2__* unsignedchar ;
 TYPE_2__* unsignedlong ;
 TYPE_2__* unsignedlonglong ;
 TYPE_2__* unsignedshort ;
 TYPE_2__* unsignedtype ;
 int use (TYPE_4__*,int ) ;
 int warning (char*,TYPE_2__*) ;

__attribute__((used)) static Type specifier(int *sclass) {
 int cls, cons, sign, size, type, vol;
 Type ty = ((void*)0);

 cls = vol = cons = sign = size = type = 0;
 if (sclass == ((void*)0))
  cls = 147;
 for (;;) {
  int *p, tt = t;
  switch (t) {
  case 147:
  case 137: if (level <= GLOBAL && cls == 0)
                  error("invalid use of `%k'\n", t);
                 p = &cls; t = gettok(); break;
  case 134: case 142:
  case 132: p = &cls; t = gettok(); break;
  case 145: p = &cons; t = gettok(); break;
  case 128: p = &vol; t = gettok(); break;
  case 135:
  case 130: p = &sign; t = gettok(); break;
  case 138: if (size == 138) {
                         size = 0;
                         tt = 138 +138;
                 }
                 p = &size; t = gettok(); break;
  case 136: p = &size; t = gettok(); break;
  case 129: case 146: case 139: case 141:
  case 144: p = &type; ty = tsym->type;
                            t = gettok(); break;
  case 143: p = &type; ty = enumdcl(); break;
  case 133:
  case 131: p = &type; ty = structdcl(t); break;
  case 140:
   if (istypename(t, tsym) && type == 0
   && sign == 0 && size == 0) {
    use(tsym, src);
    ty = tsym->type;
    if (isqual(ty)
    && ty->size != ty->type->size) {
     ty = unqual(ty);
     if (isconst(tsym->type))
      ty = qual(145, ty);
     if (isvolatile(tsym->type))
      ty = qual(128, ty);
     tsym->type = ty;
    }
    p = &type;
    t = gettok();
   } else
    p = ((void*)0);
   break;
  default: p = ((void*)0);
  }
  if (p == ((void*)0))
   break;
  if (*p)
   error("invalid use of `%k'\n", tt);
  *p = tt;
 }
 if (sclass)
  *sclass = cls;
 if (type == 0) {
  type = 139;
  ty = inttype;
 }
 if ((size == 136 && type != 139)
 || (size == 138 +138 && type != 139)
 || (size == 138 && type != 139 && type != 144)
 || (sign && type != 139 && type != 146))
  error("invalid type specification\n");
 if (type == 146 && sign)
  ty = sign == 130 ? unsignedchar : signedchar;
 else if (size == 136)
  ty = sign == 130 ? unsignedshort : shorttype;
 else if (size == 138 && type == 144)
  ty = longdouble;
 else if (size == 138 +138) {
  ty = sign == 130 ? unsignedlonglong : longlong;
  if (Aflag >= 1)
   warning("`%t' is a non-ANSI type\n", ty);
 } else if (size == 138)
  ty = sign == 130 ? unsignedlong : longtype;
 else if (sign == 130 && type == 139)
  ty = unsignedtype;
 if (cons == 145)
  ty = qual(145, ty);
 if (vol == 128)
  ty = qual(128, ty);
 return ty;
}
