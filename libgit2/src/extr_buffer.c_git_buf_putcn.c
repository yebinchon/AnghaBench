
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {size_t size; char* ptr; } ;
typedef TYPE_1__ git_buf ;


 int ENSURE_SIZE (TYPE_1__*,size_t) ;
 int GIT_ERROR_CHECK_ALLOC_ADD (size_t*,size_t,int) ;
 int memset (char*,char,size_t) ;

int git_buf_putcn(git_buf *buf, char c, size_t len)
{
 size_t new_size;
 GIT_ERROR_CHECK_ALLOC_ADD(&new_size, buf->size, len);
 GIT_ERROR_CHECK_ALLOC_ADD(&new_size, new_size, 1);
 ENSURE_SIZE(buf, new_size);
 memset(buf->ptr + buf->size, c, len);
 buf->size += len;
 buf->ptr[buf->size] = '\0';
 return 0;
}
