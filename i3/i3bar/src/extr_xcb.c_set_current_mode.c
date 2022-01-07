
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mode {int * name; } ;


 int I3STRING_FREE (int *) ;
 int activated_mode ;
 struct mode binding ;

void set_current_mode(struct mode *current) {
    I3STRING_FREE(binding.name);
    binding = *current;
    activated_mode = binding.name != ((void*)0);
}
