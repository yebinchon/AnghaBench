
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;


 char* calloc (int,int) ;
 int free (char*) ;
 int pack_uint32 (char*,int) ;
 int write_holder (int,char const*,int) ;

int
broadcast_holder (int fd, const char *buf, int len)
{
  char *p = ((void*)0), *ptr = ((void*)0);

  p = calloc (sizeof (uint32_t) * 3, sizeof (char));

  ptr = p;
  ptr += pack_uint32 (ptr, 0);
  ptr += pack_uint32 (ptr, 0x01);
  ptr += pack_uint32 (ptr, len);

  write_holder (fd, p, sizeof (uint32_t) * 3);
  write_holder (fd, buf, len);
  free (p);

  return 0;
}
