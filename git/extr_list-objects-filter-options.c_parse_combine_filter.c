
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct strbuf {int len; char* buf; } ;
struct list_objects_filter_options {int choice; } ;


 int LOFC_COMBINE ;
 int _ (char*) ;
 int assert (int) ;
 int list_objects_filter_release (struct list_objects_filter_options*) ;
 int memset (struct list_objects_filter_options*,int ,int) ;
 int parse_combine_subfilter (struct list_objects_filter_options*,struct strbuf*,struct strbuf*) ;
 int strbuf_addstr (struct strbuf*,int ) ;
 int strbuf_list_free (struct strbuf**) ;
 int strbuf_remove (struct strbuf*,size_t,int) ;
 struct strbuf** strbuf_split_str (char const*,char,int ) ;

__attribute__((used)) static int parse_combine_filter(
 struct list_objects_filter_options *filter_options,
 const char *arg,
 struct strbuf *errbuf)
{
 struct strbuf **subspecs = strbuf_split_str(arg, '+', 0);
 size_t sub;
 int result = 0;

 if (!subspecs[0]) {
  strbuf_addstr(errbuf, _("expected something after combine:"));
  result = 1;
  goto cleanup;
 }

 for (sub = 0; subspecs[sub] && !result; sub++) {
  if (subspecs[sub + 1]) {




   size_t last = subspecs[sub]->len - 1;
   assert(subspecs[sub]->buf[last] == '+');
   strbuf_remove(subspecs[sub], last, 1);
  }
  result = parse_combine_subfilter(
   filter_options, subspecs[sub], errbuf);
 }

 filter_options->choice = LOFC_COMBINE;

cleanup:
 strbuf_list_free(subspecs);
 if (result) {
  list_objects_filter_release(filter_options);
  memset(filter_options, 0, sizeof(*filter_options));
 }
 return result;
}
