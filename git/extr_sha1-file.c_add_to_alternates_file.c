
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct strbuf {char const* buf; } ;
struct lock_file {int dummy; } ;
struct TYPE_5__ {TYPE_1__* objects; } ;
struct TYPE_4__ {scalar_t__ loaded_alternates; } ;
typedef int FILE ;


 scalar_t__ ENOENT ;
 scalar_t__ EOF ;
 int LOCK_DIE_ON_ERROR ;
 struct lock_file LOCK_INIT ;
 struct strbuf STRBUF_INIT ;
 int _ (char*) ;
 scalar_t__ commit_lock_file (struct lock_file*) ;
 int die_errno (int ) ;
 scalar_t__ errno ;
 int fclose (int *) ;
 int * fdopen_lock_file (struct lock_file*,char*) ;
 int * fopen (char*,char*) ;
 int fprintf_or_die (int *,char*,char const*) ;
 int free (char*) ;
 char* git_pathdup (char*) ;
 int hold_lock_file_for_update (struct lock_file*,char*,int ) ;
 int link_alt_odb_entries (TYPE_2__*,char const*,char,int *,int ) ;
 int rollback_lock_file (struct lock_file*) ;
 scalar_t__ strbuf_getline (struct strbuf*,int *) ;
 int strbuf_release (struct strbuf*) ;
 int strcmp (char const*,char const*) ;
 TYPE_2__* the_repository ;

void add_to_alternates_file(const char *reference)
{
 struct lock_file lock = LOCK_INIT;
 char *alts = git_pathdup("objects/info/alternates");
 FILE *in, *out;
 int found = 0;

 hold_lock_file_for_update(&lock, alts, LOCK_DIE_ON_ERROR);
 out = fdopen_lock_file(&lock, "w");
 if (!out)
  die_errno(_("unable to fdopen alternates lockfile"));

 in = fopen(alts, "r");
 if (in) {
  struct strbuf line = STRBUF_INIT;

  while (strbuf_getline(&line, in) != EOF) {
   if (!strcmp(reference, line.buf)) {
    found = 1;
    break;
   }
   fprintf_or_die(out, "%s\n", line.buf);
  }

  strbuf_release(&line);
  fclose(in);
 }
 else if (errno != ENOENT)
  die_errno(_("unable to read alternates file"));

 if (found) {
  rollback_lock_file(&lock);
 } else {
  fprintf_or_die(out, "%s\n", reference);
  if (commit_lock_file(&lock))
   die_errno(_("unable to move new alternates file into place"));
  if (the_repository->objects->loaded_alternates)
   link_alt_odb_entries(the_repository, reference,
          '\n', ((void*)0), 0);
 }
 free(alts);
}
