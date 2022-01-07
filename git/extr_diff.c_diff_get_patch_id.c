
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct patch_id_t {int ctxlen; scalar_t__ flags; int * ctx; } ;
typedef struct patch_id_t xpparam_t ;
typedef int xpp ;
typedef int xecfg ;
typedef struct patch_id_t xdemitconf_t ;
struct object_id {int hash; } ;
struct diff_queue_struct {int nr; struct diff_filepair** queue; } ;
struct diff_options {TYPE_2__* repo; } ;
struct diff_filepair {scalar_t__ status; TYPE_3__* one; TYPE_3__* two; } ;
typedef int mmfile_t ;
typedef int git_hash_ctx ;
struct TYPE_10__ {scalar_t__ mode; int path; int oid; } ;
struct TYPE_9__ {int index; } ;
struct TYPE_8__ {int hexsz; int (* final_fn ) (int ,int *) ;int (* update_fn ) (int *,int ,int) ;int (* init_fn ) (int *) ;} ;


 scalar_t__ DIFF_FILE_VALID (TYPE_3__*) ;
 scalar_t__ DIFF_PAIR_UNMERGED (struct diff_filepair*) ;
 scalar_t__ DIFF_STATUS_UNKNOWN ;
 scalar_t__ S_ISDIR (scalar_t__) ;
 scalar_t__ diff_filespec_is_binary (TYPE_2__*,TYPE_3__*) ;
 int diff_fill_oid_info (TYPE_3__*,int ) ;
 struct diff_queue_struct diff_queued_diff ;
 scalar_t__ diff_unmodified_pair (struct diff_filepair*) ;
 int discard_hunk_line ;
 int error (char*,...) ;
 scalar_t__ fill_mmfile (TYPE_2__*,int *,TYPE_3__*) ;
 int flush_one_hunk (struct object_id*,int *) ;
 int memset (struct patch_id_t*,int ,int) ;
 int oid_to_hex (int *) ;
 int oidclr (struct object_id*) ;
 int patch_id_add_mode (int *,scalar_t__) ;
 int patch_id_add_string (int *,char*) ;
 int patch_id_consume ;
 int remove_space (int ,int ) ;
 int strlen (int ) ;
 int stub1 (int *) ;
 int stub10 (int ,int *) ;
 int stub2 (int *,int ,int) ;
 int stub3 (int *,int ,int) ;
 int stub4 (int *,int ,int) ;
 int stub5 (int *,int ,int) ;
 int stub6 (int *,int ,int) ;
 int stub7 (int *,int ,int) ;
 int stub8 (int *,int ,int) ;
 int stub9 (int *,int ,int) ;
 TYPE_1__* the_hash_algo ;
 scalar_t__ xdi_diff_outf (int *,int *,int ,int ,struct patch_id_t*,struct patch_id_t*,struct patch_id_t*) ;

__attribute__((used)) static int diff_get_patch_id(struct diff_options *options, struct object_id *oid, int diff_header_only, int stable)
{
 struct diff_queue_struct *q = &diff_queued_diff;
 int i;
 git_hash_ctx ctx;
 struct patch_id_t data;

 the_hash_algo->init_fn(&ctx);
 memset(&data, 0, sizeof(struct patch_id_t));
 data.ctx = &ctx;
 oidclr(oid);

 for (i = 0; i < q->nr; i++) {
  xpparam_t xpp;
  xdemitconf_t xecfg;
  mmfile_t mf1, mf2;
  struct diff_filepair *p = q->queue[i];
  int len1, len2;

  memset(&xpp, 0, sizeof(xpp));
  memset(&xecfg, 0, sizeof(xecfg));
  if (p->status == 0)
   return error("internal diff status error");
  if (p->status == DIFF_STATUS_UNKNOWN)
   continue;
  if (diff_unmodified_pair(p))
   continue;
  if ((DIFF_FILE_VALID(p->one) && S_ISDIR(p->one->mode)) ||
      (DIFF_FILE_VALID(p->two) && S_ISDIR(p->two->mode)))
   continue;
  if (DIFF_PAIR_UNMERGED(p))
   continue;

  diff_fill_oid_info(p->one, options->repo->index);
  diff_fill_oid_info(p->two, options->repo->index);

  len1 = remove_space(p->one->path, strlen(p->one->path));
  len2 = remove_space(p->two->path, strlen(p->two->path));
  patch_id_add_string(&ctx, "diff--git");
  patch_id_add_string(&ctx, "a/");
  the_hash_algo->update_fn(&ctx, p->one->path, len1);
  patch_id_add_string(&ctx, "b/");
  the_hash_algo->update_fn(&ctx, p->two->path, len2);

  if (p->one->mode == 0) {
   patch_id_add_string(&ctx, "newfilemode");
   patch_id_add_mode(&ctx, p->two->mode);
   patch_id_add_string(&ctx, "---/dev/null");
   patch_id_add_string(&ctx, "+++b/");
   the_hash_algo->update_fn(&ctx, p->two->path, len2);
  } else if (p->two->mode == 0) {
   patch_id_add_string(&ctx, "deletedfilemode");
   patch_id_add_mode(&ctx, p->one->mode);
   patch_id_add_string(&ctx, "---a/");
   the_hash_algo->update_fn(&ctx, p->one->path, len1);
   patch_id_add_string(&ctx, "+++/dev/null");
  } else {
   patch_id_add_string(&ctx, "---a/");
   the_hash_algo->update_fn(&ctx, p->one->path, len1);
   patch_id_add_string(&ctx, "+++b/");
   the_hash_algo->update_fn(&ctx, p->two->path, len2);
  }

  if (diff_header_only)
   continue;

  if (fill_mmfile(options->repo, &mf1, p->one) < 0 ||
      fill_mmfile(options->repo, &mf2, p->two) < 0)
   return error("unable to read files to diff");

  if (diff_filespec_is_binary(options->repo, p->one) ||
      diff_filespec_is_binary(options->repo, p->two)) {
   the_hash_algo->update_fn(&ctx, oid_to_hex(&p->one->oid),
     the_hash_algo->hexsz);
   the_hash_algo->update_fn(&ctx, oid_to_hex(&p->two->oid),
     the_hash_algo->hexsz);
   continue;
  }

  xpp.flags = 0;
  xecfg.ctxlen = 3;
  xecfg.flags = 0;
  if (xdi_diff_outf(&mf1, &mf2, discard_hunk_line,
      patch_id_consume, &data, &xpp, &xecfg))
   return error("unable to generate patch-id diff for %s",
         p->one->path);

  if (stable)
   flush_one_hunk(oid, &ctx);
 }

 if (!stable)
  the_hash_algo->final_fn(oid->hash, &ctx);

 return 0;
}
