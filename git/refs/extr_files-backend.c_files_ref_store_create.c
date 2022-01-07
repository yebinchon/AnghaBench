
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct strbuf {int buf; } ;
struct ref_store {int dummy; } ;
struct files_ref_store {unsigned int store_flags; int gitcommondir; int gitdir; int packed_ref_store; } ;


 struct strbuf STRBUF_INIT ;
 int base_ref_store_init (struct ref_store*,int *) ;
 int chdir_notify_reparent (char*,int *) ;
 int get_common_dir_noenv (struct strbuf*,char const*) ;
 int packed_ref_store_create (int ,unsigned int) ;
 int refs_be_files ;
 int strbuf_addf (struct strbuf*,char*,int ) ;
 int strbuf_detach (struct strbuf*,int *) ;
 int strbuf_release (struct strbuf*) ;
 struct files_ref_store* xcalloc (int,int) ;
 int xstrdup (char const*) ;

__attribute__((used)) static struct ref_store *files_ref_store_create(const char *gitdir,
      unsigned int flags)
{
 struct files_ref_store *refs = xcalloc(1, sizeof(*refs));
 struct ref_store *ref_store = (struct ref_store *)refs;
 struct strbuf sb = STRBUF_INIT;

 base_ref_store_init(ref_store, &refs_be_files);
 refs->store_flags = flags;

 refs->gitdir = xstrdup(gitdir);
 get_common_dir_noenv(&sb, gitdir);
 refs->gitcommondir = strbuf_detach(&sb, ((void*)0));
 strbuf_addf(&sb, "%s/packed-refs", refs->gitcommondir);
 refs->packed_ref_store = packed_ref_store_create(sb.buf, flags);
 strbuf_release(&sb);

 chdir_notify_reparent("files-backend $GIT_DIR",
         &refs->gitdir);
 chdir_notify_reparent("files-backend $GIT_COMMONDIR",
         &refs->gitcommondir);

 return ref_store;
}
