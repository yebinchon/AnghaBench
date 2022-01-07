; ModuleID = '/home/carl/AnghaBench/linux/drivers/clk/imx/extr_clk-divider-gate.c_clk_divider_gate_recalc_rate.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/clk/imx/extr_clk-divider-gate.c_clk_divider_gate_recalc_rate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.clk_hw = type { i32 }
%struct.clk_divider_gate = type { i32 }
%struct.clk_divider = type { i32, i32, i32, i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.clk_hw*, i64)* @clk_divider_gate_recalc_rate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @clk_divider_gate_recalc_rate(%struct.clk_hw* %0, i64 %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca %struct.clk_hw*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.clk_divider_gate*, align 8
  %7 = alloca %struct.clk_divider*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  store %struct.clk_hw* %0, %struct.clk_hw** %4, align 8
  store i64 %1, i64* %5, align 8
  %10 = load %struct.clk_hw*, %struct.clk_hw** %4, align 8
  %11 = call %struct.clk_divider_gate* @to_clk_divider_gate(%struct.clk_hw* %10)
  store %struct.clk_divider_gate* %11, %struct.clk_divider_gate** %6, align 8
  %12 = load %struct.clk_hw*, %struct.clk_hw** %4, align 8
  %13 = call %struct.clk_divider* @to_clk_divider(%struct.clk_hw* %12)
  store %struct.clk_divider* %13, %struct.clk_divider** %7, align 8
  store i64 0, i64* %8, align 8
  %14 = load %struct.clk_divider*, %struct.clk_divider** %7, align 8
  %15 = getelementptr inbounds %struct.clk_divider, %struct.clk_divider* %14, i32 0, i32 4
  %16 = load i32, i32* %15, align 4
  %17 = load i64, i64* %8, align 8
  %18 = call i32 @spin_lock_irqsave(i32 %16, i64 %17)
  %19 = load %struct.clk_hw*, %struct.clk_hw** %4, align 8
  %20 = call i32 @clk_hw_is_enabled(%struct.clk_hw* %19)
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %26, label %22

22:                                               ; preds = %2
  %23 = load %struct.clk_divider_gate*, %struct.clk_divider_gate** %6, align 8
  %24 = getelementptr inbounds %struct.clk_divider_gate, %struct.clk_divider_gate* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  store i32 %25, i32* %9, align 4
  br label %41

26:                                               ; preds = %2
  %27 = load %struct.clk_divider*, %struct.clk_divider** %7, align 8
  %28 = getelementptr inbounds %struct.clk_divider, %struct.clk_divider* %27, i32 0, i32 5
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @readl(i32 %29)
  %31 = load %struct.clk_divider*, %struct.clk_divider** %7, align 8
  %32 = getelementptr inbounds %struct.clk_divider, %struct.clk_divider* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = lshr i32 %30, %33
  store i32 %34, i32* %9, align 4
  %35 = load %struct.clk_divider*, %struct.clk_divider** %7, align 8
  %36 = getelementptr inbounds %struct.clk_divider, %struct.clk_divider* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @clk_div_mask(i32 %37)
  %39 = load i32, i32* %9, align 4
  %40 = and i32 %39, %38
  store i32 %40, i32* %9, align 4
  br label %41

41:                                               ; preds = %26, %22
  %42 = load %struct.clk_divider*, %struct.clk_divider** %7, align 8
  %43 = getelementptr inbounds %struct.clk_divider, %struct.clk_divider* %42, i32 0, i32 4
  %44 = load i32, i32* %43, align 4
  %45 = load i64, i64* %8, align 8
  %46 = call i32 @spin_unlock_irqrestore(i32 %44, i64 %45)
  %47 = load i32, i32* %9, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %50, label %49

49:                                               ; preds = %41
  store i64 0, i64* %3, align 8
  br label %64

50:                                               ; preds = %41
  %51 = load %struct.clk_hw*, %struct.clk_hw** %4, align 8
  %52 = load i64, i64* %5, align 8
  %53 = load i32, i32* %9, align 4
  %54 = load %struct.clk_divider*, %struct.clk_divider** %7, align 8
  %55 = getelementptr inbounds %struct.clk_divider, %struct.clk_divider* %54, i32 0, i32 3
  %56 = load i32, i32* %55, align 4
  %57 = load %struct.clk_divider*, %struct.clk_divider** %7, align 8
  %58 = getelementptr inbounds %struct.clk_divider, %struct.clk_divider* %57, i32 0, i32 2
  %59 = load i32, i32* %58, align 4
  %60 = load %struct.clk_divider*, %struct.clk_divider** %7, align 8
  %61 = getelementptr inbounds %struct.clk_divider, %struct.clk_divider* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 4
  %63 = call i64 @divider_recalc_rate(%struct.clk_hw* %51, i64 %52, i32 %53, i32 %56, i32 %59, i32 %62)
  store i64 %63, i64* %3, align 8
  br label %64

64:                                               ; preds = %50, %49
  %65 = load i64, i64* %3, align 8
  ret i64 %65
}

declare dso_local %struct.clk_divider_gate* @to_clk_divider_gate(%struct.clk_hw*) #1

declare dso_local %struct.clk_divider* @to_clk_divider(%struct.clk_hw*) #1

declare dso_local i32 @spin_lock_irqsave(i32, i64) #1

declare dso_local i32 @clk_hw_is_enabled(%struct.clk_hw*) #1

declare dso_local i32 @readl(i32) #1

declare dso_local i32 @clk_div_mask(i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32, i64) #1

declare dso_local i64 @divider_recalc_rate(%struct.clk_hw*, i64, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
