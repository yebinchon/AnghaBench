
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct opal_key {int key_len; int const* key; } ;
struct opal_dev {int * prev_data; int prev_d_len; } ;


 int OPAL_ADMINSP_UID ;
 int OPAL_SID_UID ;
 int kfree (int const*) ;
 int start_generic_opal_session (struct opal_dev*,int ,int ,int const*,int ) ;

__attribute__((used)) static int start_SIDASP_opal_session(struct opal_dev *dev, void *data)
{
 int ret;
 const u8 *key = dev->prev_data;

 if (!key) {
  const struct opal_key *okey = data;

  ret = start_generic_opal_session(dev, OPAL_SID_UID,
       OPAL_ADMINSP_UID,
       okey->key,
       okey->key_len);
 } else {
  ret = start_generic_opal_session(dev, OPAL_SID_UID,
       OPAL_ADMINSP_UID,
       key, dev->prev_d_len);
  kfree(key);
  dev->prev_data = ((void*)0);
 }

 return ret;
}
