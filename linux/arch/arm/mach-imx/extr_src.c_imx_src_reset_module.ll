; ModuleID = '/home/carl/AnghaBench/linux/arch/arm/mach-imx/extr_src.c_imx_src_reset_module.c'
source_filename = "/home/carl/AnghaBench/linux/arch/arm/mach-imx/extr_src.c_imx_src_reset_module.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.reset_controller_dev = type { i32 }

@src_base = common dso_local global i64 0, align 8
@ENODEV = common dso_local global i32 0, align 4
@sw_reset_bits = common dso_local global i32* null, align 8
@EINVAL = common dso_local global i32 0, align 4
@scr_lock = common dso_local global i32 0, align 4
@SRC_SCR = common dso_local global i64 0, align 8
@jiffies = common dso_local global i64 0, align 8
@ETIME = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.reset_controller_dev*, i64)* @imx_src_reset_module to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @imx_src_reset_module(%struct.reset_controller_dev* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.reset_controller_dev*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.reset_controller_dev* %0, %struct.reset_controller_dev** %4, align 8
  store i64 %1, i64* %5, align 8
  %10 = load i64, i64* @src_base, align 8
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %15, label %12

12:                                               ; preds = %2
  %13 = load i32, i32* @ENODEV, align 4
  %14 = sub nsw i32 0, %13
  store i32 %14, i32* %3, align 4
  br label %67

15:                                               ; preds = %2
  %16 = load i64, i64* %5, align 8
  %17 = load i32*, i32** @sw_reset_bits, align 8
  %18 = call i64 @ARRAY_SIZE(i32* %17)
  %19 = icmp uge i64 %16, %18
  br i1 %19, label %20, label %23

20:                                               ; preds = %15
  %21 = load i32, i32* @EINVAL, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %3, align 4
  br label %67

23:                                               ; preds = %15
  %24 = load i32*, i32** @sw_reset_bits, align 8
  %25 = load i64, i64* %5, align 8
  %26 = getelementptr inbounds i32, i32* %24, i64 %25
  %27 = load i32, i32* %26, align 4
  %28 = shl i32 1, %27
  store i32 %28, i32* %8, align 4
  %29 = load i64, i64* %7, align 8
  %30 = call i32 @spin_lock_irqsave(i32* @scr_lock, i64 %29)
  %31 = load i64, i64* @src_base, align 8
  %32 = load i64, i64* @SRC_SCR, align 8
  %33 = add nsw i64 %31, %32
  %34 = call i32 @readl_relaxed(i64 %33)
  store i32 %34, i32* %9, align 4
  %35 = load i32, i32* %8, align 4
  %36 = load i32, i32* %9, align 4
  %37 = or i32 %36, %35
  store i32 %37, i32* %9, align 4
  %38 = load i32, i32* %9, align 4
  %39 = load i64, i64* @src_base, align 8
  %40 = load i64, i64* @SRC_SCR, align 8
  %41 = add nsw i64 %39, %40
  %42 = call i32 @writel_relaxed(i32 %38, i64 %41)
  %43 = load i64, i64* %7, align 8
  %44 = call i32 @spin_unlock_irqrestore(i32* @scr_lock, i64 %43)
  %45 = load i64, i64* @jiffies, align 8
  %46 = call i64 @msecs_to_jiffies(i32 1000)
  %47 = add i64 %45, %46
  store i64 %47, i64* %6, align 8
  br label %48

48:                                               ; preds = %64, %23
  %49 = load i64, i64* @src_base, align 8
  %50 = load i64, i64* @SRC_SCR, align 8
  %51 = add nsw i64 %49, %50
  %52 = call i32 @readl(i64 %51)
  %53 = load i32, i32* %8, align 4
  %54 = and i32 %52, %53
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %66

56:                                               ; preds = %48
  %57 = load i64, i64* @jiffies, align 8
  %58 = load i64, i64* %6, align 8
  %59 = call i64 @time_after(i64 %57, i64 %58)
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %64

61:                                               ; preds = %56
  %62 = load i32, i32* @ETIME, align 4
  %63 = sub nsw i32 0, %62
  store i32 %63, i32* %3, align 4
  br label %67

64:                                               ; preds = %56
  %65 = call i32 (...) @cpu_relax()
  br label %48

66:                                               ; preds = %48
  store i32 0, i32* %3, align 4
  br label %67

67:                                               ; preds = %66, %61, %20, %12
  %68 = load i32, i32* %3, align 4
  ret i32 %68
}

declare dso_local i64 @ARRAY_SIZE(i32*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @readl_relaxed(i64) #1

declare dso_local i32 @writel_relaxed(i32, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i64 @msecs_to_jiffies(i32) #1

declare dso_local i32 @readl(i64) #1

declare dso_local i64 @time_after(i64, i64) #1

declare dso_local i32 @cpu_relax(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
