
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct warn_if_dangling_data {char const* refname; char const* msg_fmt; int * refnames; int * fp; } ;
typedef int FILE ;


 int for_each_rawref (int ,struct warn_if_dangling_data*) ;
 int warn_if_dangling_symref ;

void warn_dangling_symref(FILE *fp, const char *msg_fmt, const char *refname)
{
 struct warn_if_dangling_data data;

 data.fp = fp;
 data.refname = refname;
 data.refnames = ((void*)0);
 data.msg_fmt = msg_fmt;
 for_each_rawref(warn_if_dangling_symref, &data);
}
