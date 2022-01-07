
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int CodeError (char*) ;
 int MAX_LINE_LENGTH ;
 int currentFileLine ;
 scalar_t__* lineBuffer ;
 scalar_t__ lineParseOffset ;
 int memcpy (scalar_t__*,char*,int) ;
 scalar_t__* token ;

__attribute__((used)) static char *ExtractLine( char *data ) {







 char *p, *q;

 currentFileLine++;

 lineParseOffset = 0;
 token[0] = 0;
 *lineBuffer = 0;

 p = q = data;
 if (!*q) {
  return ((void*)0);
 }

 for ( ; !((*p == 0) || (*p == '\n')); p++) ;

 if ((p - q) >= MAX_LINE_LENGTH) {
  CodeError( "MAX_LINE_LENGTH" );
  return data;
 }

 memcpy( lineBuffer, data, (p - data) );
 lineBuffer[(p - data)] = 0;
 p += (*p == '\n') ? 1 : 0;
 return p;
}
