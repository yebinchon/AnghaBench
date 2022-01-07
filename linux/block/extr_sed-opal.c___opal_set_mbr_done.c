
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct opal_key {int dummy; } ;
typedef struct opal_key u8 ;
struct opal_step {int member_0; struct opal_key* member_1; } ;
struct opal_dev {int dummy; } ;


 int ARRAY_SIZE (struct opal_step const*) ;
 struct opal_key OPAL_TRUE ;
 int end_opal_session ;
 int execute_steps (struct opal_dev*,struct opal_step const*,int ) ;
 int set_mbr_done ;
 int start_admin1LSP_opal_session ;

__attribute__((used)) static int __opal_set_mbr_done(struct opal_dev *dev, struct opal_key *key)
{
 u8 mbr_done_tf = OPAL_TRUE;
 const struct opal_step mbrdone_step[] = {
  { start_admin1LSP_opal_session, key },
  { set_mbr_done, &mbr_done_tf },
  { end_opal_session, }
 };

 return execute_steps(dev, mbrdone_step, ARRAY_SIZE(mbrdone_step));
}
