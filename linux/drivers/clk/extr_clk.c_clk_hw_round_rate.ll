; ModuleID = '/home/carl/AnghaBench/linux/drivers/clk/extr_clk.c_clk_hw_round_rate.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/clk/extr_clk.c_clk_hw_round_rate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.clk_hw = type { i32 }
%struct.clk_rate_request = type { i64, i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @clk_hw_round_rate(%struct.clk_hw* %0, i64 %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca %struct.clk_hw*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.clk_rate_request, align 8
  store %struct.clk_hw* %0, %struct.clk_hw** %4, align 8
  store i64 %1, i64* %5, align 8
  %8 = load %struct.clk_hw*, %struct.clk_hw** %4, align 8
  %9 = getelementptr inbounds %struct.clk_hw, %struct.clk_hw* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = getelementptr inbounds %struct.clk_rate_request, %struct.clk_rate_request* %7, i32 0, i32 2
  %12 = getelementptr inbounds %struct.clk_rate_request, %struct.clk_rate_request* %7, i32 0, i32 1
  %13 = call i32 @clk_core_get_boundaries(i32 %10, i32* %11, i32* %12)
  %14 = load i64, i64* %5, align 8
  %15 = getelementptr inbounds %struct.clk_rate_request, %struct.clk_rate_request* %7, i32 0, i32 0
  store i64 %14, i64* %15, align 8
  %16 = load %struct.clk_hw*, %struct.clk_hw** %4, align 8
  %17 = getelementptr inbounds %struct.clk_hw, %struct.clk_hw* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @clk_core_round_rate_nolock(i32 %18, %struct.clk_rate_request* %7)
  store i32 %19, i32* %6, align 4
  %20 = load i32, i32* %6, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %2
  store i64 0, i64* %3, align 8
  br label %26

23:                                               ; preds = %2
  %24 = getelementptr inbounds %struct.clk_rate_request, %struct.clk_rate_request* %7, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  store i64 %25, i64* %3, align 8
  br label %26

26:                                               ; preds = %23, %22
  %27 = load i64, i64* %3, align 8
  ret i64 %27
}

declare dso_local i32 @clk_core_get_boundaries(i32, i32*, i32*) #1

declare dso_local i32 @clk_core_round_rate_nolock(i32, %struct.clk_rate_request*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
