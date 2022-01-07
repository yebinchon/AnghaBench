
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fwimage_trailer {int size; int type; } ;


 int FWIMAGE_SIGNATURE ;
 int SIGNATURE_MAXLEN ;
 scalar_t__ append_data (int ,int ,struct fwimage_trailer*,int ) ;
 int append_trailer (int ,struct fwimage_trailer*) ;
 int firmware_file ;
 int signature_file ;

__attribute__((used)) static int
add_signature(struct fwimage_trailer *tr)
{
 if (!signature_file)
  return 0;

 tr->type = FWIMAGE_SIGNATURE;
 tr->size = sizeof(*tr);

 if (append_data(signature_file, firmware_file, tr, SIGNATURE_MAXLEN))
  return 1;

 append_trailer(firmware_file, tr);

 return 0;
}
