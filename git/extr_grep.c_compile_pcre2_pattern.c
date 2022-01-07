
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct grep_pat {int dummy; } ;
struct grep_opt {int dummy; } ;


 int die (char*) ;

__attribute__((used)) static void compile_pcre2_pattern(struct grep_pat *p, const struct grep_opt *opt)
{





 die("cannot use Perl-compatible regexes when not compiled with USE_LIBPCRE");
}
