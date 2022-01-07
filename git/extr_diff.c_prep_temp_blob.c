
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct strbuf {unsigned long len; void* buf; } ;
struct object_id {int dummy; } ;
struct index_state {int dummy; } ;
struct diff_tempfile {int mode; int hex; TYPE_1__* tempfile; int name; } ;
struct TYPE_4__ {int fd; } ;


 struct strbuf STRBUF_INIT ;
 char* basename (char*) ;
 scalar_t__ close_tempfile_gently (TYPE_1__*) ;
 scalar_t__ convert_to_working_tree (struct index_state*,char const*,char const*,size_t,struct strbuf*) ;
 int die_errno (char*) ;
 int free (char*) ;
 int get_tempfile_path (TYPE_1__*) ;
 TYPE_1__* mks_tempfile_ts (void*,scalar_t__) ;
 int oid_to_hex_r (int ,struct object_id const*) ;
 int strbuf_addstr (struct strbuf*,char const*) ;
 int strbuf_release (struct strbuf*) ;
 scalar_t__ strlen (char const*) ;
 scalar_t__ write_in_full (int ,void*,unsigned long) ;
 int xsnprintf (int ,int,char*,int) ;
 char* xstrdup (char const*) ;

__attribute__((used)) static void prep_temp_blob(struct index_state *istate,
      const char *path, struct diff_tempfile *temp,
      void *blob,
      unsigned long size,
      const struct object_id *oid,
      int mode)
{
 struct strbuf buf = STRBUF_INIT;
 struct strbuf tempfile = STRBUF_INIT;
 char *path_dup = xstrdup(path);
 const char *base = basename(path_dup);


 strbuf_addstr(&tempfile, "XXXXXX_");
 strbuf_addstr(&tempfile, base);

 temp->tempfile = mks_tempfile_ts(tempfile.buf, strlen(base) + 1);
 if (!temp->tempfile)
  die_errno("unable to create temp-file");
 if (convert_to_working_tree(istate, path,
   (const char *)blob, (size_t)size, &buf)) {
  blob = buf.buf;
  size = buf.len;
 }
 if (write_in_full(temp->tempfile->fd, blob, size) < 0 ||
     close_tempfile_gently(temp->tempfile))
  die_errno("unable to write temp-file");
 temp->name = get_tempfile_path(temp->tempfile);
 oid_to_hex_r(temp->hex, oid);
 xsnprintf(temp->mode, sizeof(temp->mode), "%06o", mode);
 strbuf_release(&buf);
 strbuf_release(&tempfile);
 free(path_dup);
}
