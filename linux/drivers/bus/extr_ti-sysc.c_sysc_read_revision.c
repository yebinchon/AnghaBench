
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct sysc {int* offsets; } ;


 size_t SYSC_REVISION ;
 int sysc_read (struct sysc*,int) ;

__attribute__((used)) static u32 sysc_read_revision(struct sysc *ddata)
{
 int offset = ddata->offsets[SYSC_REVISION];

 if (offset < 0)
  return 0;

 return sysc_read(ddata, offset);
}
