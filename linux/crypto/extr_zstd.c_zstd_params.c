
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ZSTD_parameters ;


 int ZSTD_DEF_LEVEL ;
 int ZSTD_getParams (int ,int ,int ) ;

__attribute__((used)) static ZSTD_parameters zstd_params(void)
{
 return ZSTD_getParams(ZSTD_DEF_LEVEL, 0, 0);
}
