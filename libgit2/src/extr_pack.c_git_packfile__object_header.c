
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int git_object_t ;


 int GIT_OBJECT_COMMIT ;
 int GIT_OBJECT_REF_DELTA ;
 int assert (int) ;

size_t git_packfile__object_header(unsigned char *hdr, size_t size, git_object_t type)
{
 unsigned char *hdr_base;
 unsigned char c;

 assert(type >= GIT_OBJECT_COMMIT && type <= GIT_OBJECT_REF_DELTA);



 c = (unsigned char)((type << 4) | (size & 15));
 size >>= 4;
 hdr_base = hdr;

 while (size) {
  *hdr++ = c | 0x80;
  c = size & 0x7f;
  size >>= 7;
 }
 *hdr++ = c;

 return (hdr - hdr_base);
}
