; ModuleID = '/home/carl/AnghaBench/linux/arch/arm/mach-s3c24xx/extr_pm-s3c2412.c_s3c2412_pm_resume.c'
source_filename = "/home/carl/AnghaBench/linux/arch/arm/mach-s3c24xx/extr_pm-s3c2412.c_s3c2412_pm_resume.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@S3C2412_PWRCFG = common dso_local global i32 0, align 4
@S3C2412_PWRCFG_STANDBYWFI_MASK = common dso_local global i64 0, align 8
@S3C2412_PWRCFG_STANDBYWFI_IDLE = common dso_local global i64 0, align 8
@s3c2412_sleep = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @s3c2412_pm_resume to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @s3c2412_pm_resume() #0 {
  %1 = alloca i64, align 8
  %2 = load i32, i32* @S3C2412_PWRCFG, align 4
  %3 = call i64 @__raw_readl(i32 %2)
  store i64 %3, i64* %1, align 8
  %4 = load i64, i64* @S3C2412_PWRCFG_STANDBYWFI_MASK, align 8
  %5 = xor i64 %4, -1
  %6 = load i64, i64* %1, align 8
  %7 = and i64 %6, %5
  store i64 %7, i64* %1, align 8
  %8 = load i64, i64* @S3C2412_PWRCFG_STANDBYWFI_IDLE, align 8
  %9 = load i64, i64* %1, align 8
  %10 = or i64 %9, %8
  store i64 %10, i64* %1, align 8
  %11 = load i64, i64* %1, align 8
  %12 = load i32, i32* @S3C2412_PWRCFG, align 4
  %13 = call i32 @__raw_writel(i64 %11, i32 %12)
  %14 = load i32, i32* @s3c2412_sleep, align 4
  %15 = load i32, i32* @s3c2412_sleep, align 4
  %16 = call i32 @ARRAY_SIZE(i32 %15)
  %17 = call i32 @s3c_pm_do_restore(i32 %14, i32 %16)
  ret void
}

declare dso_local i64 @__raw_readl(i32) #1

declare dso_local i32 @__raw_writel(i64, i32) #1

declare dso_local i32 @s3c_pm_do_restore(i32, i32) #1

declare dso_local i32 @ARRAY_SIZE(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
