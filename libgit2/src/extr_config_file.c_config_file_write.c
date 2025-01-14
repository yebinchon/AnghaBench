
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_3__ ;
typedef struct TYPE_14__ TYPE_2__ ;
typedef struct TYPE_13__ TYPE_1__ ;


typedef int write_data ;
struct TYPE_14__ {size_t asize; int size; int ptr; } ;
struct write_data {char* orig_section; char* section; char* orig_name; char* name; char const* value; TYPE_2__ buffered_comment; int const* preg; TYPE_2__* buf; } ;
typedef int git_regexp ;
typedef int git_filebuf ;
typedef int git_config_parser ;
typedef TYPE_2__ git_buf ;
struct TYPE_13__ {int path; } ;
struct TYPE_15__ {int parent; TYPE_2__ locked_content; scalar_t__ locked; TYPE_1__ file; } ;
typedef TYPE_3__ config_file_backend ;


 TYPE_2__ GIT_BUF_INIT ;
 int GIT_CONFIG_FILE_MODE ;
 int GIT_CONFIG_PARSER_INIT ;
 int GIT_ENOTFOUND ;
 int GIT_ERROR_CHECK_ALLOC (char*) ;
 int GIT_FILEBUF_HASH_CONTENTS ;
 int GIT_FILEBUF_INIT ;
 int config_file_refresh_from_buffer (int *,int ,int ) ;
 int git__free (char*) ;
 char* git__strndup (char const*,int) ;
 int git_buf_attach (TYPE_2__*,int ,size_t) ;
 char* git_buf_cstr (TYPE_2__*) ;
 int git_buf_detach (TYPE_2__*) ;
 int git_buf_dispose (TYPE_2__*) ;
 int git_buf_len (TYPE_2__*) ;
 int git_buf_puts (TYPE_2__*,char*) ;
 int git_config_parse (int *,int ,int ,int ,int ,struct write_data*) ;
 int git_config_parser_dispose (int *) ;
 scalar_t__ git_config_parser_init (int *,int ,int ,int ) ;
 int git_filebuf_cleanup (int *) ;
 int git_filebuf_commit (int *) ;
 int git_filebuf_open (int *,int ,int ,int ) ;
 int git_filebuf_write (int *,char*,int ) ;
 int git_futils_readbuffer (TYPE_2__*,int ) ;
 int memset (struct write_data*,int ,int) ;
 char* strrchr (char const*,char) ;
 int write_on_comment ;
 int write_on_eof ;
 int write_on_section ;
 int write_on_variable ;

__attribute__((used)) static int config_file_write(config_file_backend *cfg, const char *orig_key, const char *key, const git_regexp *preg, const char* value)

{
 char *orig_section = ((void*)0), *section = ((void*)0), *orig_name, *name, *ldot;
 git_buf buf = GIT_BUF_INIT, contents = GIT_BUF_INIT;
 git_config_parser parser = GIT_CONFIG_PARSER_INIT;
 git_filebuf file = GIT_FILEBUF_INIT;
 struct write_data write_data;
 int error;

 memset(&write_data, 0, sizeof(write_data));

 if (cfg->locked) {
  error = git_buf_puts(&contents, git_buf_cstr(&cfg->locked_content) == ((void*)0) ? "" : git_buf_cstr(&cfg->locked_content));
 } else {
  if ((error = git_filebuf_open(&file, cfg->file.path, GIT_FILEBUF_HASH_CONTENTS,
           GIT_CONFIG_FILE_MODE)) < 0)
   goto done;


  error = git_futils_readbuffer(&contents, cfg->file.path);
 }
 if (error < 0 && error != GIT_ENOTFOUND)
  goto done;

 if ((git_config_parser_init(&parser, cfg->file.path, contents.ptr, contents.size)) < 0)
  goto done;

 ldot = strrchr(key, '.');
 name = ldot + 1;
 section = git__strndup(key, ldot - key);
 GIT_ERROR_CHECK_ALLOC(section);

 ldot = strrchr(orig_key, '.');
 orig_name = ldot + 1;
 orig_section = git__strndup(orig_key, ldot - orig_key);
 GIT_ERROR_CHECK_ALLOC(orig_section);

 write_data.buf = &buf;
 write_data.orig_section = orig_section;
 write_data.section = section;
 write_data.orig_name = orig_name;
 write_data.name = name;
 write_data.preg = preg;
 write_data.value = value;

 if ((error = git_config_parse(&parser, write_on_section, write_on_variable,
          write_on_comment, write_on_eof, &write_data)) < 0)
  goto done;

 if (cfg->locked) {
  size_t len = buf.asize;

  git_buf_dispose(&cfg->locked_content);
  git_buf_attach(&cfg->locked_content, git_buf_detach(&buf), len);
 } else {
  git_filebuf_write(&file, git_buf_cstr(&buf), git_buf_len(&buf));

  if ((error = git_filebuf_commit(&file)) < 0)
   goto done;

  if ((error = config_file_refresh_from_buffer(&cfg->parent, buf.ptr, buf.size)) < 0)
   goto done;
 }

done:
 git__free(section);
 git__free(orig_section);
 git_buf_dispose(&write_data.buffered_comment);
 git_buf_dispose(&buf);
 git_buf_dispose(&contents);
 git_filebuf_cleanup(&file);
 git_config_parser_dispose(&parser);

 return error;
}
