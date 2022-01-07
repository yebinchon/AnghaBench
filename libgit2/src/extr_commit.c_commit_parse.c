
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_1__ ;


struct TYPE_12__ {int email; int name; } ;
typedef TYPE_1__ git_signature ;
typedef TYPE_1__ git_oid ;
struct TYPE_13__ {TYPE_1__* raw_message; TYPE_1__* raw_header; TYPE_1__* message_encoding; TYPE_1__* committer; TYPE_1__* author; int parent_ids; TYPE_1__ tree_id; } ;
typedef TYPE_3__ git_commit ;


 unsigned int GIT_COMMIT_PARSE_QUICK ;
 int GIT_ERROR_CHECK_ALLOC (TYPE_1__*) ;
 int GIT_ERROR_CHECK_ARRAY (int ) ;
 int GIT_ERROR_OBJECT ;
 int GIT_OID_HEXSZ ;
 int assert (int) ;
 int git__free (int ) ;
 void* git__malloc (int) ;
 scalar_t__ git__prefixncmp (char const*,int,char*) ;
 TYPE_1__* git__strdup (char*) ;
 void* git__strndup (char const*,int) ;
 TYPE_1__* git_array_alloc (int ) ;
 int git_array_init_to_size (int ,int) ;
 int git_error_set (int ,char*) ;
 scalar_t__ git_oid__parse (TYPE_1__*,char const**,char const*,char*) ;
 int git_oid_cpy (TYPE_1__*,TYPE_1__*) ;
 scalar_t__ git_signature__parse (TYPE_1__*,char const**,char const*,char*,char) ;
 int strlen (char*) ;

__attribute__((used)) static int commit_parse(git_commit *commit, const char *data, size_t size, unsigned int flags)
{
 const char *buffer_start = data, *buffer;
 const char *buffer_end = buffer_start + size;
 git_oid parent_id;
 size_t header_len;
 git_signature dummy_sig;

 assert(commit && data);

 buffer = buffer_start;


 git_array_init_to_size(commit->parent_ids, 1);
 GIT_ERROR_CHECK_ARRAY(commit->parent_ids);


 if (!(flags & GIT_COMMIT_PARSE_QUICK)) {
     if (git_oid__parse(&commit->tree_id, &buffer, buffer_end, "tree ") < 0)
   goto bad_buffer;
 } else {
  size_t tree_len = strlen("tree ") + GIT_OID_HEXSZ + 1;
  if (buffer + tree_len > buffer_end)
   goto bad_buffer;
  buffer += tree_len;
 }





 while (git_oid__parse(&parent_id, &buffer, buffer_end, "parent ") == 0) {
  git_oid *new_id = git_array_alloc(commit->parent_ids);
  GIT_ERROR_CHECK_ALLOC(new_id);

  git_oid_cpy(new_id, &parent_id);
 }

 if (!(flags & GIT_COMMIT_PARSE_QUICK)) {
  commit->author = git__malloc(sizeof(git_signature));
  GIT_ERROR_CHECK_ALLOC(commit->author);

  if (git_signature__parse(commit->author, &buffer, buffer_end, "author ", '\n') < 0)
   return -1;
 }


 while (!git__prefixncmp(buffer, buffer_end - buffer, "author ")) {
  if (git_signature__parse(&dummy_sig, &buffer, buffer_end, "author ", '\n') < 0)
   return -1;

  git__free(dummy_sig.name);
  git__free(dummy_sig.email);
 }


 commit->committer = git__malloc(sizeof(git_signature));
 GIT_ERROR_CHECK_ALLOC(commit->committer);

 if (git_signature__parse(commit->committer, &buffer, buffer_end, "committer ", '\n') < 0)
  return -1;

 if (flags & GIT_COMMIT_PARSE_QUICK)
  return 0;


 while (buffer < buffer_end) {
  const char *eoln = buffer;
  if (buffer[-1] == '\n' && buffer[0] == '\n')
   break;

  while (eoln < buffer_end && *eoln != '\n')
   ++eoln;

  if (git__prefixncmp(buffer, buffer_end - buffer, "encoding ") == 0) {
   buffer += strlen("encoding ");

   commit->message_encoding = git__strndup(buffer, eoln - buffer);
   GIT_ERROR_CHECK_ALLOC(commit->message_encoding);
  }

  if (eoln < buffer_end && *eoln == '\n')
   ++eoln;
  buffer = eoln;
 }

 header_len = buffer - buffer_start;
 commit->raw_header = git__strndup(buffer_start, header_len);
 GIT_ERROR_CHECK_ALLOC(commit->raw_header);


 buffer = buffer_start + header_len + 1;


 if (buffer <= buffer_end)
  commit->raw_message = git__strndup(buffer, buffer_end - buffer);
 else
  commit->raw_message = git__strdup("");
 GIT_ERROR_CHECK_ALLOC(commit->raw_message);

 return 0;

bad_buffer:
 git_error_set(GIT_ERROR_OBJECT, "failed to parse bad commit object");
 return -1;
}
