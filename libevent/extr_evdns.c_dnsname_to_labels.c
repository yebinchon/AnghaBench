
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;
typedef int u16 ;
struct dnslabel_table {int dummy; } ;
typedef int off_t ;
typedef scalar_t__ ev_uint8_t ;


 int APPEND16 (int) ;
 int dnslabel_table_add (struct dnslabel_table*,char const* const,int) ;
 int dnslabel_table_get_pos (struct dnslabel_table*,char const*) ;
 int memcpy (scalar_t__* const,char const* const,size_t const) ;
 char* strchr (char const*,char) ;

__attribute__((used)) static off_t
dnsname_to_labels(u8 *const buf, size_t buf_len, off_t j,
      const char *name, const size_t name_len,
      struct dnslabel_table *table) {
 const char *end = name + name_len;
 int ref = 0;
 u16 t_;
 if (name_len > 255) return -2;

 for (;;) {
  const char *const start = name;
  if (table && (ref = dnslabel_table_get_pos(table, name)) >= 0) {
   do { if (j + 2 > (off_t)buf_len) goto overflow; t_ = htons(ref | 0xc000); memcpy(buf + j, &t_, 2); j += 2; } while (0);
   return j;
  }
  name = strchr(name, '.');
  if (!name) {
   const size_t label_len = end - start;
   if (label_len > 63) return -1;
   if ((size_t)(j+label_len+1) > buf_len) return -2;
   if (table) dnslabel_table_add(table, start, j);
   buf[j++] = (ev_uint8_t)label_len;

   memcpy(buf + j, start, label_len);
   j += (int) label_len;
   break;
  } else {

   const size_t label_len = name - start;
   if (label_len > 63) return -1;
   if ((size_t)(j+label_len+1) > buf_len) return -2;
   if (table) dnslabel_table_add(table, start, j);
   buf[j++] = (ev_uint8_t)label_len;

   memcpy(buf + j, start, label_len);
   j += (int) label_len;

   name++;
  }
 }




 if (!j || buf[j-1]) buf[j++] = 0;
 return j;
 overflow:
 return (-2);
}
