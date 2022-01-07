
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u64 ;
struct opal_dev {int dummy; } ;


 int OPAL_ENDCOLUMN ;
 int OPAL_ENDLIST ;
 int OPAL_ENDNAME ;
 size_t OPAL_GET ;
 int OPAL_STARTCOLUMN ;
 int OPAL_STARTLIST ;
 int OPAL_STARTNAME ;
 int add_token_u64 (int*,struct opal_dev*,int ) ;
 int add_token_u8 (int*,struct opal_dev*,int ) ;
 int cmd_start (struct opal_dev*,int const*,int ) ;
 int finalize_and_send (struct opal_dev*,int ) ;
 int * opalmethod ;
 int parse_and_check_status ;

__attribute__((used)) static int generic_get_column(struct opal_dev *dev, const u8 *table,
         u64 column)
{
 int err;

 err = cmd_start(dev, table, opalmethod[OPAL_GET]);

 add_token_u8(&err, dev, OPAL_STARTLIST);

 add_token_u8(&err, dev, OPAL_STARTNAME);
 add_token_u8(&err, dev, OPAL_STARTCOLUMN);
 add_token_u64(&err, dev, column);
 add_token_u8(&err, dev, OPAL_ENDNAME);

 add_token_u8(&err, dev, OPAL_STARTNAME);
 add_token_u8(&err, dev, OPAL_ENDCOLUMN);
 add_token_u64(&err, dev, column);
 add_token_u8(&err, dev, OPAL_ENDNAME);

 add_token_u8(&err, dev, OPAL_ENDLIST);

 if (err)
  return err;

 return finalize_and_send(dev, parse_and_check_status);
}
