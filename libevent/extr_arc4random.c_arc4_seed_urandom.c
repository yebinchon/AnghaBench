
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ arc4_seed_urandom_helper_ (char const*) ;
 char const* arc4random_urandom_filename ;

__attribute__((used)) static int
arc4_seed_urandom(void)
{

 static const char *filenames[] = {
  "/dev/srandom", "/dev/urandom", "/dev/random", ((void*)0)
 };
 int i;
 if (arc4random_urandom_filename)
  return arc4_seed_urandom_helper_(arc4random_urandom_filename);

 for (i = 0; filenames[i]; ++i) {
  if (arc4_seed_urandom_helper_(filenames[i]) == 0) {
   return 0;
  }
 }

 return -1;
}
