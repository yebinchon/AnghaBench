
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char* CG_ConfigString (int ) ;
 int CS_SHADERSTATE ;
 int MAX_QPATH ;
 int strncpy (char*,char const*,int) ;
 void* strstr (char const*,char*) ;
 int trap_R_RemapShader (char*,char*,char*) ;

void CG_ShaderStateChanged(void) {
 char originalShader[MAX_QPATH];
 char newShader[MAX_QPATH];
 char timeOffset[16];
 const char *o;
 char *n,*t;

 o = CG_ConfigString( CS_SHADERSTATE );
 while (o && *o) {
  n = strstr(o, "=");
  if (n && *n) {
   strncpy(originalShader, o, n-o);
   originalShader[n-o] = 0;
   n++;
   t = strstr(n, ":");
   if (t && *t) {
    strncpy(newShader, n, t-n);
    newShader[t-n] = 0;
   } else {
    break;
   }
   t++;
   o = strstr(t, "@");
   if (o) {
    strncpy(timeOffset, t, o-t);
    timeOffset[o-t] = 0;
    o++;
    trap_R_RemapShader( originalShader, newShader, timeOffset );
   }
  } else {
   break;
  }
 }
}
