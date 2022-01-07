
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int memblock_t ;


 char* S_Malloc (scalar_t__) ;
 int emptystring ;
 int * numberstring ;
 int strcpy (char*,char const*) ;
 scalar_t__ strlen (char const*) ;

char *CopyString( const char *in ) {
 char *out;

 if (!in[0]) {
  return ((char *)&emptystring) + sizeof(memblock_t);
 }
 else if (!in[1]) {
  if (in[0] >= '0' && in[0] <= '9') {
   return ((char *)&numberstring[in[0]-'0']) + sizeof(memblock_t);
  }
 }
 out = S_Malloc (strlen(in)+1);
 strcpy (out, in);
 return out;
}
