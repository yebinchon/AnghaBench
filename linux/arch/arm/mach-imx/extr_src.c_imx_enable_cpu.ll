; ModuleID = '/home/carl/AnghaBench/linux/arch/arm/mach-imx/extr_src.c_imx_enable_cpu.c'
source_filename = "/home/carl/AnghaBench/linux/arch/arm/mach-imx/extr_src.c_imx_enable_cpu.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@BP_SRC_SCR_CORE1_ENABLE = common dso_local global i32 0, align 4
@scr_lock = common dso_local global i32 0, align 4
@src_base = common dso_local global i64 0, align 8
@SRC_SCR = common dso_local global i64 0, align 8
@BP_SRC_SCR_CORE1_RST = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @imx_enable_cpu(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %7 = load i32, i32* %3, align 4
  %8 = call i32 @cpu_logical_map(i32 %7)
  store i32 %8, i32* %3, align 4
  %9 = load i32, i32* @BP_SRC_SCR_CORE1_ENABLE, align 4
  %10 = load i32, i32* %3, align 4
  %11 = add nsw i32 %9, %10
  %12 = sub nsw i32 %11, 1
  %13 = shl i32 1, %12
  store i32 %13, i32* %5, align 4
  %14 = call i32 @spin_lock(i32* @scr_lock)
  %15 = load i64, i64* @src_base, align 8
  %16 = load i64, i64* @SRC_SCR, align 8
  %17 = add nsw i64 %15, %16
  %18 = call i32 @readl_relaxed(i64 %17)
  store i32 %18, i32* %6, align 4
  %19 = load i32, i32* %4, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %25

21:                                               ; preds = %2
  %22 = load i32, i32* %6, align 4
  %23 = load i32, i32* %5, align 4
  %24 = or i32 %22, %23
  br label %30

25:                                               ; preds = %2
  %26 = load i32, i32* %6, align 4
  %27 = load i32, i32* %5, align 4
  %28 = xor i32 %27, -1
  %29 = and i32 %26, %28
  br label %30

30:                                               ; preds = %25, %21
  %31 = phi i32 [ %24, %21 ], [ %29, %25 ]
  store i32 %31, i32* %6, align 4
  %32 = load i32, i32* @BP_SRC_SCR_CORE1_RST, align 4
  %33 = load i32, i32* %3, align 4
  %34 = add nsw i32 %32, %33
  %35 = sub nsw i32 %34, 1
  %36 = shl i32 1, %35
  %37 = load i32, i32* %6, align 4
  %38 = or i32 %37, %36
  store i32 %38, i32* %6, align 4
  %39 = load i32, i32* %6, align 4
  %40 = load i64, i64* @src_base, align 8
  %41 = load i64, i64* @SRC_SCR, align 8
  %42 = add nsw i64 %40, %41
  %43 = call i32 @writel_relaxed(i32 %39, i64 %42)
  %44 = call i32 @spin_unlock(i32* @scr_lock)
  ret void
}

declare dso_local i32 @cpu_logical_map(i32) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @readl_relaxed(i64) #1

declare dso_local i32 @writel_relaxed(i32, i64) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
