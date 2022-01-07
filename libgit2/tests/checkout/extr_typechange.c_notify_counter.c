
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int ignored; int untracked; int updates; int dirty; int conflicts; } ;
typedef TYPE_1__ notify_counts ;
typedef char git_diff_file ;
typedef int git_checkout_notify_t ;







 int GIT_UNUSED (char const*) ;

__attribute__((used)) static int notify_counter(
 git_checkout_notify_t why,
 const char *path,
 const git_diff_file *baseline,
 const git_diff_file *target,
 const git_diff_file *workdir,
 void *payload)
{
 notify_counts *cts = payload;

 GIT_UNUSED(path);
 GIT_UNUSED(baseline);
 GIT_UNUSED(target);
 GIT_UNUSED(workdir);

 switch (why) {
 case 132: cts->conflicts++; break;
 case 131: cts->dirty++; break;
 case 128: cts->updates++; break;
 case 129: cts->untracked++; break;
 case 130: cts->ignored++; break;
 default: break;
 }

 return 0;
}
