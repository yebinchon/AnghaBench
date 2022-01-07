
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct data_buf {int file_len; scalar_t__ cur_len; int * prev; int * cur; } ;


 scalar_t__ BUFLEN ;
 int free (int *) ;

__attribute__((used)) static void
remove_tail(struct data_buf *dbuf, int len)
{
 dbuf->cur_len -= len;
 dbuf->file_len -= len;

 if (dbuf->cur_len)
  return;

 free(dbuf->cur);
 dbuf->cur = dbuf->prev;
 dbuf->prev = ((void*)0);
 dbuf->cur_len = BUFLEN;
}
