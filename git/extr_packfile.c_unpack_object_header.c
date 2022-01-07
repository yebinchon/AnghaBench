
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct packed_git {int dummy; } ;
struct pack_window {int dummy; } ;
typedef unsigned long off_t ;
typedef enum object_type { ____Placeholder_object_type } object_type ;


 int OBJ_BAD ;
 unsigned long unpack_object_header_buffer (unsigned char*,unsigned long,int*,unsigned long*) ;
 unsigned char* use_pack (struct packed_git*,struct pack_window**,unsigned long,unsigned long*) ;

int unpack_object_header(struct packed_git *p,
    struct pack_window **w_curs,
    off_t *curpos,
    unsigned long *sizep)
{
 unsigned char *base;
 unsigned long left;
 unsigned long used;
 enum object_type type;







 base = use_pack(p, w_curs, *curpos, &left);
 used = unpack_object_header_buffer(base, left, &type, sizep);
 if (!used) {
  type = OBJ_BAD;
 } else
  *curpos += used;

 return type;
}
