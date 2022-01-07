
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int Q_strncpyz (char*,char const*,int) ;
 char* strrchr (char const*,char) ;

void COM_StripExtension( const char *in, char *out, int destsize )
{
 const char *dot = strrchr(in, '.'), *slash;

 if (dot && (!(slash = strrchr(in, '/')) || slash < dot))
  destsize = (destsize < dot-in+1 ? destsize : dot-in+1);

 if ( in == out && destsize > 1 )
  out[destsize-1] = '\0';
 else
  Q_strncpyz(out, in, destsize);
}
