; ModuleID = '/home/carl/AnghaBench/linux/arch/arm/mach-s3c24xx/extr_common.c_s3c24xx_default_idle.c'
source_filename = "/home/carl/AnghaBench/linux/arch/arm/mach-s3c24xx/extr_common.c_s3c24xx_default_idle.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@S3C2410_CLKCON = common dso_local global i32 0, align 4
@S3C2410_CLKCON_IDLE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @s3c24xx_default_idle to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @s3c24xx_default_idle() #0 {
  %1 = alloca i64, align 8
  %2 = alloca i32, align 4
  store i64 0, i64* %1, align 8
  %3 = load i32, i32* @S3C2410_CLKCON, align 4
  %4 = call i64 @__raw_readl(i32 %3)
  %5 = load i64, i64* @S3C2410_CLKCON_IDLE, align 8
  %6 = or i64 %4, %5
  %7 = load i32, i32* @S3C2410_CLKCON, align 4
  %8 = call i32 @__raw_writel(i64 %6, i32 %7)
  store i32 0, i32* %2, align 4
  br label %9

9:                                                ; preds = %17, %0
  %10 = load i32, i32* %2, align 4
  %11 = icmp slt i32 %10, 50
  br i1 %11, label %12, label %20

12:                                               ; preds = %9
  %13 = load i32, i32* @S3C2410_CLKCON, align 4
  %14 = call i64 @__raw_readl(i32 %13)
  %15 = load i64, i64* %1, align 8
  %16 = add i64 %15, %14
  store i64 %16, i64* %1, align 8
  br label %17

17:                                               ; preds = %12
  %18 = load i32, i32* %2, align 4
  %19 = add nsw i32 %18, 1
  store i32 %19, i32* %2, align 4
  br label %9

20:                                               ; preds = %9
  %21 = load i32, i32* @S3C2410_CLKCON, align 4
  %22 = call i64 @__raw_readl(i32 %21)
  %23 = load i64, i64* @S3C2410_CLKCON_IDLE, align 8
  %24 = xor i64 %23, -1
  %25 = and i64 %22, %24
  %26 = load i32, i32* @S3C2410_CLKCON, align 4
  %27 = call i32 @__raw_writel(i64 %25, i32 %26)
  ret void
}

declare dso_local i32 @__raw_writel(i64, i32) #1

declare dso_local i64 @__raw_readl(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
