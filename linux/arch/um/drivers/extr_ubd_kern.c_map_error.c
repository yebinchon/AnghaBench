
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int BLK_STS_IOERR ;
 int BLK_STS_NOSPC ;
 int BLK_STS_NOTSUPP ;
 int BLK_STS_OK ;




__attribute__((used)) static int map_error(int error_code)
{
 switch (error_code) {
 case 0:
  return BLK_STS_OK;
 case 129:
 case 128:
  return BLK_STS_NOTSUPP;
 case 130:
  return BLK_STS_NOSPC;
 }
 return BLK_STS_IOERR;
}
