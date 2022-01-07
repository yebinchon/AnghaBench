
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct xml_ctx {scalar_t__ cdata; int name; scalar_t__ userData; } ;
struct remote_lock {char* tmpfile_suffix; void* token; int timeout; void* owner; } ;
typedef int git_hash_ctx ;
struct TYPE_2__ {int hexsz; int (* final_fn ) (unsigned char*,int *) ;int (* update_fn ) (int *,void*,int ) ;int (* init_fn ) (int *) ;} ;


 int DAV_ACTIVELOCK_OWNER ;
 int DAV_ACTIVELOCK_TIMEOUT ;
 int DAV_ACTIVELOCK_TOKEN ;
 int GIT_MAX_RAWSZ ;
 int hash_to_hex (unsigned char*) ;
 int memcpy (char*,int ,int ) ;
 scalar_t__ skip_prefix (scalar_t__,char*,char const**) ;
 int strcmp (int ,int ) ;
 int strlen (void*) ;
 int strtol (char const*,int *,int) ;
 int stub1 (int *) ;
 int stub2 (int *,void*,int ) ;
 int stub3 (unsigned char*,int *) ;
 TYPE_1__* the_hash_algo ;
 void* xstrdup (scalar_t__) ;

__attribute__((used)) static void handle_new_lock_ctx(struct xml_ctx *ctx, int tag_closed)
{
 struct remote_lock *lock = (struct remote_lock *)ctx->userData;
 git_hash_ctx hash_ctx;
 unsigned char lock_token_hash[GIT_MAX_RAWSZ];

 if (tag_closed && ctx->cdata) {
  if (!strcmp(ctx->name, DAV_ACTIVELOCK_OWNER)) {
   lock->owner = xstrdup(ctx->cdata);
  } else if (!strcmp(ctx->name, DAV_ACTIVELOCK_TIMEOUT)) {
   const char *arg;
   if (skip_prefix(ctx->cdata, "Second-", &arg))
    lock->timeout = strtol(arg, ((void*)0), 10);
  } else if (!strcmp(ctx->name, DAV_ACTIVELOCK_TOKEN)) {
   lock->token = xstrdup(ctx->cdata);

   the_hash_algo->init_fn(&hash_ctx);
   the_hash_algo->update_fn(&hash_ctx, lock->token, strlen(lock->token));
   the_hash_algo->final_fn(lock_token_hash, &hash_ctx);

   lock->tmpfile_suffix[0] = '_';
   memcpy(lock->tmpfile_suffix + 1, hash_to_hex(lock_token_hash), the_hash_algo->hexsz);
  }
 }
}
