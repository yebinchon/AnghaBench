
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int FILE ;


 int die (char*) ;
 scalar_t__ fwrite (void const*,size_t,size_t,int *) ;

__attribute__((used)) static void print(const void *ptr, size_t size, size_t nmemb, FILE *stream)
{
 if( fwrite(ptr, size, nmemb, stream) == 0 )
  die("Failed to write stdout");
}
