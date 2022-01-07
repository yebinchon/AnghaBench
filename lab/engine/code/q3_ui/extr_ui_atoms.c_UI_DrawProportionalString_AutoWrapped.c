
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vec4_t ;
typedef int buf ;


 int Q_strncpyz (char*,char const*,int) ;
 int UI_DrawProportionalString (int,int,char*,int,int ) ;
 float UI_ProportionalSizeScale (int) ;
 float UI_ProportionalStringWidth (char*) ;

void UI_DrawProportionalString_AutoWrapped( int x, int y, int xmax, int ystep, const char* str, int style, vec4_t color ) {
 int width;
 char *s1,*s2,*s3;
 char c_bcp;
 char buf[1024];
 float sizeScale;

 if (!str || str[0]=='\0')
  return;

 sizeScale = UI_ProportionalSizeScale( style );

 Q_strncpyz(buf, str, sizeof(buf));
 s1 = s2 = s3 = buf;

 while (1) {
  do {
   s3++;
  } while (*s3!=' ' && *s3!='\0');
  c_bcp = *s3;
  *s3 = '\0';
  width = UI_ProportionalStringWidth(s1) * sizeScale;
  *s3 = c_bcp;
  if (width > xmax) {
   if (s1==s2)
   {

    s2 = s3;
   }
   *s2 = '\0';
   UI_DrawProportionalString(x, y, s1, style, color);
   y += ystep;
   if (c_bcp == '\0')
      {




        s2++;
        if (*s2 != '\0')
          UI_DrawProportionalString(x, y, s2, style, color);
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
    UI_DrawProportionalString(x, y, s1, style, color);
    break;
   }
  }
 }
}
