
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int temp ;
struct strbuf_expand_dict_entry {char* placeholder; char* value; } ;
struct strbuf {char* buf; } ;
struct stat {int st_size; } ;
struct ll_merge_options {int dummy; } ;
struct ll_merge_driver {int * cmdline; int name; } ;
typedef int mmfile_t ;
struct TYPE_3__ {int size; int * ptr; } ;
typedef TYPE_1__ mmbuffer_t ;


 int FREE_AND_NULL (int *) ;
 int O_RDONLY ;
 int RUN_USING_SHELL ;
 struct strbuf STRBUF_INIT ;
 int assert (struct ll_merge_options const*) ;
 int close (int) ;
 int create_temp (int *,char*,int) ;
 int die (char*,int ) ;
 scalar_t__ fstat (int,struct stat*) ;
 int open (char*,int ) ;
 int read_in_full (int,int *,int ) ;
 int run_command_v_opt (char const**,int ) ;
 int sq_quote_buf (struct strbuf*,char const*) ;
 int strbuf_expand (struct strbuf*,int *,int ,struct strbuf_expand_dict_entry**) ;
 int strbuf_expand_dict_cb ;
 int strbuf_release (struct strbuf*) ;
 int unlink_or_warn (char*) ;
 int * xmallocz (int ) ;
 int xsnprintf (char*,int,char*,int) ;

__attribute__((used)) static int ll_ext_merge(const struct ll_merge_driver *fn,
   mmbuffer_t *result,
   const char *path,
   mmfile_t *orig, const char *orig_name,
   mmfile_t *src1, const char *name1,
   mmfile_t *src2, const char *name2,
   const struct ll_merge_options *opts,
   int marker_size)
{
 char temp[4][50];
 struct strbuf cmd = STRBUF_INIT;
 struct strbuf_expand_dict_entry dict[6];
 struct strbuf path_sq = STRBUF_INIT;
 const char *args[] = { ((void*)0), ((void*)0) };
 int status, fd, i;
 struct stat st;
 assert(opts);

 sq_quote_buf(&path_sq, path);
 dict[0].placeholder = "O"; dict[0].value = temp[0];
 dict[1].placeholder = "A"; dict[1].value = temp[1];
 dict[2].placeholder = "B"; dict[2].value = temp[2];
 dict[3].placeholder = "L"; dict[3].value = temp[3];
 dict[4].placeholder = "P"; dict[4].value = path_sq.buf;
 dict[5].placeholder = ((void*)0); dict[5].value = ((void*)0);

 if (fn->cmdline == ((void*)0))
  die("custom merge driver %s lacks command line.", fn->name);

 result->ptr = ((void*)0);
 result->size = 0;
 create_temp(orig, temp[0], sizeof(temp[0]));
 create_temp(src1, temp[1], sizeof(temp[1]));
 create_temp(src2, temp[2], sizeof(temp[2]));
 xsnprintf(temp[3], sizeof(temp[3]), "%d", marker_size);

 strbuf_expand(&cmd, fn->cmdline, strbuf_expand_dict_cb, &dict);

 args[0] = cmd.buf;
 status = run_command_v_opt(args, RUN_USING_SHELL);
 fd = open(temp[1], O_RDONLY);
 if (fd < 0)
  goto bad;
 if (fstat(fd, &st))
  goto close_bad;
 result->size = st.st_size;
 result->ptr = xmallocz(result->size);
 if (read_in_full(fd, result->ptr, result->size) != result->size) {
  FREE_AND_NULL(result->ptr);
  result->size = 0;
 }
 close_bad:
 close(fd);
 bad:
 for (i = 0; i < 3; i++)
  unlink_or_warn(temp[i]);
 strbuf_release(&cmd);
 strbuf_release(&path_sq);
 return status;
}
