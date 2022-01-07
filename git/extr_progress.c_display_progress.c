
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
struct progress {int dummy; } ;


 int display (struct progress*,int ,int *) ;

void display_progress(struct progress *progress, uint64_t n)
{
 if (progress)
  display(progress, n, ((void*)0));
}
