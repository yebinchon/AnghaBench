
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct histindex {int rcha; int next_ptrs; int line_map; int records; } ;


 int xdl_cha_free (int *) ;
 int xdl_free (int ) ;

__attribute__((used)) static inline void free_index(struct histindex *index)
{
 xdl_free(index->records);
 xdl_free(index->line_map);
 xdl_free(index->next_ptrs);
 xdl_cha_free(&index->rcha);
}
