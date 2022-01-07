
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct opal_dev {size_t pos; } ;


 int * add_bytestring_header (int*,struct opal_dev*,size_t) ;
 int memcpy (int *,int const*,size_t) ;

__attribute__((used)) static void add_token_bytestring(int *err, struct opal_dev *cmd,
     const u8 *bytestring, size_t len)
{
 u8 *start;

 start = add_bytestring_header(err, cmd, len);
 if (!start)
  return;
 memcpy(start, bytestring, len);
 cmd->pos += len;
}
