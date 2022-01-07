
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int git_iterator ;


 int iterator_range_free (int *) ;
 int iterator_range_init (int *,char const*,char const*) ;

__attribute__((used)) static int iterator_reset_range(
 git_iterator *iter, const char *start, const char *end)
{
 iterator_range_free(iter);
 return iterator_range_init(iter, start, end);
}
