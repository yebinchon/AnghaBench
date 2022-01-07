
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 int sprintf (char*,char*,int,int,int,int) ;

__attribute__((used)) static inline char *ipv4_hltos(u32 u, char *s)
{
 static char ss[20];
 if (!s)
  s = ss;
 sprintf(s, "%d.%d.%d.%d",
  (int)(u >> 24) & 0xff, (int)(u >> 16) & 0xff,
  (int)(u >> 8) & 0xff, (int)u & 0xff );
 return s;
}
