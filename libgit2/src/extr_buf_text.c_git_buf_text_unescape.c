
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int ptr; int size; } ;
typedef TYPE_1__ git_buf ;


 int git__unescape (int ) ;

void git_buf_text_unescape(git_buf *buf)
{
 buf->size = git__unescape(buf->ptr);
}
