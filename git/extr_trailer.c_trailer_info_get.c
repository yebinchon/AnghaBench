
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct trailer_info {char const* trailer_start; char const* trailer_end; char** trailers; size_t trailer_nr; int blank_line_before_trailer; } ;
struct strbuf {int * buf; } ;
struct process_trailer_options {scalar_t__ no_divider; } ;


 int ALLOC_GROW (char**,size_t,size_t) ;
 struct strbuf STRBUF_INIT ;
 int ends_with_blank_line (char const*,int) ;
 int ensure_configured () ;
 int find_patch_start (char const*) ;
 int find_separator (char*,int ) ;
 int find_trailer_end (char const*,int) ;
 int find_trailer_start (char const*,int) ;
 scalar_t__ isspace (int ) ;
 int separators ;
 int strbuf_addbuf (struct strbuf*,struct strbuf*) ;
 int strbuf_attach (struct strbuf*,char*,int,int) ;
 char* strbuf_detach (struct strbuf*,int *) ;
 int strbuf_list_free (struct strbuf**) ;
 struct strbuf** strbuf_split_buf (char const*,int,char,int ) ;
 int strlen (char const*) ;

void trailer_info_get(struct trailer_info *info, const char *str,
        const struct process_trailer_options *opts)
{
 int patch_start, trailer_end, trailer_start;
 struct strbuf **trailer_lines, **ptr;
 char **trailer_strings = ((void*)0);
 size_t nr = 0, alloc = 0;
 char **last = ((void*)0);

 ensure_configured();

 if (opts->no_divider)
  patch_start = strlen(str);
 else
  patch_start = find_patch_start(str);

 trailer_end = find_trailer_end(str, patch_start);
 trailer_start = find_trailer_start(str, trailer_end);

 trailer_lines = strbuf_split_buf(str + trailer_start,
      trailer_end - trailer_start,
      '\n',
      0);
 for (ptr = trailer_lines; *ptr; ptr++) {
  if (last && isspace((*ptr)->buf[0])) {
   struct strbuf sb = STRBUF_INIT;
   strbuf_attach(&sb, *last, strlen(*last), strlen(*last));
   strbuf_addbuf(&sb, *ptr);
   *last = strbuf_detach(&sb, ((void*)0));
   continue;
  }
  ALLOC_GROW(trailer_strings, nr + 1, alloc);
  trailer_strings[nr] = strbuf_detach(*ptr, ((void*)0));
  last = find_separator(trailer_strings[nr], separators) >= 1
   ? &trailer_strings[nr]
   : ((void*)0);
  nr++;
 }
 strbuf_list_free(trailer_lines);

 info->blank_line_before_trailer = ends_with_blank_line(str,
              trailer_start);
 info->trailer_start = str + trailer_start;
 info->trailer_end = str + trailer_end;
 info->trailers = trailer_strings;
 info->trailer_nr = nr;
}
