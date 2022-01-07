
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;


 int EBADMSG ;
 int pr_warn (char*) ;

int pkcs8_note_version(void *context, size_t hdrlen,
         unsigned char tag,
         const void *value, size_t vlen)
{
 if (vlen != 1 || ((const u8 *)value)[0] != 0) {
  pr_warn("Unsupported PKCS#8 version\n");
  return -EBADMSG;
 }
 return 0;
}
