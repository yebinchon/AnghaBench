
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;


 int PVC_VISIBLE_CHARS ;
 int pvc_write_string (unsigned char const*,int,int) ;
 int strlen (unsigned char const*) ;

void pvc_write_string_centered(const unsigned char *str, int line)
{
 int len = strlen(str);
 u8 addr;

 if (len > PVC_VISIBLE_CHARS)
  addr = 0;
 else
  addr = (PVC_VISIBLE_CHARS - strlen(str))/2;

 pvc_write_string(str, addr, line);
}
