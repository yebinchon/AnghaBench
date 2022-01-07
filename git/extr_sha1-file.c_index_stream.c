
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct object_id {int dummy; } ;
typedef enum object_type { ____Placeholder_object_type } object_type ;


 int index_bulk_checkin (struct object_id*,int,size_t,int,char const*,unsigned int) ;

__attribute__((used)) static int index_stream(struct object_id *oid, int fd, size_t size,
   enum object_type type, const char *path,
   unsigned flags)
{
 return index_bulk_checkin(oid, fd, size, type, path, flags);
}
