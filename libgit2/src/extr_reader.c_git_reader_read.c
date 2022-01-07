
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int (* read ) (int *,int *,int *,TYPE_1__*,char const*) ;} ;
typedef TYPE_1__ git_reader ;
typedef int git_oid ;
typedef int git_filemode_t ;
typedef int git_buf ;


 int assert (int ) ;
 int stub1 (int *,int *,int *,TYPE_1__*,char const*) ;

int git_reader_read(
 git_buf *out,
 git_oid *out_id,
 git_filemode_t *out_filemode,
 git_reader *reader,
 const char *filename)
{
 assert(out && reader && filename);

 return reader->read(out, out_id, out_filemode, reader, filename);
}
