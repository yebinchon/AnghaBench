
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct regmap_async {int dummy; } ;
struct regmap_async_spi {struct regmap_async core; } ;


 int GFP_KERNEL ;
 struct regmap_async_spi* kzalloc (int,int ) ;

__attribute__((used)) static struct regmap_async *regmap_spi_async_alloc(void)
{
 struct regmap_async_spi *async_spi;

 async_spi = kzalloc(sizeof(*async_spi), GFP_KERNEL);
 if (!async_spi)
  return ((void*)0);

 return &async_spi->core;
}
