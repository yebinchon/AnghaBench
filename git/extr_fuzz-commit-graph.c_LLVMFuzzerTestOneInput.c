
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct commit_graph {int dummy; } ;


 int free (struct commit_graph*) ;
 int initialize_the_repository () ;
 struct commit_graph* parse_commit_graph (void*,int,size_t) ;
 int repo_clear (int ) ;
 int the_repository ;

int LLVMFuzzerTestOneInput(const uint8_t *data, size_t size)
{
 struct commit_graph *g;

 initialize_the_repository();
 g = parse_commit_graph((void *)data, -1, size);
 repo_clear(the_repository);
 free(g);

 return 0;
}
