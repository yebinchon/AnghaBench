
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int LookupSymbol (char*) ;
 int MAX_LINE_LENGTH ;
 int atoiNoCap (char*) ;
 int memcpy (char*,char*,int) ;
 char* token ;

__attribute__((used)) static int ParseExpression(void) {

 int i, j;
 char sym[MAX_LINE_LENGTH];
 int v;


 for ( i = ((token[0] == '-') ? 1 : 0) ; i < MAX_LINE_LENGTH ; i++ ) {
  if ( token[i] == '+' || token[i] == '-' || token[i] == 0 ) {
   break;
  }
 }

 memcpy( sym, token, i );
 sym[i] = 0;

 switch (*sym) {

  case '-':
  case '0': case '1': case '2': case '3': case '4':
  case '5': case '6': case '7': case '8': case '9':
   v = atoiNoCap(sym);
   break;
  default:
   v = LookupSymbol(sym);
   break;
 }


 while ( token[i] != 0 ) {
  for ( j = i + 1 ; j < MAX_LINE_LENGTH ; j++ ) {
   if ( token[j] == '+' || token[j] == '-' || token[j] == 0 ) {
    break;
   }
  }

  memcpy( sym, token+i+1, j-i-1 );
  sym[j-i-1] = 0;

  switch (token[i]) {
   case '+':
    v += atoiNoCap(sym);
    break;
   case '-':
    v -= atoiNoCap(sym);
    break;
  }

  i = j;
 }

 return v;
}
