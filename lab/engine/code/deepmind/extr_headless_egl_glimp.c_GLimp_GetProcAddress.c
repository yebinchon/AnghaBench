
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 void* eglGetProcAddress (char const*) ;

void* GLimp_GetProcAddress(const char* func) { return eglGetProcAddress(func); }
