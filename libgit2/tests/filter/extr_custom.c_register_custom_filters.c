
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int BITFLIP_FILTER_PRIORITY ;
 int GIT_FILTER_DRIVER_PRIORITY ;
 int REVERSE_FILTER_PRIORITY ;
 int cl_git_pass (int ) ;
 int create_bitflip_filter () ;
 int create_erroneous_filter (char*) ;
 int create_reverse_filter (char*) ;
 int git_filter_register (char*,int ,int ) ;

__attribute__((used)) static void register_custom_filters(void)
{
 static int filters_registered = 0;

 if (!filters_registered) {
  cl_git_pass(git_filter_register(
   "bitflip", create_bitflip_filter(), BITFLIP_FILTER_PRIORITY));

  cl_git_pass(git_filter_register(
   "reverse", create_reverse_filter("+reverse"),
   REVERSE_FILTER_PRIORITY));


  cl_git_pass(git_filter_register(
   "pre-reverse",
   create_reverse_filter("+prereverse"),
   GIT_FILTER_DRIVER_PRIORITY));

  cl_git_pass(git_filter_register(
   "erroneous",
   create_erroneous_filter("+erroneous"),
   GIT_FILTER_DRIVER_PRIORITY));

  filters_registered = 1;
 }
}
