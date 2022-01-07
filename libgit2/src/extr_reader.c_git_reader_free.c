
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int git_reader ;


 int git__free (int *) ;

void git_reader_free(git_reader *reader)
{
 if (!reader)
  return;

 git__free(reader);
}
