
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct opal_msg {int dummy; } ;


 int ERESTARTSYS ;


 int num_lines ;
 int opal_async_get_token_interruptible () ;
 int opal_async_release_token (int) ;
 int opal_async_wait_response (int,struct opal_msg*) ;
 int opal_get_async_rc (struct opal_msg) ;
 int opal_write_oppanel_async (int,int ,int ) ;
 int oppanel_lines ;
 int pr_debug (char*,int) ;

__attribute__((used)) static int __op_panel_update_display(void)
{
 struct opal_msg msg;
 int rc, token;

 token = opal_async_get_token_interruptible();
 if (token < 0) {
  if (token != -ERESTARTSYS)
   pr_debug("Couldn't get OPAL async token [token=%d]\n",
    token);
  return token;
 }

 rc = opal_write_oppanel_async(token, oppanel_lines, num_lines);
 switch (rc) {
 case 129:
  rc = opal_async_wait_response(token, &msg);
  if (rc) {
   pr_debug("Failed to wait for async response [rc=%d]\n",
    rc);
   break;
  }
  rc = opal_get_async_rc(msg);
  if (rc != 128) {
   pr_debug("OPAL async call returned failed [rc=%d]\n",
    rc);
   break;
  }
 case 128:
  break;
 default:
  pr_debug("OPAL write op-panel call failed [rc=%d]\n", rc);
 }

 opal_async_release_token(token);
 return rc;
}
