
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct floppy_struct {int dummy; } ;
struct floppy_state {scalar_t__ type; int head_number; } ;


 int ARRAY_SIZE (struct floppy_struct*) ;
 int EINVAL ;
 scalar_t__ HD_MEDIA ;
 struct floppy_struct* floppy_type ;

__attribute__((used)) static int get_floppy_geometry(struct floppy_state *fs, int type,
          struct floppy_struct **g)
{
 if (type >= ARRAY_SIZE(floppy_type))
  return -EINVAL;

 if (type)
  *g = &floppy_type[type];
 else if (fs->type == HD_MEDIA)
  *g = &floppy_type[3];
 else if (fs->head_number == 2)
  *g = &floppy_type[2];
 else
  *g = &floppy_type[1];

 return 0;
}
