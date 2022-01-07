
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct grep_opt {int dummy; } ;


 int fwrite (void const*,size_t,int,int ) ;
 int stdout ;

__attribute__((used)) static void std_output(struct grep_opt *opt, const void *buf, size_t size)
{
 fwrite(buf, size, 1, stdout);
}
