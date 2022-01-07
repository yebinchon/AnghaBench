; ModuleID = '/home/carl/AnghaBench/linux/drivers/clk/mmp/extr_clk-apmu.c_clk_apmu_disable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/clk/mmp/extr_clk-apmu.c_clk_apmu_disable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.clk_hw = type { i32 }
%struct.clk_apmu = type { i64, i64, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.clk_hw*)* @clk_apmu_disable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @clk_apmu_disable(%struct.clk_hw* %0) #0 {
  %2 = alloca %struct.clk_hw*, align 8
  %3 = alloca %struct.clk_apmu*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  store %struct.clk_hw* %0, %struct.clk_hw** %2, align 8
  %6 = load %struct.clk_hw*, %struct.clk_hw** %2, align 8
  %7 = call %struct.clk_apmu* @to_clk_apmu(%struct.clk_hw* %6)
  store %struct.clk_apmu* %7, %struct.clk_apmu** %3, align 8
  store i64 0, i64* %5, align 8
  %8 = load %struct.clk_apmu*, %struct.clk_apmu** %3, align 8
  %9 = getelementptr inbounds %struct.clk_apmu, %struct.clk_apmu* %8, i32 0, i32 1
  %10 = load i64, i64* %9, align 8
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %18

12:                                               ; preds = %1
  %13 = load %struct.clk_apmu*, %struct.clk_apmu** %3, align 8
  %14 = getelementptr inbounds %struct.clk_apmu, %struct.clk_apmu* %13, i32 0, i32 1
  %15 = load i64, i64* %14, align 8
  %16 = load i64, i64* %5, align 8
  %17 = call i32 @spin_lock_irqsave(i64 %15, i64 %16)
  br label %18

18:                                               ; preds = %12, %1
  %19 = load %struct.clk_apmu*, %struct.clk_apmu** %3, align 8
  %20 = getelementptr inbounds %struct.clk_apmu, %struct.clk_apmu* %19, i32 0, i32 2
  %21 = load i32, i32* %20, align 8
  %22 = call i64 @readl_relaxed(i32 %21)
  %23 = load %struct.clk_apmu*, %struct.clk_apmu** %3, align 8
  %24 = getelementptr inbounds %struct.clk_apmu, %struct.clk_apmu* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = xor i64 %25, -1
  %27 = and i64 %22, %26
  store i64 %27, i64* %4, align 8
  %28 = load i64, i64* %4, align 8
  %29 = load %struct.clk_apmu*, %struct.clk_apmu** %3, align 8
  %30 = getelementptr inbounds %struct.clk_apmu, %struct.clk_apmu* %29, i32 0, i32 2
  %31 = load i32, i32* %30, align 8
  %32 = call i32 @writel_relaxed(i64 %28, i32 %31)
  %33 = load %struct.clk_apmu*, %struct.clk_apmu** %3, align 8
  %34 = getelementptr inbounds %struct.clk_apmu, %struct.clk_apmu* %33, i32 0, i32 1
  %35 = load i64, i64* %34, align 8
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %43

37:                                               ; preds = %18
  %38 = load %struct.clk_apmu*, %struct.clk_apmu** %3, align 8
  %39 = getelementptr inbounds %struct.clk_apmu, %struct.clk_apmu* %38, i32 0, i32 1
  %40 = load i64, i64* %39, align 8
  %41 = load i64, i64* %5, align 8
  %42 = call i32 @spin_unlock_irqrestore(i64 %40, i64 %41)
  br label %43

43:                                               ; preds = %37, %18
  ret void
}

declare dso_local %struct.clk_apmu* @to_clk_apmu(%struct.clk_hw*) #1

declare dso_local i32 @spin_lock_irqsave(i64, i64) #1

declare dso_local i64 @readl_relaxed(i32) #1

declare dso_local i32 @writel_relaxed(i64, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
