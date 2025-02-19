
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef scalar_t__ uint32_t ;
struct index_extension {scalar_t__ extension_size; int signature; } ;
struct TYPE_8__ {int * tree; } ;
typedef TYPE_1__ git_index ;
typedef int git_filebuf ;
struct TYPE_9__ {scalar_t__ size; } ;
typedef TYPE_2__ git_buf ;


 TYPE_2__ GIT_BUF_INIT ;
 int INDEX_EXT_TREECACHE_SIG ;
 int git_buf_dispose (TYPE_2__*) ;
 int git_tree_cache_write (TYPE_2__*,int *) ;
 int memcpy (int *,int ,int) ;
 int memset (struct index_extension*,int,int) ;
 int write_extension (int *,struct index_extension*,TYPE_2__*) ;

__attribute__((used)) static int write_tree_extension(git_index *index, git_filebuf *file)
{
 struct index_extension extension;
 git_buf buf = GIT_BUF_INIT;
 int error;

 if (index->tree == ((void*)0))
  return 0;

 if ((error = git_tree_cache_write(&buf, index->tree)) < 0)
  return error;

 memset(&extension, 0x0, sizeof(struct index_extension));
 memcpy(&extension.signature, INDEX_EXT_TREECACHE_SIG, 4);
 extension.extension_size = (uint32_t)buf.size;

 error = write_extension(file, &extension, &buf);

 git_buf_dispose(&buf);

 return error;
}
