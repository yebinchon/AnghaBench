
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {char const* data; size_t size; } ;
struct TYPE_6__ {TYPE_1__ raw; } ;
struct TYPE_7__ {int raw; TYPE_2__ data; } ;
typedef TYPE_3__ git_blob ;


 int assert (TYPE_3__*) ;

int git_blob__parse_raw(void *_blob, const char *data, size_t size)
{
 git_blob *blob = (git_blob *) _blob;
 assert(blob);
 blob->raw = 1;
 blob->data.raw.data = data;
 blob->data.raw.size = size;
 return 0;
}
