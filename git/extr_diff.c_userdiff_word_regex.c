
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct index_state {int dummy; } ;
struct diff_filespec {TYPE_1__* driver; } ;
struct TYPE_2__ {char const* word_regex; } ;


 int diff_filespec_load_driver (struct diff_filespec*,struct index_state*) ;

__attribute__((used)) static const char *userdiff_word_regex(struct diff_filespec *one,
           struct index_state *istate)
{
 diff_filespec_load_driver(one, istate);
 return one->driver->word_regex;
}
