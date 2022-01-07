; ModuleID = '/home/carl/AnghaBench/linux/arch/arm/mach-prima2/extr_rstc.c_sirfsoc_reset_module.c'
source_filename = "/home/carl/AnghaBench/linux/arch/arm/mach-prima2/extr_rstc.c_sirfsoc_reset_module.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.reset_controller_dev = type { i32 }

@SIRFSOC_RSTBIT_NUM = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@rstc_lock = common dso_local global i32 0, align 4
@sirfsoc_rstc_base = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.reset_controller_dev*, i64)* @sirfsoc_reset_module to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sirfsoc_reset_module(%struct.reset_controller_dev* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.reset_controller_dev*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  store %struct.reset_controller_dev* %0, %struct.reset_controller_dev** %4, align 8
  store i64 %1, i64* %5, align 8
  %7 = load i64, i64* %5, align 8
  %8 = trunc i64 %7 to i32
  store i32 %8, i32* %6, align 4
  %9 = load i32, i32* %6, align 4
  %10 = load i32, i32* @SIRFSOC_RSTBIT_NUM, align 4
  %11 = icmp sge i32 %9, %10
  br i1 %11, label %12, label %15

12:                                               ; preds = %2
  %13 = load i32, i32* @EINVAL, align 4
  %14 = sub nsw i32 0, %13
  store i32 %14, i32* %3, align 4
  br label %54

15:                                               ; preds = %2
  %16 = call i32 @mutex_lock(i32* @rstc_lock)
  %17 = load i64, i64* @sirfsoc_rstc_base, align 8
  %18 = load i32, i32* %6, align 4
  %19 = sdiv i32 %18, 32
  %20 = mul nsw i32 %19, 4
  %21 = sext i32 %20 to i64
  %22 = add nsw i64 %17, %21
  %23 = call i32 @readl(i64 %22)
  %24 = load i32, i32* %6, align 4
  %25 = shl i32 1, %24
  %26 = or i32 %23, %25
  %27 = load i64, i64* @sirfsoc_rstc_base, align 8
  %28 = load i32, i32* %6, align 4
  %29 = sdiv i32 %28, 32
  %30 = mul nsw i32 %29, 4
  %31 = sext i32 %30 to i64
  %32 = add nsw i64 %27, %31
  %33 = call i32 @writel(i32 %26, i64 %32)
  %34 = call i32 @msleep(i32 20)
  %35 = load i64, i64* @sirfsoc_rstc_base, align 8
  %36 = load i32, i32* %6, align 4
  %37 = sdiv i32 %36, 32
  %38 = mul nsw i32 %37, 4
  %39 = sext i32 %38 to i64
  %40 = add nsw i64 %35, %39
  %41 = call i32 @readl(i64 %40)
  %42 = load i32, i32* %6, align 4
  %43 = shl i32 1, %42
  %44 = xor i32 %43, -1
  %45 = and i32 %41, %44
  %46 = load i64, i64* @sirfsoc_rstc_base, align 8
  %47 = load i32, i32* %6, align 4
  %48 = sdiv i32 %47, 32
  %49 = mul nsw i32 %48, 4
  %50 = sext i32 %49 to i64
  %51 = add nsw i64 %46, %50
  %52 = call i32 @writel(i32 %45, i64 %51)
  %53 = call i32 @mutex_unlock(i32* @rstc_lock)
  store i32 0, i32* %3, align 4
  br label %54

54:                                               ; preds = %15, %12
  %55 = load i32, i32* %3, align 4
  ret i32 %55
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @writel(i32, i64) #1

declare dso_local i32 @readl(i64) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
