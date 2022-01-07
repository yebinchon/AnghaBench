
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct strbuf {int len; int buf; } ;
struct object_id {int dummy; } ;
struct index_state {int dummy; } ;


 unsigned int HASH_WRITE_OBJECT ;
 int OBJ_BLOB ;
 struct strbuf STRBUF_INIT ;
 int assert (char const*) ;
 int convert_to_git_filter_fd (struct index_state*,char const*,int,struct strbuf*,int ) ;
 int get_conv_flags (unsigned int) ;
 int hash_object_file (int ,int ,int ,struct object_id*) ;
 int strbuf_release (struct strbuf*) ;
 int type_name (int ) ;
 char const* would_convert_to_git_filter_fd (struct index_state*,char const*) ;
 int write_object_file (int ,int ,int ,struct object_id*) ;

__attribute__((used)) static int index_stream_convert_blob(struct index_state *istate,
         struct object_id *oid,
         int fd,
         const char *path,
         unsigned flags)
{
 int ret;
 const int write_object = flags & HASH_WRITE_OBJECT;
 struct strbuf sbuf = STRBUF_INIT;

 assert(path);
 assert(would_convert_to_git_filter_fd(istate, path));

 convert_to_git_filter_fd(istate, path, fd, &sbuf,
     get_conv_flags(flags));

 if (write_object)
  ret = write_object_file(sbuf.buf, sbuf.len, type_name(OBJ_BLOB),
     oid);
 else
  ret = hash_object_file(sbuf.buf, sbuf.len, type_name(OBJ_BLOB),
           oid);
 strbuf_release(&sbuf);
 return ret;
}
