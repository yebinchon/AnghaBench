; ModuleID = '/home/carl/AnghaBench/linux/drivers/clk/extr_clk.c___clk_determine_rate.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/clk/extr_clk.c___clk_determine_rate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.clk_hw = type { i32 }
%struct.clk_rate_request = type { i64 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @__clk_determine_rate(%struct.clk_hw* %0, %struct.clk_rate_request* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.clk_hw*, align 8
  %5 = alloca %struct.clk_rate_request*, align 8
  store %struct.clk_hw* %0, %struct.clk_hw** %4, align 8
  store %struct.clk_rate_request* %1, %struct.clk_rate_request** %5, align 8
  %6 = load %struct.clk_hw*, %struct.clk_hw** %4, align 8
  %7 = icmp ne %struct.clk_hw* %6, null
  br i1 %7, label %11, label %8

8:                                                ; preds = %2
  %9 = load %struct.clk_rate_request*, %struct.clk_rate_request** %5, align 8
  %10 = getelementptr inbounds %struct.clk_rate_request, %struct.clk_rate_request* %9, i32 0, i32 0
  store i64 0, i64* %10, align 8
  store i32 0, i32* %3, align 4
  br label %17

11:                                               ; preds = %2
  %12 = load %struct.clk_hw*, %struct.clk_hw** %4, align 8
  %13 = getelementptr inbounds %struct.clk_hw, %struct.clk_hw* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = load %struct.clk_rate_request*, %struct.clk_rate_request** %5, align 8
  %16 = call i32 @clk_core_round_rate_nolock(i32 %14, %struct.clk_rate_request* %15)
  store i32 %16, i32* %3, align 4
  br label %17

17:                                               ; preds = %11, %8
  %18 = load i32, i32* %3, align 4
  ret i32 %18
}

declare dso_local i32 @clk_core_round_rate_nolock(i32, %struct.clk_rate_request*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
