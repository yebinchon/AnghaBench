
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int opt_retain ;

__attribute__((used)) static bool
extent_may_dalloc(void) {

 return !opt_retain;
}
