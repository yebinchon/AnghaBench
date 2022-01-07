
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int inchar () ;
 int skipbl () ;
 int termch ;

void
getstring(char *s, int size)
{
 int c;

 c = skipbl();
 do {
  if( size > 1 ){
   *s++ = c;
   --size;
  }
  c = inchar();
 } while( c != ' ' && c != '\t' && c != '\n' );
 termch = c;
 *s = 0;
}
