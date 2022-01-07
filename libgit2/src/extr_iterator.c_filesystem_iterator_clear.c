
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {scalar_t__ size; } ;
struct TYPE_5__ {int base; int tmp_buf; int ignores; TYPE_2__ frames; } ;
typedef TYPE_1__ filesystem_iterator ;


 int filesystem_iterator_frame_pop (TYPE_1__*) ;
 int git_array_clear (TYPE_2__) ;
 int git_buf_dispose (int *) ;
 int git_ignore__free (int *) ;
 int iterator_clear (int *) ;

__attribute__((used)) static void filesystem_iterator_clear(filesystem_iterator *iter)
{
 while (iter->frames.size)
  filesystem_iterator_frame_pop(iter);

 git_array_clear(iter->frames);
 git_ignore__free(&iter->ignores);

 git_buf_dispose(&iter->tmp_buf);

 iterator_clear(&iter->base);
}
