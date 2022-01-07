
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct diff_options {int dummy; } ;


 int diff_flush (struct diff_options*) ;
 int diff_queue (int *,int ,int ) ;
 int diff_queued_diff ;
 int diffcore_std (struct diff_options*) ;
 int get_filespec (char*,char const*) ;

__attribute__((used)) static void patch_diff(const char *a, const char *b,
         struct diff_options *diffopt)
{
 diff_queue(&diff_queued_diff,
     get_filespec("a", a), get_filespec("b", b));

 diffcore_std(diffopt);
 diff_flush(diffopt);
}
