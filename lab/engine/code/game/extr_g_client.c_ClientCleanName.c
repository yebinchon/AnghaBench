
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ ColorIndex (char const) ;
 char Q_COLOR_ESCAPE ;
 scalar_t__ Q_IsColorString (char*) ;
 int Q_strncpyz (char*,char*,int) ;

__attribute__((used)) static void ClientCleanName(const char *in, char *out, int outSize)
{
 int outpos = 0, colorlessLen = 0, spaces = 0;


 for(; *in == ' '; in++);

 for(; *in && outpos < outSize - 1; in++)
 {
  out[outpos] = *in;

  if(*in == ' ')
  {

   if(spaces > 2)
    continue;

   spaces++;
  }
  else if(outpos > 0 && out[outpos - 1] == Q_COLOR_ESCAPE)
  {
   if(Q_IsColorString(&out[outpos - 1]))
   {
    colorlessLen--;

    if(ColorIndex(*in) == 0)
    {


     outpos--;
     continue;
    }
   }
   else
   {
    spaces = 0;
    colorlessLen++;
   }
  }
  else
  {
   spaces = 0;
   colorlessLen++;
  }

  outpos++;
 }

 out[outpos] = '\0';


 if( *out == '\0' || colorlessLen == 0)
  Q_strncpyz(out, "UnnamedPlayer", outSize );
}
