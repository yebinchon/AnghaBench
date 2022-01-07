
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct platform_device {int dummy; } ;
struct n2rng {int work; int flags; } ;


 int HV_GRP_RNG ;
 int N2RNG_FLAG_SHUTDOWN ;
 int cancel_delayed_work_sync (int *) ;
 struct n2rng* platform_get_drvdata (struct platform_device*) ;
 int sun4v_hvapi_unregister (int ) ;

__attribute__((used)) static int n2rng_remove(struct platform_device *op)
{
 struct n2rng *np = platform_get_drvdata(op);

 np->flags |= N2RNG_FLAG_SHUTDOWN;

 cancel_delayed_work_sync(&np->work);

 sun4v_hvapi_unregister(HV_GRP_RNG);

 return 0;
}
