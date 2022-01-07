
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct transfer_request {struct transfer_request* next; } ;
struct rev_info {scalar_t__ edge_hint; } ;
struct remote_lock {int dummy; } ;
struct refspec {int nr; TYPE_1__* items; } ;
struct ref {char const* name; int new_oid; int old_oid; TYPE_2__* peer_ref; int force; struct ref* next; } ;
struct argv_array {int argv; int argc; } ;
struct TYPE_8__ {int can_update_info_refs; void* has_info_refs; void* has_info_packs; scalar_t__ url; scalar_t__ path; void* path_len; } ;
struct TYPE_7__ {char* name; int new_oid; } ;
struct TYPE_6__ {char* src; } ;


 struct argv_array ARGV_ARRAY_INIT ;
 int LOCK_TIME ;
 int MATCH_REFS_ALL ;
 struct refspec REFSPEC_INIT_PUSH ;
 scalar_t__ aborted ;
 int argv_array_clear (struct argv_array*) ;
 int argv_array_push (struct argv_array*,char*) ;
 int argv_array_pushf (struct argv_array*,char*,char*) ;
 int check_locks () ;
 int delete_remote_branch (char const*,int) ;
 int die (char*) ;
 int dry_run ;
 int error (char*,...) ;
 int fetch_indices () ;
 int finish_all_active_slots () ;
 int force_all ;
 int fprintf (int ,char*,...) ;
 int free (TYPE_3__*) ;
 int get_dav_remote_heads () ;
 int get_delta (struct rev_info*,struct remote_lock*) ;
 struct ref* get_local_heads () ;
 int has_object_file (int *) ;
 int helper_status ;
 int http_cleanup () ;
 int http_init (int *,scalar_t__,int) ;
 int http_is_verbose ;
 int http_push_usage ;
 scalar_t__ is_null_oid (int *) ;
 scalar_t__ is_running_queue ;
 struct remote_lock* lock_remote (char*,int ) ;
 int locking_available () ;
 int mark_edges_uninteresting (struct rev_info*,int *,int ) ;
 scalar_t__ match_push_refs (struct ref*,struct ref**,struct refspec*,int ) ;
 int memset (int ,int,int) ;
 char* oid_to_hex (int *) ;
 int oidcpy (int *,int *) ;
 scalar_t__ oideq (int *,int *) ;
 scalar_t__ prepare_revision_walk (struct rev_info*) ;
 int printf (char*,...) ;
 int push_all ;
 int push_verbosely ;
 int pushing ;
 int ref_newer (int *,int *) ;
 int refspec_appendn (struct refspec*,char const**,int) ;
 int release_request (struct transfer_request*) ;
 int remote_dir_exists ;
 void* remote_exists (char*) ;
 struct ref* remote_refs ;
 int remove_locks_on_signal ;
 TYPE_3__* repo ;
 int repo_init_revisions (int ,struct rev_info*,int ) ;
 struct transfer_request* request_queue_head ;
 int run_request_queue () ;
 int setup_git_directory () ;
 int setup_revisions (int ,int ,struct rev_info*,int *) ;
 int sigchain_push_common (int ) ;
 int stderr ;
 int str_end_url_with_slash (char const*,scalar_t__*) ;
 scalar_t__ strchr (char*,char) ;
 scalar_t__ strcmp (char const*,char*) ;
 void* strlen (scalar_t__) ;
 char* strstr (char const*,char*) ;
 int the_repository ;
 int unlock_remote (struct remote_lock*) ;
 int update_remote (int *,struct remote_lock*) ;
 int update_remote_info_refs (struct remote_lock*) ;
 int usage (int ) ;
 TYPE_3__* xcalloc (int,int) ;

int cmd_main(int argc, const char **argv)
{
 struct transfer_request *request;
 struct transfer_request *next_request;
 struct refspec rs = REFSPEC_INIT_PUSH;
 struct remote_lock *ref_lock = ((void*)0);
 struct remote_lock *info_ref_lock = ((void*)0);
 struct rev_info revs;
 int delete_branch = 0;
 int force_delete = 0;
 int objects_to_send;
 int rc = 0;
 int i;
 int new_refs;
 struct ref *ref, *local_refs;

 repo = xcalloc(1, sizeof(*repo));

 argv++;
 for (i = 1; i < argc; i++, argv++) {
  const char *arg = *argv;

  if (*arg == '-') {
   if (!strcmp(arg, "--all")) {
    push_all = MATCH_REFS_ALL;
    continue;
   }
   if (!strcmp(arg, "--force")) {
    force_all = 1;
    continue;
   }
   if (!strcmp(arg, "--dry-run")) {
    dry_run = 1;
    continue;
   }
   if (!strcmp(arg, "--helper-status")) {
    helper_status = 1;
    continue;
   }
   if (!strcmp(arg, "--verbose")) {
    push_verbosely = 1;
    http_is_verbose = 1;
    continue;
   }
   if (!strcmp(arg, "-d")) {
    delete_branch = 1;
    continue;
   }
   if (!strcmp(arg, "-D")) {
    delete_branch = 1;
    force_delete = 1;
    continue;
   }
   if (!strcmp(arg, "-h"))
    usage(http_push_usage);
  }
  if (!repo->url) {
   char *path = strstr(arg, "//");
   str_end_url_with_slash(arg, &repo->url);
   repo->path_len = strlen(repo->url);
   if (path) {
    repo->path = strchr(path+2, '/');
    if (repo->path)
     repo->path_len = strlen(repo->path);
   }
   continue;
  }
  refspec_appendn(&rs, argv, argc - i);
  break;
 }


 die("git-push is not available for http/https repository when not compiled with USE_CURL_MULTI");


 if (!repo->url)
  usage(http_push_usage);

 if (delete_branch && rs.nr != 1)
  die("You must specify only one branch name when deleting a remote branch");

 setup_git_directory();

 memset(remote_dir_exists, -1, 256);

 http_init(((void*)0), repo->url, 1);






 if (!locking_available()) {
  rc = 1;
  goto cleanup;
 }

 sigchain_push_common(remove_locks_on_signal);


 repo->can_update_info_refs = 0;
 repo->has_info_refs = remote_exists("info/refs");
 repo->has_info_packs = remote_exists("objects/info/packs");
 if (repo->has_info_refs) {
  info_ref_lock = lock_remote("info/refs", LOCK_TIME);
  if (info_ref_lock)
   repo->can_update_info_refs = 1;
  else {
   error("cannot lock existing info/refs");
   rc = 1;
   goto cleanup;
  }
 }
 if (repo->has_info_packs)
  fetch_indices();


 local_refs = get_local_heads();
 fprintf(stderr, "Fetching remote heads...\n");
 get_dav_remote_heads();
 run_request_queue();


 if (delete_branch) {
  const char *branch = rs.items[i].src;
  if (delete_remote_branch(branch, force_delete) == -1) {
   fprintf(stderr, "Unable to delete remote branch %s\n",
    branch);
   if (helper_status)
    printf("error %s cannot remove\n", branch);
  }
  goto cleanup;
 }


 if (match_push_refs(local_refs, &remote_refs, &rs, push_all)) {
  rc = -1;
  goto cleanup;
 }
 if (!remote_refs) {
  fprintf(stderr, "No refs in common and none specified; doing nothing.\n");
  if (helper_status)
   printf("error null no match\n");
  rc = 0;
  goto cleanup;
 }

 new_refs = 0;
 for (ref = remote_refs; ref; ref = ref->next) {
  struct argv_array commit_argv = ARGV_ARRAY_INIT;

  if (!ref->peer_ref)
   continue;

  if (is_null_oid(&ref->peer_ref->new_oid)) {
   if (delete_remote_branch(ref->name, 1) == -1) {
    error("Could not remove %s", ref->name);
    if (helper_status)
     printf("error %s cannot remove\n", ref->name);
    rc = -4;
   }
   else if (helper_status)
    printf("ok %s\n", ref->name);
   new_refs++;
   continue;
  }

  if (oideq(&ref->old_oid, &ref->peer_ref->new_oid)) {
   if (push_verbosely)
    fprintf(stderr, "'%s': up-to-date\n", ref->name);
   if (helper_status)
    printf("ok %s up to date\n", ref->name);
   continue;
  }

  if (!force_all &&
      !is_null_oid(&ref->old_oid) &&
      !ref->force) {
   if (!has_object_file(&ref->old_oid) ||
       !ref_newer(&ref->peer_ref->new_oid,
           &ref->old_oid)) {
    error("remote '%s' is not an ancestor of\n"
          "local '%s'.\n"
          "Maybe you are not up-to-date and "
          "need to pull first?",
          ref->name,
          ref->peer_ref->name);
    if (helper_status)
     printf("error %s non-fast forward\n", ref->name);
    rc = -2;
    continue;
   }
  }
  oidcpy(&ref->new_oid, &ref->peer_ref->new_oid);
  new_refs++;

  fprintf(stderr, "updating '%s'", ref->name);
  if (strcmp(ref->name, ref->peer_ref->name))
   fprintf(stderr, " using '%s'", ref->peer_ref->name);
  fprintf(stderr, "\n  from %s\n  to   %s\n",
   oid_to_hex(&ref->old_oid), oid_to_hex(&ref->new_oid));
  if (dry_run) {
   if (helper_status)
    printf("ok %s\n", ref->name);
   continue;
  }


  ref_lock = lock_remote(ref->name, LOCK_TIME);
  if (ref_lock == ((void*)0)) {
   fprintf(stderr, "Unable to lock remote branch %s\n",
    ref->name);
   if (helper_status)
    printf("error %s lock error\n", ref->name);
   rc = 1;
   continue;
  }


  argv_array_push(&commit_argv, "");
  argv_array_push(&commit_argv, "--objects");
  argv_array_push(&commit_argv, oid_to_hex(&ref->new_oid));
  if (!push_all && !is_null_oid(&ref->old_oid))
   argv_array_pushf(&commit_argv, "^%s",
      oid_to_hex(&ref->old_oid));
  repo_init_revisions(the_repository, &revs, setup_git_directory());
  setup_revisions(commit_argv.argc, commit_argv.argv, &revs, ((void*)0));
  revs.edge_hint = 0;


  pushing = 0;
  if (prepare_revision_walk(&revs))
   die("revision walk setup failed");
  mark_edges_uninteresting(&revs, ((void*)0), 0);
  objects_to_send = get_delta(&revs, ref_lock);
  finish_all_active_slots();



  pushing = 1;
  if (objects_to_send)
   fprintf(stderr, "    sending %d objects\n",
    objects_to_send);

  run_request_queue();


  if (aborted || !update_remote(&ref->new_oid, ref_lock))
   rc = 1;

  if (!rc)
   fprintf(stderr, "    done\n");
  if (helper_status)
   printf("%s %s\n", !rc ? "ok" : "error", ref->name);
  unlock_remote(ref_lock);
  check_locks();
  argv_array_clear(&commit_argv);
 }


 if (repo->has_info_refs && new_refs) {
  if (info_ref_lock && repo->can_update_info_refs) {
   fprintf(stderr, "Updating remote server info\n");
   if (!dry_run)
    update_remote_info_refs(info_ref_lock);
  } else {
   fprintf(stderr, "Unable to update server info\n");
  }
 }

 cleanup:
 if (info_ref_lock)
  unlock_remote(info_ref_lock);
 free(repo);

 http_cleanup();

 request = request_queue_head;
 while (request != ((void*)0)) {
  next_request = request->next;
  release_request(request);
  request = next_request;
 }

 return rc;
}
