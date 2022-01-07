; ModuleID = '/home/carl/AnghaBench/linux/drivers/clk/imx/extr_clk-gate2.c_clk_gate2_disable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/clk/imx/extr_clk-gate2.c_clk_gate2_disable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.clk_hw = type { i32 }
%struct.clk_gate2 = type { i64*, i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.clk_hw*)* @clk_gate2_disable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @clk_gate2_disable(%struct.clk_hw* %0) #0 {
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
  %10 = load i32, i32* %9, align 4
  %11 = load i64, i64* %5, align 8
  %12 = call i32 @spin_lock_irqsave(i32 %10, i64 %11)
  %13 = load %struct.clk_gate2*, %struct.clk_gate2** %3, align 8
  %14 = getelementptr inbounds %struct.clk_gate2, %struct.clk_gate2* %13, i32 0, i32 0
  %15 = load i64*, i64** %14, align 8
  %16 = icmp ne i64* %15, null
  br i1 %16, label %17, label %37

17:                                               ; preds = %1
  %18 = load %struct.clk_gate2*, %struct.clk_gate2** %3, align 8
  %19 = getelementptr inbounds %struct.clk_gate2, %struct.clk_gate2* %18, i32 0, i32 0
  %20 = load i64*, i64** %19, align 8
  %21 = load i64, i64* %20, align 8
  %22 = icmp eq i64 %21, 0
  %23 = zext i1 %22 to i32
  %24 = call i64 @WARN_ON(i32 %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %17
  br label %54

27:                                               ; preds = %17
  %28 = load %struct.clk_gate2*, %struct.clk_gate2** %3, align 8
  %29 = getelementptr inbounds %struct.clk_gate2, %struct.clk_gate2* %28, i32 0, i32 0
  %30 = load i64*, i64** %29, align 8
  %31 = load i64, i64* %30, align 8
  %32 = add nsw i64 %31, -1
  store i64 %32, i64* %30, align 8
  %33 = icmp sgt i64 %32, 0
  br i1 %33, label %34, label %35

34:                                               ; preds = %27
  br label %54

35:                                               ; preds = %27
  br label %36

36:                                               ; preds = %35
  br label %37

37:                                               ; preds = %36, %1
  %38 = load %struct.clk_gate2*, %struct.clk_gate2** %3, align 8
  %39 = getelementptr inbounds %struct.clk_gate2, %struct.clk_gate2* %38, i32 0, i32 3
  %40 = load i32, i32* %39, align 8
  %41 = call i32 @readl(i32 %40)
  store i32 %41, i32* %4, align 4
  %42 = load %struct.clk_gate2*, %struct.clk_gate2** %3, align 8
  %43 = getelementptr inbounds %struct.clk_gate2, %struct.clk_gate2* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 8
  %45 = shl i32 3, %44
  %46 = xor i32 %45, -1
  %47 = load i32, i32* %4, align 4
  %48 = and i32 %47, %46
  store i32 %48, i32* %4, align 4
  %49 = load i32, i32* %4, align 4
  %50 = load %struct.clk_gate2*, %struct.clk_gate2** %3, align 8
  %51 = getelementptr inbounds %struct.clk_gate2, %struct.clk_gate2* %50, i32 0, i32 3
  %52 = load i32, i32* %51, align 8
  %53 = call i32 @writel(i32 %49, i32 %52)
  br label %54

54:                                               ; preds = %37, %34, %26
  %55 = load %struct.clk_gate2*, %struct.clk_gate2** %3, align 8
  %56 = getelementptr inbounds %struct.clk_gate2, %struct.clk_gate2* %55, i32 0, i32 2
  %57 = load i32, i32* %56, align 4
  %58 = load i64, i64* %5, align 8
  %59 = call i32 @spin_unlock_irqrestore(i32 %57, i64 %58)
  ret void
}

declare dso_local %struct.clk_gate2* @to_clk_gate2(%struct.clk_hw*) #1

declare dso_local i32 @spin_lock_irqsave(i32, i64) #1

declare dso_local i64 @WARN_ON(i32) #1

declare dso_local i32 @readl(i32) #1

declare dso_local i32 @writel(i32, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
