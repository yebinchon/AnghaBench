
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct progress {scalar_t__ last_value; scalar_t__ total; scalar_t__ sparse; } ;


 int display_progress (struct progress*,scalar_t__) ;

__attribute__((used)) static void finish_if_sparse(struct progress *progress)
{
 if (progress &&
     progress->sparse &&
     progress->last_value != progress->total)
  display_progress(progress, progress->total);
}
