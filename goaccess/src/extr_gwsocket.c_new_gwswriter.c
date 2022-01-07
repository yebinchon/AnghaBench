
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int GWSWriter ;


 int memset (int *,int ,int) ;
 int * xmalloc (int) ;

GWSWriter *
new_gwswriter (void)
{
  GWSWriter *writer = xmalloc (sizeof (GWSWriter));
  memset (writer, 0, sizeof *writer);

  return writer;
}
