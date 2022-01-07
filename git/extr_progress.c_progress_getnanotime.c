
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint64_t ;
struct progress {scalar_t__ start_ns; } ;


 scalar_t__ getnanotime () ;
 scalar_t__ progress_test_ns ;
 scalar_t__ progress_testing ;

__attribute__((used)) static uint64_t progress_getnanotime(struct progress *progress)
{
 if (progress_testing)
  return progress->start_ns + progress_test_ns;
 else
  return getnanotime();
}
