
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct strbuf {scalar_t__ len; scalar_t__ buf; } ;
struct process_trailer_options {scalar_t__ in_place; int only_trailers; int only_input; } ;
struct list_head {int dummy; } ;
typedef int FILE ;


 int LIST_HEAD (int ) ;
 struct strbuf STRBUF_INIT ;
 int _ (char*) ;
 int arg_head ;
 int * create_in_place_tempfile (char const*) ;
 int die_errno (int ,char const*) ;
 int ensure_configured () ;
 int free_all (int *) ;
 int fwrite (scalar_t__,int,scalar_t__,int *) ;
 int head ;
 int print_all (int *,int *,struct process_trailer_options const*) ;
 int process_command_line_args (int *,struct list_head*) ;
 size_t process_input_file (int *,scalar_t__,int *,struct process_trailer_options const*) ;
 int process_trailers_lists (int *,int *) ;
 int read_input_file (struct strbuf*,char const*) ;
 scalar_t__ rename_tempfile (int *,char const*) ;
 int * stdout ;
 int strbuf_release (struct strbuf*) ;
 int trailers_tempfile ;

void process_trailers(const char *file,
        const struct process_trailer_options *opts,
        struct list_head *new_trailer_head)
{
 LIST_HEAD(head);
 struct strbuf sb = STRBUF_INIT;
 size_t trailer_end;
 FILE *outfile = stdout;

 ensure_configured();

 read_input_file(&sb, file);

 if (opts->in_place)
  outfile = create_in_place_tempfile(file);


 trailer_end = process_input_file(outfile, sb.buf, &head, opts);

 if (!opts->only_input) {
  LIST_HEAD(arg_head);
  process_command_line_args(&arg_head, new_trailer_head);
  process_trailers_lists(&head, &arg_head);
 }

 print_all(outfile, &head, opts);

 free_all(&head);


 if (!opts->only_trailers)
  fwrite(sb.buf + trailer_end, 1, sb.len - trailer_end, outfile);

 if (opts->in_place)
  if (rename_tempfile(&trailers_tempfile, file))
   die_errno(_("could not rename temporary file to %s"), file);

 strbuf_release(&sb);
}
