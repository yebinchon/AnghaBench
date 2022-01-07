
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int git_filebuf ;


 int flush_buffer (int *) ;

int git_filebuf_flush(git_filebuf *file)
{
 return flush_buffer(file);
}
