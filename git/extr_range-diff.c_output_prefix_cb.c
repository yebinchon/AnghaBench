
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef void strbuf ;
struct diff_options {int dummy; } ;



__attribute__((used)) static struct strbuf *output_prefix_cb(struct diff_options *opt, void *data)
{
 return data;
}
