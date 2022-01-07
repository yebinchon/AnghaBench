
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int EBCASC (char*,int) ;
 int memcpy (char*,char*,int) ;

__attribute__((used)) static void cpascii(char *dst, char *src, int size)
{
 memcpy(dst, src, size);
 EBCASC(dst, size);
}
