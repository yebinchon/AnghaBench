
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct ll_merge_options {int variant; scalar_t__ virtual_ancestor; } ;
struct ll_merge_driver {int dummy; } ;
struct TYPE_7__ {int * ptr; int size; } ;
typedef TYPE_1__ mmfile_t ;
struct TYPE_8__ {int size; int * ptr; } ;
typedef TYPE_2__ mmbuffer_t ;




 int assert (struct ll_merge_options const*) ;
 int warning (char*,char const*,char const*,char const*) ;

__attribute__((used)) static int ll_binary_merge(const struct ll_merge_driver *drv_unused,
      mmbuffer_t *result,
      const char *path,
      mmfile_t *orig, const char *orig_name,
      mmfile_t *src1, const char *name1,
      mmfile_t *src2, const char *name2,
      const struct ll_merge_options *opts,
      int marker_size)
{
 mmfile_t *stolen;
 assert(opts);






 if (opts->virtual_ancestor) {
  stolen = orig;
 } else {
  switch (opts->variant) {
  default:
   warning("Cannot merge binary files: %s (%s vs. %s)",
    path, name1, name2);

  case 129:
   stolen = src1;
   break;
  case 128:
   stolen = src2;
   break;
  }
 }

 result->ptr = stolen->ptr;
 result->size = stolen->size;
 stolen->ptr = ((void*)0);





 return (opts->variant ? 0 : 1);
}
