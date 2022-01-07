
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int * index; int file; } ;
typedef TYPE_1__ git_indexwriter ;


 int git_filebuf_cleanup (int *) ;
 int git_index_free (int *) ;

void git_indexwriter_cleanup(git_indexwriter *writer)
{
 git_filebuf_cleanup(&writer->file);

 git_index_free(writer->index);
 writer->index = ((void*)0);
}
