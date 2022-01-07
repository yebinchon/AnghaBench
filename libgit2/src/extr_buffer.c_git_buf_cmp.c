
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ size; int ptr; } ;
typedef TYPE_1__ git_buf ;


 int memcmp (int ,int ,int ) ;
 int min (scalar_t__,scalar_t__) ;

int git_buf_cmp(const git_buf *a, const git_buf *b)
{
 int result = memcmp(a->ptr, b->ptr, min(a->size, b->size));
 return (result != 0) ? result :
  (a->size < b->size) ? -1 : (a->size > b->size) ? 1 : 0;
}
