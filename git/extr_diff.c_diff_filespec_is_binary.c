
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct repository {int index; } ;
struct diff_filespec {int is_binary; int size; scalar_t__ data; TYPE_1__* driver; } ;
struct TYPE_2__ {int binary; } ;


 int CHECK_BINARY ;
 scalar_t__ DIFF_FILE_VALID (struct diff_filespec*) ;
 int buffer_is_binary (scalar_t__,int ) ;
 int diff_filespec_load_driver (struct diff_filespec*,int ) ;
 int diff_populate_filespec (struct repository*,struct diff_filespec*,int ) ;

int diff_filespec_is_binary(struct repository *r,
       struct diff_filespec *one)
{
 if (one->is_binary == -1) {
  diff_filespec_load_driver(one, r->index);
  if (one->driver->binary != -1)
   one->is_binary = one->driver->binary;
  else {
   if (!one->data && DIFF_FILE_VALID(one))
    diff_populate_filespec(r, one, CHECK_BINARY);
   if (one->is_binary == -1 && one->data)
    one->is_binary = buffer_is_binary(one->data,
      one->size);
   if (one->is_binary == -1)
    one->is_binary = 0;
  }
 }
 return one->is_binary;
}
