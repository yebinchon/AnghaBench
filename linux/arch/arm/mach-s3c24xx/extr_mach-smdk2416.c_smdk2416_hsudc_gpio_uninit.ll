; ModuleID = '/home/carl/AnghaBench/linux/arch/arm/mach-s3c24xx/extr_mach-smdk2416.c_smdk2416_hsudc_gpio_uninit.c'
source_filename = "/home/carl/AnghaBench/linux/arch/arm/mach-s3c24xx/extr_mach-smdk2416.c_smdk2416_hsudc_gpio_uninit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@S3C2416_MISCCR_SEL_SUSPND = common dso_local global i32 0, align 4
@S3C_GPIO_PULL_NONE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @smdk2416_hsudc_gpio_uninit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @smdk2416_hsudc_gpio_uninit() #0 {
  %1 = load i32, i32* @S3C2416_MISCCR_SEL_SUSPND, align 4
  %2 = call i32 @s3c2410_modify_misccr(i32 %1, i32 1)
  %3 = call i32 @S3C2410_GPH(i32 14)
  %4 = load i32, i32* @S3C_GPIO_PULL_NONE, align 4
  %5 = call i32 @s3c_gpio_setpull(i32 %3, i32 %4)
  %6 = call i32 @S3C2410_GPH(i32 14)
  %7 = call i32 @S3C_GPIO_SFN(i32 0)
  %8 = call i32 @s3c_gpio_cfgpin(i32 %6, i32 %7)
  ret void
}

declare dso_local i32 @s3c2410_modify_misccr(i32, i32) #1

declare dso_local i32 @s3c_gpio_setpull(i32, i32) #1

declare dso_local i32 @S3C2410_GPH(i32) #1

declare dso_local i32 @s3c_gpio_cfgpin(i32, i32) #1

declare dso_local i32 @S3C_GPIO_SFN(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
