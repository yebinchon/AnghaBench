
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int com_eof ;
 int* com_token ;

char *COM_Parse (char *data)
{
 int c;
 int len;

 len = 0;
 com_token[0] = 0;

 if (!data)
  return ((void*)0);


skipwhite:
 while ( (c = *data) <= ' ')
 {
  if (c == 0)
  {
   com_eof = 1;
   return ((void*)0);
  }
  data++;
 }


 if (c=='/' && data[1] == '/')
 {
  while (*data && *data != '\n')
   data++;
  goto skipwhite;
 }



 if (c == '\"')
 {
  data++;
  do
  {
   c = *data++;
   if (c=='\"')
   {
    com_token[len] = 0;
    return data;
   }
   com_token[len] = c;
   len++;
  } while (1);
 }


 if (c=='{' || c=='}'|| c==')'|| c=='(' || c=='\'' || c==':')
 {
  com_token[len] = c;
  len++;
  com_token[len] = 0;
  return data+1;
 }


 do
 {
  com_token[len] = c;
  data++;
  len++;
  c = *data;
 if (c=='{' || c=='}'|| c==')'|| c=='(' || c=='\'' || c==':')
   break;
 } while (c>32);

 com_token[len] = 0;
 return data;
}
