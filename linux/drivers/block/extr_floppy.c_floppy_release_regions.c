
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ARRAY_END (int ) ;
 int floppy_release_allocated_regions (int,int ) ;
 int io_regions ;

__attribute__((used)) static void floppy_release_regions(int fdc)
{
 floppy_release_allocated_regions(fdc, ARRAY_END(io_regions));
}
