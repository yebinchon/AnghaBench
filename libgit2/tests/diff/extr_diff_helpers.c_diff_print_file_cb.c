
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int git_diff_delta ;
struct TYPE_2__ {int debug; } ;
typedef TYPE_1__ diff_expects ;


 int diff_file_cb (int const*,float,void*) ;
 int fprintf_delta (int ,int const*,float) ;
 int stderr ;

int diff_print_file_cb(
 const git_diff_delta *delta,
 float progress,
 void *payload)
{
 if (!payload) {
  fprintf_delta(stderr, delta, progress);
  return 0;
 }

 if (!((diff_expects *)payload)->debug)
  fprintf_delta(stderr, delta, progress);

 return diff_file_cb(delta, progress, payload);
}
