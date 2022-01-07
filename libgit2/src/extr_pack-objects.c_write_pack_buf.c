
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int git_buf ;


 int git_buf_put (int *,void*,size_t) ;

__attribute__((used)) static int write_pack_buf(void *buf, size_t size, void *data)
{
 git_buf *b = (git_buf *)data;
 return git_buf_put(b, buf, size);
}
