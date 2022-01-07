
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uintmax_t ;
typedef enum object_type { ____Placeholder_object_type } object_type ;


 int OBJ_COMMIT ;
 int OBJ_REF_DELTA ;
 int die (char*,...) ;

int encode_in_pack_object_header(unsigned char *hdr, int hdr_len,
     enum object_type type, uintmax_t size)
{
 int n = 1;
 unsigned char c;

 if (type < OBJ_COMMIT || type > OBJ_REF_DELTA)
  die("bad type %d", type);

 c = (type << 4) | (size & 15);
 size >>= 4;
 while (size) {
  if (n == hdr_len)
   die("object size is too enormous to format");
  *hdr++ = c | 0x80;
  c = size & 0x7f;
  size >>= 7;
  n++;
 }
 *hdr = c;
 return n;
}
