
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ failed ;
 int * outfile ;
 int unlink (int *) ;

__attribute__((used)) static void cleanup(void)
{
 if (failed && outfile != ((void*)0))
  unlink(outfile);
}
