
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int COLOR_MAXLEN ;
 int xsnprintf (char*,int ,char*,char const*) ;

__attribute__((used)) static void color_set(char *dst, const char *color_bytes)
{
 xsnprintf(dst, COLOR_MAXLEN, "%s", color_bytes);
}
