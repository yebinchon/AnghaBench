
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct warn_if_dangling_data {char const* msg_fmt; struct string_list const* refnames; int * refname; int * fp; } ;
struct string_list {int dummy; } ;
typedef int FILE ;


 int for_each_rawref (int ,struct warn_if_dangling_data*) ;
 int warn_if_dangling_symref ;

void warn_dangling_symrefs(FILE *fp, const char *msg_fmt, const struct string_list *refnames)
{
 struct warn_if_dangling_data data;

 data.fp = fp;
 data.refname = ((void*)0);
 data.refnames = refnames;
 data.msg_fmt = msg_fmt;
 for_each_rawref(warn_if_dangling_symref, &data);
}
