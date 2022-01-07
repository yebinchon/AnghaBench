
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct delta_index {int dummy; } ;


 int free (struct delta_index*) ;

void free_delta_index(struct delta_index *index)
{
 free(index);
}
