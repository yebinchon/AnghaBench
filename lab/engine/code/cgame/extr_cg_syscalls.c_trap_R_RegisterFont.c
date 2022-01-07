
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int fontInfo_t ;


 int CG_R_REGISTERFONT ;
 int syscall (int ,char const*,int,int *) ;

void trap_R_RegisterFont(const char *fontName, int pointSize, fontInfo_t *font) {
 syscall(CG_R_REGISTERFONT, fontName, pointSize, font );
}
