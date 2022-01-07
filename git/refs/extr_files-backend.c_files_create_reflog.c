
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct strbuf {int dummy; } ;
struct ref_store {int dummy; } ;
struct files_ref_store {int dummy; } ;


 int REF_STORE_WRITE ;
 int close (int) ;
 struct files_ref_store* files_downcast (struct ref_store*,int ,char*) ;
 scalar_t__ log_ref_setup (struct files_ref_store*,char const*,int,int*,struct strbuf*) ;

__attribute__((used)) static int files_create_reflog(struct ref_store *ref_store,
          const char *refname, int force_create,
          struct strbuf *err)
{
 struct files_ref_store *refs =
  files_downcast(ref_store, REF_STORE_WRITE, "create_reflog");
 int fd;

 if (log_ref_setup(refs, refname, force_create, &fd, err))
  return -1;

 if (fd >= 0)
  close(fd);

 return 0;
}
