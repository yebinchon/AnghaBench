
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int * fp; struct TYPE_4__* path; } ;
typedef TYPE_1__ source_file ;
typedef int mrb_state ;


 int fclose (int *) ;
 int mrb_free (int *,TYPE_1__*) ;

__attribute__((used)) static void
source_file_free(mrb_state *mrb, source_file *file)
{
  if (file != ((void*)0)) {
    if (file->path != ((void*)0)) {
      mrb_free(mrb, file->path);
    }
    if (file->fp != ((void*)0)) {
      fclose(file->fp);
      file->fp = ((void*)0);
    }
    mrb_free(mrb, file);
  }
}
