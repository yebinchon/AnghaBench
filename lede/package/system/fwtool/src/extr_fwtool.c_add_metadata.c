
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fwimage_trailer {int size; int type; } ;
struct fwimage_header {int dummy; } ;
typedef int hdr ;


 int FWIMAGE_INFO ;
 int METADATA_MAXLEN ;
 scalar_t__ append_data (int ,int ,struct fwimage_trailer*,int ) ;
 int append_trailer (int ,struct fwimage_trailer*) ;
 int firmware_file ;
 int fwrite (struct fwimage_header*,int,int,int ) ;
 int metadata_file ;
 int trailer_update_crc (struct fwimage_trailer*,struct fwimage_header*,int) ;

__attribute__((used)) static int
add_metadata(struct fwimage_trailer *tr)
{
 struct fwimage_header hdr = {};

 tr->type = FWIMAGE_INFO;
 tr->size = sizeof(hdr) + sizeof(*tr);

 trailer_update_crc(tr, &hdr, sizeof(hdr));
 fwrite(&hdr, sizeof(hdr), 1, firmware_file);

 if (append_data(metadata_file, firmware_file, tr, METADATA_MAXLEN))
  return 1;

 append_trailer(firmware_file, tr);

 return 0;
}
