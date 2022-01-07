
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct dir_iterator_level {int * dir; } ;
struct TYPE_3__ {int buf; } ;
struct TYPE_4__ {TYPE_1__ path; } ;
struct dir_iterator_int {int levels_nr; TYPE_2__ base; struct dir_iterator_level* levels; } ;


 scalar_t__ closedir (int *) ;
 int warning_errno (char*,int ) ;

__attribute__((used)) static int pop_level(struct dir_iterator_int *iter)
{
 struct dir_iterator_level *level =
  &iter->levels[iter->levels_nr - 1];

 if (level->dir && closedir(level->dir))
  warning_errno("error closing directory '%s'",
         iter->base.path.buf);
 level->dir = ((void*)0);

 return --iter->levels_nr;
}
