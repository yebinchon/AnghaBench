
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int UInt64 ;
struct TYPE_3__ {size_t num; int * streams; } ;
typedef TYPE_1__ CXzs ;


 int ADD_SIZE_CHECK (int ,int ) ;
 int Xz_GetUnpackSize (int *) ;

UInt64 Xzs_GetUnpackSize(const CXzs *p)
{
  UInt64 size = 0;
  size_t i;
  for (i = 0; i < p->num; i++)
    ADD_SIZE_CHECK(size, Xz_GetUnpackSize(&p->streams[i]));
  return size;
}
