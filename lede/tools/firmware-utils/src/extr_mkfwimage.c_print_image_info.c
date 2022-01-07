
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int st_size; } ;
struct TYPE_6__ {int partition_length; TYPE_1__ stats; int partition_name; } ;
typedef TYPE_2__ part_data_t ;
struct TYPE_7__ {int outputfile; int part_count; TYPE_2__* parts; int version; } ;
typedef TYPE_3__ image_info_t ;


 int INFO (char*,int ,int,int) ;

__attribute__((used)) static void print_image_info(const image_info_t* im)
{
 int i = 0;
 INFO("Firmware version: '%s'\n"
      "Output file: '%s'\n"
      "Part count: %u\n",
      im->version, im->outputfile,
      im->part_count);

 for (i = 0; i < im->part_count; ++i)
 {
  const part_data_t* d = &im->parts[i];
  INFO(" %10s: %8ld bytes (free: %8ld)\n",
       d->partition_name,
       d->stats.st_size,
       d->partition_length - d->stats.st_size);
 }
}
