
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct diff_filepair {TYPE_1__* two; } ;
struct TYPE_2__ {char const* path; } ;



__attribute__((used)) static const char *pair_pathtwo(void *obj)
{
 struct diff_filepair *pair = (struct diff_filepair *)obj;

 return pair->two->path;
}
