
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t byte ;


 size_t* s_gammatable ;

void R_GammaCorrect( byte *buffer, int bufSize ) {
 int i;

 for ( i = 0; i < bufSize; i++ ) {
  buffer[i] = s_gammatable[buffer[i]];
 }
}
