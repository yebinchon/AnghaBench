
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ EOF ;
 unsigned short strlen (char const*) ;
 scalar_t__ xStrdup (char*) ;

char* String_getToken(const char* line, const unsigned short int numMatch) {
   const unsigned short int len = strlen(line);
   char inWord = 0;
   unsigned short int count = 0;
   char match[50];

   unsigned short int foundCount = 0;

   for (unsigned short int i = 0; i < len; i++) {
      char lastState = inWord;
      inWord = line[i] == ' ' ? 0:1;

      if (lastState == 0 && inWord == 1)
         count++;

      if(inWord == 1){
         if (count == numMatch && line[i] != ' ' && line[i] != '\0' && line[i] != '\n' && line[i] != (char)EOF) {
            match[foundCount] = line[i];
            foundCount++;
         }
      }
   }

   match[foundCount] = '\0';
   return((char*)xStrdup(match));
}
