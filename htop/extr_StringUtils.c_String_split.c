
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char* strchr (char const*,char) ;
 int strlen (char const*) ;
 int strncpy (char*,char const*,int) ;
 char** xCalloc (int const,int) ;
 char* xMalloc (int) ;
 char** xRealloc (char**,int) ;

char** String_split(const char* s, char sep, int* n) {
   *n = 0;
   const int rate = 10;
   char** out = xCalloc(rate, sizeof(char*));
   int ctr = 0;
   int blocks = rate;
   char* where;
   while ((where = strchr(s, sep)) != ((void*)0)) {
      int size = where - s;
      char* token = xMalloc(size + 1);
      strncpy(token, s, size);
      token[size] = '\0';
      out[ctr] = token;
      ctr++;
      if (ctr == blocks) {
         blocks += rate;
         out = (char**) xRealloc(out, sizeof(char*) * blocks);
      }
      s += size + 1;
   }
   if (s[0] != '\0') {
      int size = strlen(s);
      char* token = xMalloc(size + 1);
      strncpy(token, s, size + 1);
      out[ctr] = token;
      ctr++;
   }
   out = xRealloc(out, sizeof(char*) * (ctr + 1));
   out[ctr] = ((void*)0);
   *n = ctr;
   return out;
}
