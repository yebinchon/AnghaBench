
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u64 ;
struct opal_dev {int dummy; } ;
typedef enum opal_uid { ____Placeholder_opal_uid } opal_uid ;


 size_t OPAL_TABLE_TABLE ;
 int OPAL_UID_LENGTH ;
 int generic_get_column (struct opal_dev*,int *,int ) ;
 int memcpy (int *,int ,unsigned int const) ;
 int * opaluid ;

__attribute__((used)) static int generic_get_table_info(struct opal_dev *dev, enum opal_uid table,
      u64 column)
{
 u8 uid[OPAL_UID_LENGTH];
 const unsigned int half = OPAL_UID_LENGTH/2;







 memcpy(uid, opaluid[OPAL_TABLE_TABLE], half);
 memcpy(uid+half, opaluid[table], half);

 return generic_get_column(dev, uid, column);
}
