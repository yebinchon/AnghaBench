
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int hash; int value; struct TYPE_6__* next; int segment; int name; } ;
typedef TYPE_1__ symbol_t ;


 int CodeError (char*,char*) ;
 int HashString (char*) ;
 int MAX_LINE_LENGTH ;
 int copystring (char*) ;
 int currentFileIndex ;
 int currentSegment ;
 int hashtable_add (int ,int,TYPE_1__*) ;
 scalar_t__ hashtable_symbol_exists (int ,int,char*) ;
 TYPE_1__* lastSymbol ;
 TYPE_1__* malloc (int) ;
 int passNumber ;
 int sprintf (char*,char*,char*,int) ;
 TYPE_1__* symbols ;
 int symtable ;

__attribute__((used)) static void DefineSymbol( char *sym, int value ) {

 symbol_t *s;
 char expanded[MAX_LINE_LENGTH];
 int hash;

 if ( passNumber == 1 ) {
  return;
 }


 if ( sym[0] == '$' ) {
  sprintf( expanded, "%s_%i", sym, currentFileIndex );
  sym = expanded;
 }

 hash = HashString( sym );

 if (hashtable_symbol_exists(symtable, hash, sym)) {
  CodeError( "Multiple definitions for %s\n", sym );
  return;
 }

 s = malloc( sizeof( *s ) );
 s->next = ((void*)0);
 s->name = copystring( sym );
 s->hash = hash;
 s->value = value;
 s->segment = currentSegment;

 hashtable_add(symtable, hash, s);
 if (symbols == 0) {
  lastSymbol = symbols = s;
 } else {
  lastSymbol->next = s;
  lastSymbol = s;
 }
}
