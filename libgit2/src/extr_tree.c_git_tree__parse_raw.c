
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef void* uint16_t ;
struct TYPE_5__ {char const* filename; int * oid; void* filename_len; void* attr; } ;
typedef TYPE_1__ git_tree_entry ;
struct TYPE_6__ {int entries; int * odb_obj; } ;
typedef TYPE_2__ git_tree ;
typedef int git_oid ;


 int DEFAULT_TREE_SIZE ;
 int GIT_ERROR_CHECK_ALLOC (TYPE_1__*) ;
 int GIT_ERROR_CHECK_ARRAY (int ) ;
 int GIT_OID_RAWSZ ;
 size_t UINT16_MAX ;
 TYPE_1__* git_array_alloc (int ) ;
 int git_array_init_to_size (int ,int ) ;
 char* memchr (char const*,int ,int) ;
 scalar_t__ parse_mode (void**,char const*,int,char const**) ;
 int tree_error (char*,int *) ;

int git_tree__parse_raw(void *_tree, const char *data, size_t size)
{
 git_tree *tree = _tree;
 const char *buffer;
 const char *buffer_end;

 buffer = data;
 buffer_end = buffer + size;

 tree->odb_obj = ((void*)0);
 git_array_init_to_size(tree->entries, DEFAULT_TREE_SIZE);
 GIT_ERROR_CHECK_ARRAY(tree->entries);

 while (buffer < buffer_end) {
  git_tree_entry *entry;
  size_t filename_len;
  const char *nul;
  uint16_t attr;

  if (parse_mode(&attr, buffer, buffer_end - buffer, &buffer) < 0 || !buffer)
   return tree_error("failed to parse tree: can't parse filemode", ((void*)0));

  if (buffer >= buffer_end || (*buffer++) != ' ')
   return tree_error("failed to parse tree: missing space after filemode", ((void*)0));

  if ((nul = memchr(buffer, 0, buffer_end - buffer)) == ((void*)0))
   return tree_error("failed to parse tree: object is corrupted", ((void*)0));

  if ((filename_len = nul - buffer) == 0 || filename_len > UINT16_MAX)
   return tree_error("failed to parse tree: can't parse filename", ((void*)0));

  if ((buffer_end - (nul + 1)) < GIT_OID_RAWSZ)
   return tree_error("failed to parse tree: can't parse OID", ((void*)0));


  {
   entry = git_array_alloc(tree->entries);
   GIT_ERROR_CHECK_ALLOC(entry);

   entry->attr = attr;
   entry->filename_len = (uint16_t)filename_len;
   entry->filename = buffer;
   entry->oid = (git_oid *) ((char *) buffer + filename_len + 1);
  }

  buffer += filename_len + 1;
  buffer += GIT_OID_RAWSZ;
 }

 return 0;
}
