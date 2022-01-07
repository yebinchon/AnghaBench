
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {size_t size; char* ptr; } ;
typedef TYPE_1__ git_buf ;


 int ENSURE_SIZE (TYPE_1__*,size_t) ;
 int GIT_ERROR_CHECK_ALLOC_ADD (size_t*,size_t,int) ;
 int assert (int) ;
 int memcpy (char*,char const*,size_t) ;
 int memmove (char*,char*,size_t) ;

int git_buf_splice(
 git_buf *buf,
 size_t where,
 size_t nb_to_remove,
 const char *data,
 size_t nb_to_insert)
{
 char *splice_loc;
 size_t new_size, alloc_size;

 assert(buf && where <= buf->size && nb_to_remove <= buf->size - where);

 splice_loc = buf->ptr + where;




 GIT_ERROR_CHECK_ALLOC_ADD(&new_size, (buf->size - nb_to_remove), nb_to_insert);
 GIT_ERROR_CHECK_ALLOC_ADD(&alloc_size, new_size, 1);
 ENSURE_SIZE(buf, alloc_size);

 memmove(splice_loc + nb_to_insert,
  splice_loc + nb_to_remove,
  buf->size - where - nb_to_remove);

 memcpy(splice_loc, data, nb_to_insert);

 buf->size = new_size;
 buf->ptr[buf->size] = '\0';
 return 0;
}
