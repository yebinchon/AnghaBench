
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int GWSReader ;


 int memset (int *,int ,int) ;
 int * xmalloc (int) ;

GWSReader *
new_gwsreader (void)
{
  GWSReader *reader = xmalloc (sizeof (GWSReader));
  memset (reader, 0, sizeof *reader);

  return reader;
}
