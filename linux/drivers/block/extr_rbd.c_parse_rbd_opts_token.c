
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_9__ {int from; } ;
typedef TYPE_3__ substring_t ;
struct parse_rbd_opts_ctx {TYPE_2__* opts; TYPE_1__* spec; } ;
struct TYPE_8__ {int queue_depth; int alloc_size; int read_only; int lock_on_read; int exclusive; int trim; int lock_timeout; } ;
struct TYPE_7__ {int pool_ns; } ;


 int EINVAL ;
 int ENOMEM ;
 int INT_MAX ;
 int MAX_OPT_ARGS ;


 int Opt_last_int ;
 int Opt_last_string ;







 int SECTOR_SIZE ;
 int dout (char*,int,...) ;
 int is_power_of_2 (int) ;
 int kfree (int ) ;
 int match_int (TYPE_3__*,int*) ;
 int match_strdup (TYPE_3__*) ;
 int match_token (char*,int ,TYPE_3__*) ;
 int msecs_to_jiffies (int) ;
 int pr_err (char*,...) ;
 int rbd_opts_tokens ;

__attribute__((used)) static int parse_rbd_opts_token(char *c, void *private)
{
 struct parse_rbd_opts_ctx *pctx = private;
 substring_t argstr[MAX_OPT_ARGS];
 int token, intval, ret;

 token = match_token(c, rbd_opts_tokens, argstr);
 if (token < Opt_last_int) {
  ret = match_int(&argstr[0], &intval);
  if (ret < 0) {
   pr_err("bad option arg (not int) at '%s'\n", c);
   return ret;
  }
  dout("got int token %d val %d\n", token, intval);
 } else if (token > Opt_last_int && token < Opt_last_string) {
  dout("got string token %d val %s\n", token, argstr[0].from);
 } else {
  dout("got token %d\n", token);
 }

 switch (token) {
 case 130:
  if (intval < 1) {
   pr_err("queue_depth out of range\n");
   return -EINVAL;
  }
  pctx->opts->queue_depth = intval;
  break;
 case 136:
  if (intval < SECTOR_SIZE) {
   pr_err("alloc_size out of range\n");
   return -EINVAL;
  }
  if (!is_power_of_2(intval)) {
   pr_err("alloc_size must be a power of 2\n");
   return -EINVAL;
  }
  pctx->opts->alloc_size = intval;
  break;
 case 133:

  if (intval < 0 || intval > INT_MAX / 1000) {
   pr_err("lock_timeout out of range\n");
   return -EINVAL;
  }
  pctx->opts->lock_timeout = msecs_to_jiffies(intval * 1000);
  break;
 case 131:
  kfree(pctx->spec->pool_ns);
  pctx->spec->pool_ns = match_strdup(argstr);
  if (!pctx->spec->pool_ns)
   return -ENOMEM;
  break;
 case 129:
  pctx->opts->read_only = 1;
  break;
 case 128:
  pctx->opts->read_only = 0;
  break;
 case 134:
  pctx->opts->lock_on_read = 1;
  break;
 case 135:
  pctx->opts->exclusive = 1;
  break;
 case 132:
  pctx->opts->trim = 0;
  break;
 default:

  return -EINVAL;
 }

 return 0;
}
