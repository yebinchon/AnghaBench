
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct xml_ctx {char* cdata; scalar_t__ name; scalar_t__ userData; } ;
struct remote_ls_ctx {int dentry_flags; int flags; scalar_t__ dentry_name; int (* userFunc ) (struct remote_ls_ctx*) ;int userData; int path; } ;
struct TYPE_2__ {char* url; char* path; int path_len; } ;


 int DAV_PROPFIND_COLLECTION ;
 int DAV_PROPFIND_NAME ;
 int DAV_PROPFIND_RESP ;
 int FREE_AND_NULL (scalar_t__) ;
 int IS_DIR ;
 int PROCESS_DIRS ;
 int PROCESS_FILES ;
 int RECURSIVE ;
 int error (char*,char*,char const*) ;
 int remote_ls (scalar_t__,int,int (*) (struct remote_ls_ctx*),int ) ;
 TYPE_1__* repo ;
 int str_end_url_with_slash (scalar_t__,scalar_t__*) ;
 char* strchr (char*,char) ;
 scalar_t__ strcmp (scalar_t__,int ) ;
 scalar_t__ strncmp (char*,char const*,int ) ;
 char* strstr (char*,char*) ;
 int stub1 (struct remote_ls_ctx*) ;
 int stub2 (struct remote_ls_ctx*) ;
 scalar_t__ xstrdup (char*) ;

__attribute__((used)) static void handle_remote_ls_ctx(struct xml_ctx *ctx, int tag_closed)
{
 struct remote_ls_ctx *ls = (struct remote_ls_ctx *)ctx->userData;

 if (tag_closed) {
  if (!strcmp(ctx->name, DAV_PROPFIND_RESP) && ls->dentry_name) {
   if (ls->dentry_flags & IS_DIR) {


    str_end_url_with_slash(ls->dentry_name, &ls->dentry_name);

    if (ls->flags & PROCESS_DIRS) {
     ls->userFunc(ls);
    }
    if (strcmp(ls->dentry_name, ls->path) &&
        ls->flags & RECURSIVE) {
     remote_ls(ls->dentry_name,
        ls->flags,
        ls->userFunc,
        ls->userData);
    }
   } else if (ls->flags & PROCESS_FILES) {
    ls->userFunc(ls);
   }
  } else if (!strcmp(ctx->name, DAV_PROPFIND_NAME) && ctx->cdata) {
   char *path = ctx->cdata;
   if (*ctx->cdata == 'h') {
    path = strstr(path, "//");
    if (path) {
     path = strchr(path+2, '/');
    }
   }
   if (path) {
    const char *url = repo->url;
    if (repo->path)
     url = repo->path;
    if (strncmp(path, url, repo->path_len))
     error("Parsed path '%s' does not match url: '%s'",
           path, url);
    else {
     path += repo->path_len;
     ls->dentry_name = xstrdup(path);
    }
   }
  } else if (!strcmp(ctx->name, DAV_PROPFIND_COLLECTION)) {
   ls->dentry_flags |= IS_DIR;
  }
 } else if (!strcmp(ctx->name, DAV_PROPFIND_RESP)) {
  FREE_AND_NULL(ls->dentry_name);
  ls->dentry_flags = 0;
 }
}
