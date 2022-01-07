
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct repository_format {int partial_clone; int work_tree; int unknown_extensions; } ;


 int free (int ) ;
 int init_repository_format (struct repository_format*) ;
 int string_list_clear (int *,int ) ;

void clear_repository_format(struct repository_format *format)
{
 string_list_clear(&format->unknown_extensions, 0);
 free(format->work_tree);
 free(format->partial_clone);
 init_repository_format(format);
}
