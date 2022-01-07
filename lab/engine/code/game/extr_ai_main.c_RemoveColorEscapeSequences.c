
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ Q_IsColorString (char*) ;

void RemoveColorEscapeSequences( char *text ) {
 int i, l;

 l = 0;
 for ( i = 0; text[i]; i++ ) {
  if (Q_IsColorString(&text[i])) {
   i++;
   continue;
  }
  if (text[i] > 0x7E)
   continue;
  text[l++] = text[i];
 }
 text[l] = '\0';
}
