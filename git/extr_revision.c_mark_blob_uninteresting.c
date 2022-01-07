
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int flags; } ;
struct blob {TYPE_1__ object; } ;


 int UNINTERESTING ;

__attribute__((used)) static void mark_blob_uninteresting(struct blob *blob)
{
 if (!blob)
  return;
 if (blob->object.flags & UNINTERESTING)
  return;
 blob->object.flags |= UNINTERESTING;
}
