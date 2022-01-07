
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int PVC_VISIBLE_CHARS ;
 int pvc_write_string (unsigned char const*,int ,int) ;
 int strlen (unsigned char const*) ;

void pvc_dump_string(const unsigned char *str)
{
 int len = strlen(str);

 pvc_write_string(str, 0, 0);
 if (len > PVC_VISIBLE_CHARS)
  pvc_write_string(&str[PVC_VISIBLE_CHARS], 0, 1);
}
