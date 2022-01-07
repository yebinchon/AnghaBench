
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_7__ ;
typedef struct TYPE_13__ TYPE_6__ ;
typedef struct TYPE_12__ TYPE_5__ ;
typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_14__ {int size; } ;
struct TYPE_12__ {char* p; } ;
struct TYPE_8__ {TYPE_5__ v; } ;
struct TYPE_9__ {TYPE_1__ c; } ;
struct TYPE_13__ {TYPE_4__* type; TYPE_2__ u; } ;
struct TYPE_11__ {int size; TYPE_7__* type; } ;
struct TYPE_10__ {int size; } ;






 int assert (int) ;
 scalar_t__ cp ;
 int fprint (int ,char*,...) ;
 int ischar (TYPE_7__*) ;
 int stderr ;
 int t ;
 int token ;
 TYPE_6__* tsym ;
 int vtoa (TYPE_4__*,TYPE_5__) ;
 TYPE_3__* widechar ;

__attribute__((used)) static void printtoken(void) {
 switch (t) {
 case 129: fprint(stderr, " `%s'", token); break;
 case 130:
  fprint(stderr, " `%s'", vtoa(tsym->type, tsym->u.c.v));
  break;
 case 128: {
  int i, n;
  if (ischar(tsym->type->type)) {
   char *s = tsym->u.c.v.p;
   n = tsym->type->size;
   fprint(stderr, " \"");
   for (i = 0; i < 20 && i < n && *s; s++, i++)
    if (*s < ' ' || *s >= 0177)
     fprint(stderr, "\\%o", *s);
    else
     fprint(stderr, "%c", *s);
  } else {
   unsigned int *s = tsym->u.c.v.p;
   assert(tsym->type->type->size == widechar->size);
   n = tsym->type->size/widechar->size;
   fprint(stderr, " L\"");
   for (i = 0; i < 20 && i < n && *s; s++, i++)
    if (*s < ' ' || *s >= 0177)
     fprint(stderr, "\\x%x", *s);
    else
     fprint(stderr, "%c", *s);
  }
  if (i < n)
   fprint(stderr, " ...");
  else
   fprint(stderr, "\"");
  break;
  }
 case 131:
  fprint(stderr, " `%S'", token, (char*)cp - token);
  break;
 case '`': case '\'': fprint(stderr, " \"%k\"", t); break;
 default: fprint(stderr, " `%k'", t);
 }
}
