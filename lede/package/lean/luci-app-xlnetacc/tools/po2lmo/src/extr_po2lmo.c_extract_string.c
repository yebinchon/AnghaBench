
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int strlen (char const*) ;

__attribute__((used)) static int extract_string(const char *src, char *dest, int len)
{
 int pos = 0;
 int esc = 0;
 int off = -1;

 for( pos = 0; (pos < strlen(src)) && (pos < len); pos++ )
 {
  if( (off == -1) && (src[pos] == '"') )
  {
   off = pos + 1;
  }
  else if( off >= 0 )
  {
   if( esc == 1 )
   {
    switch (src[pos])
    {
    case '"':
    case '\\':
     off++;
     break;
    }
    dest[pos-off] = src[pos];
    esc = 0;
   }
   else if( src[pos] == '\\' )
   {
    dest[pos-off] = src[pos];
    esc = 1;
   }
   else if( src[pos] != '"' )
   {
    dest[pos-off] = src[pos];
   }
   else
   {
    dest[pos-off] = '\0';
    break;
   }
  }
 }

 return (off > -1) ? strlen(dest) : -1;
}
