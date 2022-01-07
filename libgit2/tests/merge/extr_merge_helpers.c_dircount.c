
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int ptr; } ;
typedef TYPE_1__ git_buf ;


 int git_buf_len (TYPE_1__*) ;
 scalar_t__ strcmp (int,char*) ;

int dircount(void *payload, git_buf *pathbuf)
{
 size_t *entries = payload;
 size_t len = git_buf_len(pathbuf);

 if (len < 5 || strcmp(pathbuf->ptr + (git_buf_len(pathbuf) - 5), "/.git") != 0)
  (*entries)++;

 return 0;
}
