
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned long MAX_SCORE ;

int parse_rename_score(const char **cp_p)
{
 unsigned long num, scale;
 int ch, dot;
 const char *cp = *cp_p;

 num = 0;
 scale = 1;
 dot = 0;
 for (;;) {
  ch = *cp;
  if ( !dot && ch == '.' ) {
   scale = 1;
   dot = 1;
  } else if ( ch == '%' ) {
   scale = dot ? scale*100 : 100;
   cp++;
   break;
  } else if ( ch >= '0' && ch <= '9' ) {
   if ( scale < 100000 ) {
    scale *= 10;
    num = (num*10) + (ch-'0');
   }
  } else {
   break;
  }
  cp++;
 }
 *cp_p = cp;




 return (int)((num >= scale) ? MAX_SCORE : (MAX_SCORE * num / scale));
}
