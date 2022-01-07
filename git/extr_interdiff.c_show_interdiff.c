
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct strbuf {int dummy; } ;
struct rev_info {int idiff_oid2; int idiff_oid1; int diffopt; } ;
struct diff_options {struct strbuf* output_prefix_data; int output_prefix; int output_format; } ;
typedef int opts ;


 int DIFF_FORMAT_PATCH ;
 struct strbuf STRBUF_INIT ;
 int diff_flush (struct diff_options*) ;
 int diff_setup_done (struct diff_options*) ;
 int diff_tree_oid (int ,int ,char*,struct diff_options*) ;
 int diffcore_std (struct diff_options*) ;
 int idiff_prefix_cb ;
 int memcpy (struct diff_options*,int *,int) ;
 int strbuf_addchars (struct strbuf*,char,int) ;
 int strbuf_release (struct strbuf*) ;

void show_interdiff(struct rev_info *rev, int indent)
{
 struct diff_options opts;
 struct strbuf prefix = STRBUF_INIT;

 memcpy(&opts, &rev->diffopt, sizeof(opts));
 opts.output_format = DIFF_FORMAT_PATCH;
 opts.output_prefix = idiff_prefix_cb;
 strbuf_addchars(&prefix, ' ', indent);
 opts.output_prefix_data = &prefix;
 diff_setup_done(&opts);

 diff_tree_oid(rev->idiff_oid1, rev->idiff_oid2, "", &opts);
 diffcore_std(&opts);
 diff_flush(&opts);

 strbuf_release(&prefix);
}
