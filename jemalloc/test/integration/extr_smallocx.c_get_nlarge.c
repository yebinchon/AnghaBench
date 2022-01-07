
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int get_nsizes_impl (char*) ;

__attribute__((used)) static unsigned
get_nlarge(void) {
 return get_nsizes_impl("arenas.nlextents");
}
