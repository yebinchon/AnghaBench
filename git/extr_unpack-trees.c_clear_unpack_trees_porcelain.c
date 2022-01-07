
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct unpack_trees_options {int msgs; int msgs_to_free; } ;


 int argv_array_clear (int *) ;
 int memset (int ,int ,int) ;

void clear_unpack_trees_porcelain(struct unpack_trees_options *opts)
{
 argv_array_clear(&opts->msgs_to_free);
 memset(opts->msgs, 0, sizeof(opts->msgs));
}
