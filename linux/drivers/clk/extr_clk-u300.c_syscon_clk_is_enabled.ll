; ModuleID = '/home/carl/AnghaBench/linux/drivers/clk/extr_clk-u300.c_syscon_clk_is_enabled.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/clk/extr_clk-u300.c_syscon_clk_is_enabled.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.clk_hw = type { i32 }
%struct.clk_syscon = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.clk_hw*)* @syscon_clk_is_enabled to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @syscon_clk_is_enabled(%struct.clk_hw* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.clk_hw*, align 8
  %4 = alloca %struct.clk_syscon*, align 8
  %5 = alloca i32, align 4
  store %struct.clk_hw* %0, %struct.clk_hw** %3, align 8
  %6 = load %struct.clk_hw*, %struct.clk_hw** %3, align 8
  %7 = call %struct.clk_syscon* @to_syscon(%struct.clk_hw* %6)
  store %struct.clk_syscon* %7, %struct.clk_syscon** %4, align 8
  %8 = load %struct.clk_syscon*, %struct.clk_syscon** %4, align 8
  %9 = getelementptr inbounds %struct.clk_syscon, %struct.clk_syscon* %8, i32 0, i32 1
  %10 = load i32, i32* %9, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %13, label %12

12:                                               ; preds = %1
  store i32 1, i32* %2, align 4
  br label %28

13:                                               ; preds = %1
  %14 = load %struct.clk_syscon*, %struct.clk_syscon** %4, align 8
  %15 = getelementptr inbounds %struct.clk_syscon, %struct.clk_syscon* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  %17 = call i32 @readw(i32 %16)
  store i32 %17, i32* %5, align 4
  %18 = load %struct.clk_syscon*, %struct.clk_syscon** %4, align 8
  %19 = getelementptr inbounds %struct.clk_syscon, %struct.clk_syscon* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @BIT(i32 %20)
  %22 = load i32, i32* %5, align 4
  %23 = and i32 %22, %21
  store i32 %23, i32* %5, align 4
  %24 = load i32, i32* %5, align 4
  %25 = icmp ne i32 %24, 0
  %26 = zext i1 %25 to i64
  %27 = select i1 %25, i32 1, i32 0
  store i32 %27, i32* %2, align 4
  br label %28

28:                                               ; preds = %13, %12
  %29 = load i32, i32* %2, align 4
  ret i32 %29
}

declare dso_local %struct.clk_syscon* @to_syscon(%struct.clk_hw*) #1

declare dso_local i32 @readw(i32) #1

declare dso_local i32 @BIT(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
