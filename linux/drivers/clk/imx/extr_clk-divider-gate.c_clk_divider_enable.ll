; ModuleID = '/home/carl/AnghaBench/linux/drivers/clk/imx/extr_clk-divider-gate.c_clk_divider_enable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/clk/imx/extr_clk-divider-gate.c_clk_divider_enable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.clk_hw = type { i32 }
%struct.clk_divider_gate = type { i32 }
%struct.clk_divider = type { i32, i32, i32 }

@.str = private unnamed_addr constant [26 x i8] c"%s: no valid preset rate\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.clk_hw*)* @clk_divider_enable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @clk_divider_enable(%struct.clk_hw* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.clk_hw*, align 8
  %4 = alloca %struct.clk_divider_gate*, align 8
  %5 = alloca %struct.clk_divider*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  store %struct.clk_hw* %0, %struct.clk_hw** %3, align 8
  %8 = load %struct.clk_hw*, %struct.clk_hw** %3, align 8
  %9 = call %struct.clk_divider_gate* @to_clk_divider_gate(%struct.clk_hw* %8)
  store %struct.clk_divider_gate* %9, %struct.clk_divider_gate** %4, align 8
  %10 = load %struct.clk_hw*, %struct.clk_hw** %3, align 8
  %11 = call %struct.clk_divider* @to_clk_divider(%struct.clk_hw* %10)
  store %struct.clk_divider* %11, %struct.clk_divider** %5, align 8
  store i64 0, i64* %6, align 8
  %12 = load %struct.clk_divider_gate*, %struct.clk_divider_gate** %4, align 8
  %13 = getelementptr inbounds %struct.clk_divider_gate, %struct.clk_divider_gate* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %22, label %16

16:                                               ; preds = %1
  %17 = load %struct.clk_hw*, %struct.clk_hw** %3, align 8
  %18 = call i32 @clk_hw_get_name(%struct.clk_hw* %17)
  %19 = call i32 @pr_err(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i32 %18)
  %20 = load i32, i32* @EINVAL, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %2, align 4
  br label %51

22:                                               ; preds = %1
  %23 = load %struct.clk_divider*, %struct.clk_divider** %5, align 8
  %24 = getelementptr inbounds %struct.clk_divider, %struct.clk_divider* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = load i64, i64* %6, align 8
  %27 = call i32 @spin_lock_irqsave(i32 %25, i64 %26)
  %28 = load %struct.clk_divider*, %struct.clk_divider** %5, align 8
  %29 = getelementptr inbounds %struct.clk_divider, %struct.clk_divider* %28, i32 0, i32 2
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @readl(i32 %30)
  store i32 %31, i32* %7, align 4
  %32 = load %struct.clk_divider_gate*, %struct.clk_divider_gate** %4, align 8
  %33 = getelementptr inbounds %struct.clk_divider_gate, %struct.clk_divider_gate* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = load %struct.clk_divider*, %struct.clk_divider** %5, align 8
  %36 = getelementptr inbounds %struct.clk_divider, %struct.clk_divider* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = shl i32 %34, %37
  %39 = load i32, i32* %7, align 4
  %40 = or i32 %39, %38
  store i32 %40, i32* %7, align 4
  %41 = load i32, i32* %7, align 4
  %42 = load %struct.clk_divider*, %struct.clk_divider** %5, align 8
  %43 = getelementptr inbounds %struct.clk_divider, %struct.clk_divider* %42, i32 0, i32 2
  %44 = load i32, i32* %43, align 4
  %45 = call i32 @writel(i32 %41, i32 %44)
  %46 = load %struct.clk_divider*, %struct.clk_divider** %5, align 8
  %47 = getelementptr inbounds %struct.clk_divider, %struct.clk_divider* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = load i64, i64* %6, align 8
  %50 = call i32 @spin_unlock_irqrestore(i32 %48, i64 %49)
  store i32 0, i32* %2, align 4
  br label %51

51:                                               ; preds = %22, %16
  %52 = load i32, i32* %2, align 4
  ret i32 %52
}

declare dso_local %struct.clk_divider_gate* @to_clk_divider_gate(%struct.clk_hw*) #1

declare dso_local %struct.clk_divider* @to_clk_divider(%struct.clk_hw*) #1

declare dso_local i32 @pr_err(i8*, i32) #1

declare dso_local i32 @clk_hw_get_name(%struct.clk_hw*) #1

declare dso_local i32 @spin_lock_irqsave(i32, i64) #1

declare dso_local i32 @readl(i32) #1

declare dso_local i32 @writel(i32, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
