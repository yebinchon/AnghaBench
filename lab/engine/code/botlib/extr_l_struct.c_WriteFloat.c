
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int buf ;
typedef int FILE ;


 int Com_sprintf (char*,int,char*,float) ;
 scalar_t__ fprintf (int *,char*,char*) ;
 int snprintf (char*,int,char*,float) ;
 int strlen (char*) ;

int WriteFloat(FILE *fp, float value)
{
 char buf[128];
 int l;




 Com_sprintf(buf, sizeof(buf), "%f", value);

 l = strlen(buf);

 while(l-- > 1)
 {
  if (buf[l] != '0' && buf[l] != '.') break;
  if (buf[l] == '.')
  {
   buf[l] = 0;
   break;
  }
  buf[l] = 0;
 }

 if (fprintf(fp, "%s", buf) < 0) return 0;
 return 1;
}
