
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int path; } ;
typedef TYPE_1__ filesystem_iterator_entry ;


 int git__strcasecmp (int ,int ) ;

__attribute__((used)) static int filesystem_iterator_entry_cmp_icase(const void *_a, const void *_b)
{
 const filesystem_iterator_entry *a = (const filesystem_iterator_entry *)_a;
 const filesystem_iterator_entry *b = (const filesystem_iterator_entry *)_b;

 return git__strcasecmp(a->path, b->path);
}
