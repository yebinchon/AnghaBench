
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ qboolean ;


 int MAX_TOKEN_CHARS ;
 char* SkipWhitespace (char*,scalar_t__*) ;
 scalar_t__ com_lines ;
 char* com_token ;
 scalar_t__ com_tokenline ;
 scalar_t__ qfalse ;

char *COM_ParseExt( char **data_p, qboolean allowLineBreaks )
{
 int c = 0, len;
 qboolean hasNewLines = qfalse;
 char *data;

 data = *data_p;
 len = 0;
 com_token[0] = 0;
 com_tokenline = 0;


 if ( !data )
 {
  *data_p = ((void*)0);
  return com_token;
 }

 while ( 1 )
 {

  data = SkipWhitespace( data, &hasNewLines );
  if ( !data )
  {
   *data_p = ((void*)0);
   return com_token;
  }
  if ( hasNewLines && !allowLineBreaks )
  {
   *data_p = data;
   return com_token;
  }

  c = *data;


  if ( c == '/' && data[1] == '/' )
  {
   data += 2;
   while (*data && *data != '\n') {
    data++;
   }
  }

  else if ( c=='/' && data[1] == '*' )
  {
   data += 2;
   while ( *data && ( *data != '*' || data[1] != '/' ) )
   {
    if ( *data == '\n' )
    {
     com_lines++;
    }
    data++;
   }
   if ( *data )
   {
    data += 2;
   }
  }
  else
  {
   break;
  }
 }


 com_tokenline = com_lines;


 if (c == '\"')
 {
  data++;
  while (1)
  {
   c = *data++;
   if (c=='\"' || !c)
   {
    com_token[len] = 0;
    *data_p = ( char * ) data;
    return com_token;
   }
   if ( c == '\n' )
   {
    com_lines++;
   }
   if (len < MAX_TOKEN_CHARS - 1)
   {
    com_token[len] = c;
    len++;
   }
  }
 }


 do
 {
  if (len < MAX_TOKEN_CHARS - 1)
  {
   com_token[len] = c;
   len++;
  }
  data++;
  c = *data;
 } while (c>32);

 com_token[len] = 0;

 *data_p = ( char * ) data;
 return com_token;
}
