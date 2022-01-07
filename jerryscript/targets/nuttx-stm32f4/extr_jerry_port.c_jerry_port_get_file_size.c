
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int FILE ;


 int SEEK_END ;
 int SEEK_SET ;
 int fseek (int *,int ,int ) ;
 long ftell (int *) ;

__attribute__((used)) static size_t
jerry_port_get_file_size (FILE *file_p)
{
  fseek (file_p, 0, SEEK_END);
  long size = ftell (file_p);
  fseek (file_p, 0, SEEK_SET);

  return (size_t) size;
}
