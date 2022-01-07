
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int print (char*,int,char*) ;
 int sourceFile ;
 int sourceLine ;
 char* sourcePtr ;

__attribute__((used)) static void PrintToSourceLine( int line ) {
 int c;

 if ( !sourceFile ) {
  return;
 }
 while ( sourceLine <= line ) {
  int i;

  for ( i = 0 ; sourcePtr[i] && sourcePtr[i] != '\n' ; i++ ) {
  }
  c = sourcePtr[i];
  if ( c == '\n' ) {
   sourcePtr[i] = 0;
  }
  print( ";%d:%s\n", sourceLine, sourcePtr );
  if ( c == 0 ) {
   sourcePtr += i;
  } else {
   sourcePtr += i+1;
  }
  sourceLine++;
 }
}
