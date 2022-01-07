
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int is_delta; } ;
struct TYPE_4__ {TYPE_1__ packed; } ;
struct object_info {int* typep; unsigned long* sizep; int whence; TYPE_2__ u; } ;
struct object_id {int dummy; } ;
typedef enum object_type { ____Placeholder_object_type } object_type ;
typedef enum input_source { ____Placeholder_input_source } input_source ;




 unsigned long big_file_threshold ;
 int incore ;
 int loose ;
 int oid_object_info_extended (int ,struct object_id const*,struct object_info*,int ) ;
 int pack_non_delta ;
 int stream_error ;
 int the_repository ;

__attribute__((used)) static enum input_source istream_source(const struct object_id *oid,
     enum object_type *type,
     struct object_info *oi)
{
 unsigned long size;
 int status;

 oi->typep = type;
 oi->sizep = &size;
 status = oid_object_info_extended(the_repository, oid, oi, 0);
 if (status < 0)
  return stream_error;

 switch (oi->whence) {
 case 129:
  return loose;
 case 128:
  if (!oi->u.packed.is_delta && big_file_threshold < size)
   return pack_non_delta;

 default:
  return incore;
 }
}
