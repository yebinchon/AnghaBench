
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct index_extension {int extension_size; } ;
typedef int git_filebuf ;
struct TYPE_3__ {int size; struct index_extension* ptr; } ;
typedef TYPE_1__ git_buf ;


 int git_filebuf_write (int *,struct index_extension*,int) ;
 int htonl (int ) ;
 int memcpy (struct index_extension*,struct index_extension*,int) ;
 int memset (struct index_extension*,int,int) ;

__attribute__((used)) static int write_extension(git_filebuf *file, struct index_extension *header, git_buf *data)
{
 struct index_extension ondisk;

 memset(&ondisk, 0x0, sizeof(struct index_extension));
 memcpy(&ondisk, header, 4);
 ondisk.extension_size = htonl(header->extension_size);

 git_filebuf_write(file, &ondisk, sizeof(struct index_extension));
 return git_filebuf_write(file, data->ptr, data->size);
}
