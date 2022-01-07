
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {int hash; int value; TYPE_1__* segment; int name; } ;
typedef TYPE_2__ symbol_t ;
struct TYPE_7__ {scalar_t__ data; struct TYPE_7__* next; } ;
typedef TYPE_3__ hashchain_t ;
struct TYPE_5__ {int segmentBase; } ;


 int CodeError (char*,char*) ;
 int DefineSymbol (char*,int ) ;
 int HashString (char*) ;
 int MAX_LINE_LENGTH ;
 int currentFileIndex ;
 TYPE_3__* hashtable_get (int ,int) ;
 int passNumber ;
 int sprintf (char*,char*,char*,int) ;
 int strcmp (char*,int ) ;
 int symtable ;

__attribute__((used)) static int LookupSymbol( char *sym ) {
 symbol_t *s;
 char expanded[MAX_LINE_LENGTH];
 int hash;
 hashchain_t *hc;

 if ( passNumber == 0 ) {
  return 0;
 }


 if ( sym[0] == '$' ) {
  sprintf( expanded, "%s_%i", sym, currentFileIndex );
  sym = expanded;
 }

 hash = HashString( sym );







 for (hc = hashtable_get(symtable, hash); hc; hc = hc->next) {
  s = (symbol_t*)hc->data;
  if ( (hash == s->hash) && !strcmp(sym, s->name) ) {
   return s->segment->segmentBase + s->value;
  }
 }

 CodeError( "error: symbol %s undefined\n", sym );
 passNumber = 0;
 DefineSymbol( sym, 0 );
 passNumber = 1;
 return 0;
}
