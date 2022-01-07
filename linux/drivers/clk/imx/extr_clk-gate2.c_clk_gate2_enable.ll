; ModuleID = '/home/carl/AnghaBench/linux/drivers/clk/imx/extr_clk-gate2.c_clk_gate2_enable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/clk/imx/extr_clk-gate2.c_clk_gate2_enable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.clk_hw = type { i32 }
%struct.clk_gate2 = type { i32, i32, i32, i32, i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.clk_hw*)* @clk_gate2_enable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @clk_gate2_enable(%struct.clk_hw* %0) #0 {
  %2 = alloca %struct.clk_hw*, align 8
  %3 = alloca %struct.clk_gate2*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  store %struct.clk_hw* %0, %struct.clk_hw** %2, align 8
  %6 = load %struct.clk_hw*, %struct.clk_hw** %2, align 8
  %7 = call %struct.clk_gate2* @to_clk_gate2(%struct.clk_hw* %6)
  store %struct.clk_gate2* %7, %struct.clk_gate2** %3, align 8
  store i64 0, i64* %5, align 8
  %8 = load %struct.clk_gate2*, %struct.clk_gate2** %3, align 8
  %9 = getelementptr inbounds %struct.clk_gate2, %struct.clk_gate2* %8, i32 0, i32 2
  %10 = load i32, i32* %9, align 8
  %11 = load i64, i64* %5, align 8
  %12 = call i32 @spin_lock_irqsave(i32 %10, i64 %11)
  %13 = load %struct.clk_gate2*, %struct.clk_gate2** %3, align 8
  %14 = getelementptr inbounds %struct.clk_gate2, %struct.clk_gate2* %13, i32 0, i32 4
  %15 = load i32*, i32** %14, align 8
  %16 = icmp ne i32* %15, null
  br i1 %16, label %17, label %25

17:                                               ; preds = %1
  %18 = load %struct.clk_gate2*, %struct.clk_gate2** %3, align 8
  %19 = getelementptr inbounds %struct.clk_gate2, %struct.clk_gate2* %18, i32 0, i32 4
  %20 = load i32*, i32** %19, align 8
  %21 = load i32, i32* %20, align 4
  %22 = add nsw i32 %21, 1
  store i32 %22, i32* %20, align 4
  %23 = icmp sgt i32 %21, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %17
  br label %51

25:                                               ; preds = %17, %1
  %26 = load %struct.clk_gate2*, %struct.clk_gate2** %3, align 8
  %27 = getelementptr inbounds %struct.clk_gate2, %struct.clk_gate2* %26, i32 0, i32 3
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @readl(i32 %28)
  store i32 %29, i32* %4, align 4
  %30 = load %struct.clk_gate2*, %struct.clk_gate2** %3, align 8
  %31 = getelementptr inbounds %struct.clk_gate2, %struct.clk_gate2* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = shl i32 3, %32
  %34 = xor i32 %33, -1
  %35 = load i32, i32* %4, align 4
  %36 = and i32 %35, %34
  store i32 %36, i32* %4, align 4
  %37 = load %struct.clk_gate2*, %struct.clk_gate2** %3, align 8
  %38 = getelementptr inbounds %struct.clk_gate2, %struct.clk_gate2* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = load %struct.clk_gate2*, %struct.clk_gate2** %3, align 8
  %41 = getelementptr inbounds %struct.clk_gate2, %struct.clk_gate2* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = shl i32 %39, %42
  %44 = load i32, i32* %4, align 4
  %45 = or i32 %44, %43
  store i32 %45, i32* %4, align 4
  %46 = load i32, i32* %4, align 4
  %47 = load %struct.clk_gate2*, %struct.clk_gate2** %3, align 8
  %48 = getelementptr inbounds %struct.clk_gate2, %struct.clk_gate2* %47, i32 0, i32 3
  %49 = load i32, i32* %48, align 4
  %50 = call i32 @writel(i32 %46, i32 %49)
  br label %51

51:                                               ; preds = %25, %24
  %52 = load %struct.clk_gate2*, %struct.clk_gate2** %3, align 8
  %53 = getelementptr inbounds %struct.clk_gate2, %struct.clk_gate2* %52, i32 0, i32 2
  %54 = load i32, i32* %53, align 8
  %55 = load i64, i64* %5, align 8
  %56 = call i32 @spin_unlock_irqrestore(i32 %54, i64 %55)
  ret i32 0
}

declare dso_local %struct.clk_gate2* @to_clk_gate2(%struct.clk_hw*) #1

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
