
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int platform_device_register_simple (char*,int,int *,int ) ;

__attribute__((used)) static inline void spitz_audio_init(void)
{
 platform_device_register_simple("spitz-audio", -1, ((void*)0), 0);
}
