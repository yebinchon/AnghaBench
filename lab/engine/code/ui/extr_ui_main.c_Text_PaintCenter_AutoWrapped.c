
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vec4_t ;
typedef int buf ;


 int Q_strncpyz (char*,char const*,int) ;
 int Text_PaintCenter (float,float,float,int ,char*,float) ;
 int Text_Width (char*,float,int ) ;

void Text_PaintCenter_AutoWrapped(float x, float y, float xmax, float ystep, float scale, vec4_t color, const char *str, float adjust) {
 int width;
 char *s1,*s2,*s3;
 char c_bcp;
 char buf[1024];

 if (!str || str[0]=='\0')
  return;

 Q_strncpyz(buf, str, sizeof(buf));
 s1 = s2 = s3 = buf;

 while (1) {
  do {
   s3++;
  } while (*s3!=' ' && *s3!='\0');
  c_bcp = *s3;
  *s3 = '\0';
  width = Text_Width(s1, scale, 0);
  *s3 = c_bcp;
  if (width > xmax) {
   if (s1==s2)
   {

    s2 = s3;
   }
   *s2 = '\0';
   Text_PaintCenter(x, y, scale, color, s1, adjust);
   y += ystep;
   if (c_bcp == '\0')
      {




        s2++;
        if (*s2 != '\0')
          Text_PaintCenter(x, y, scale, color, s2, adjust);
        break;
      }
   s2++;
   s1 = s2;
   s3 = s2;
  }
  else
  {
   s2 = s3;
   if (c_bcp == '\0')
   {
    Text_PaintCenter(x, y, scale, color, s1, adjust);
    break;
   }
  }
 }
}
