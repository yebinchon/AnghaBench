; ModuleID = '/home/carl/AnghaBench/linux/drivers/clk/imx/extr_clk-pllv3.c_clk_pllv3_unprepare.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/clk/imx/extr_clk-pllv3.c_clk_pllv3_unprepare.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.clk_hw = type { i32 }
%struct.clk_pllv3 = type { i32, i32, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.clk_hw*)* @clk_pllv3_unprepare to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @clk_pllv3_unprepare(%struct.clk_hw* %0) #0 {
  %2 = alloca %struct.clk_hw*, align 8
  %3 = alloca %struct.clk_pllv3*, align 8
  %4 = alloca i32, align 4
  store %struct.clk_hw* %0, %struct.clk_hw** %2, align 8
  %5 = load %struct.clk_hw*, %struct.clk_hw** %2, align 8
  %6 = call %struct.clk_pllv3* @to_clk_pllv3(%struct.clk_hw* %5)
  store %struct.clk_pllv3* %6, %struct.clk_pllv3** %3, align 8
  %7 = load %struct.clk_pllv3*, %struct.clk_pllv3** %3, align 8
  %8 = getelementptr inbounds %struct.clk_pllv3, %struct.clk_pllv3* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 8
  %10 = call i32 @readl_relaxed(i32 %9)
  store i32 %10, i32* %4, align 4
  %11 = load %struct.clk_pllv3*, %struct.clk_pllv3** %3, align 8
  %12 = getelementptr inbounds %struct.clk_pllv3, %struct.clk_pllv3* %11, i32 0, i32 2
  %13 = load i64, i64* %12, align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %22

15:                                               ; preds = %1
  %16 = load %struct.clk_pllv3*, %struct.clk_pllv3** %3, align 8
  %17 = getelementptr inbounds %struct.clk_pllv3, %struct.clk_pllv3* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = xor i32 %18, -1
  %20 = load i32, i32* %4, align 4
  %21 = and i32 %20, %19
  store i32 %21, i32* %4, align 4
  br label %28

22:                                               ; preds = %1
  %23 = load %struct.clk_pllv3*, %struct.clk_pllv3** %3, align 8
  %24 = getelementptr inbounds %struct.clk_pllv3, %struct.clk_pllv3* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = load i32, i32* %4, align 4
  %27 = or i32 %26, %25
  store i32 %27, i32* %4, align 4
  br label %28

28:                                               ; preds = %22, %15
  %29 = load i32, i32* %4, align 4
  %30 = load %struct.clk_pllv3*, %struct.clk_pllv3** %3, align 8
  %31 = getelementptr inbounds %struct.clk_pllv3, %struct.clk_pllv3* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = call i32 @writel_relaxed(i32 %29, i32 %32)
  ret void
}

declare dso_local %struct.clk_pllv3* @to_clk_pllv3(%struct.clk_hw*) #1

declare dso_local i32 @readl_relaxed(i32) #1

declare dso_local i32 @writel_relaxed(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
