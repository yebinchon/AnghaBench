
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int debug_info_t ;


 int S_IRUSR ;
 int S_IWUSR ;
 int * debug_register_mode (char const*,int,int,int,int,int ,int ) ;

debug_info_t *debug_register(const char *name, int pages_per_area,
        int nr_areas, int buf_size)
{
 return debug_register_mode(name, pages_per_area, nr_areas, buf_size,
       S_IRUSR | S_IWUSR, 0, 0);
}
