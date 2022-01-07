
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct object_info {int* typep; unsigned long* sizep; scalar_t__ type_name; } ;


 unsigned int OBJECT_INFO_ALLOW_UNKNOWN_TYPE ;
 int _ (char*) ;
 int die (int ) ;
 int strbuf_add (scalar_t__,char const*,int) ;
 int type_from_string_gently (char const*,int,int) ;

__attribute__((used)) static int parse_loose_header_extended(const char *hdr, struct object_info *oi,
           unsigned int flags)
{
 const char *type_buf = hdr;
 unsigned long size;
 int type, type_len = 0;





 for (;;) {
  char c = *hdr++;
  if (!c)
   return -1;
  if (c == ' ')
   break;
  type_len++;
 }

 type = type_from_string_gently(type_buf, type_len, 1);
 if (oi->type_name)
  strbuf_add(oi->type_name, type_buf, type_len);





 if ((flags & OBJECT_INFO_ALLOW_UNKNOWN_TYPE) && (type < 0))
  type = 0;
 else if (type < 0)
  die(_("invalid object type"));
 if (oi->typep)
  *oi->typep = type;





 size = *hdr++ - '0';
 if (size > 9)
  return -1;
 if (size) {
  for (;;) {
   unsigned long c = *hdr - '0';
   if (c > 9)
    break;
   hdr++;
   size = size * 10 + c;
  }
 }

 if (oi->sizep)
  *oi->sizep = size;




 return *hdr ? -1 : type;
}
