
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int Com_Memcpy (char*,char*,int) ;
 char* StringContainsWord (char*,char*,int ) ;
 int memmove (char*,char*,int) ;
 int qfalse ;
 int strlen (char*) ;

void StringReplaceWords(char *string, char *synonym, char *replacement)
{
 char *str, *str2;


 str = StringContainsWord(string, synonym, qfalse);

 while(str)
 {


  str2 = StringContainsWord(string, replacement, qfalse);
  while(str2)
  {
   if (str2 <= str && str < str2 + strlen(replacement)) break;
   str2 = StringContainsWord(str2+1, replacement, qfalse);
  }
  if (!str2)
  {
   memmove(str + strlen(replacement), str+strlen(synonym), strlen(str+strlen(synonym))+1);

   Com_Memcpy(str, replacement, strlen(replacement));
  }

  str = StringContainsWord(str+strlen(replacement), synonym, qfalse);
 }
}
