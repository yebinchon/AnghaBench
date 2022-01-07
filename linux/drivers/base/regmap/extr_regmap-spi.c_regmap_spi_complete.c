
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int status; } ;
struct regmap_async_spi {TYPE_1__ m; int core; } ;


 int regmap_async_complete_cb (int *,int ) ;

__attribute__((used)) static void regmap_spi_complete(void *data)
{
 struct regmap_async_spi *async = data;

 regmap_async_complete_cb(&async->core, async->m.status);
}
