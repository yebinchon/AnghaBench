; ModuleID = '/home/carl/AnghaBench/linux/drivers/clk/sunxi/extr_clk-sunxi.c_sun6i_a31_get_pll6_factors.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/clk/sunxi/extr_clk-sunxi.c_sun6i_a31_get_pll6_factors.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.factors_request = type { i32, i32, i32, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.factors_request*)* @sun6i_a31_get_pll6_factors to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sun6i_a31_get_pll6_factors(%struct.factors_request* %0) #0 {
  %2 = alloca %struct.factors_request*, align 8
  %3 = alloca i32, align 4
  store %struct.factors_request* %0, %struct.factors_request** %2, align 8
  %4 = load %struct.factors_request*, %struct.factors_request** %2, align 8
  %5 = getelementptr inbounds %struct.factors_request, %struct.factors_request* %4, i32 0, i32 0
  %6 = load i32, i32* %5, align 8
  %7 = load %struct.factors_request*, %struct.factors_request** %2, align 8
  %8 = getelementptr inbounds %struct.factors_request, %struct.factors_request* %7, i32 0, i32 1
  %9 = load i32, i32* %8, align 4
  %10 = sdiv i32 %6, %9
  store i32 %10, i32* %3, align 4
  %11 = load %struct.factors_request*, %struct.factors_request** %2, align 8
  %12 = getelementptr inbounds %struct.factors_request, %struct.factors_request* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 4
  %14 = load i32, i32* %3, align 4
  %15 = mul nsw i32 %13, %14
  %16 = load %struct.factors_request*, %struct.factors_request** %2, align 8
  %17 = getelementptr inbounds %struct.factors_request, %struct.factors_request* %16, i32 0, i32 0
  store i32 %15, i32* %17, align 8
  %18 = load i32, i32* %3, align 4
  %19 = sdiv i32 %18, 32
  %20 = load %struct.factors_request*, %struct.factors_request** %2, align 8
  %21 = getelementptr inbounds %struct.factors_request, %struct.factors_request* %20, i32 0, i32 2
  store i32 %19, i32* %21, align 8
  %22 = load %struct.factors_request*, %struct.factors_request** %2, align 8
  %23 = getelementptr inbounds %struct.factors_request, %struct.factors_request* %22, i32 0, i32 2
  %24 = load i32, i32* %23, align 8
  %25 = icmp sgt i32 %24, 3
  br i1 %25, label %26, label %29

26:                                               ; preds = %1
  %27 = load %struct.factors_request*, %struct.factors_request** %2, align 8
  %28 = getelementptr inbounds %struct.factors_request, %struct.factors_request* %27, i32 0, i32 2
  store i32 3, i32* %28, align 8
  br label %29

29:                                               ; preds = %26, %1
  %30 = load i32, i32* %3, align 4
  %31 = load %struct.factors_request*, %struct.factors_request** %2, align 8
  %32 = getelementptr inbounds %struct.factors_request, %struct.factors_request* %31, i32 0, i32 2
  %33 = load i32, i32* %32, align 8
  %34 = add nsw i32 %33, 1
  %35 = call i64 @DIV_ROUND_UP(i32 %30, i32 %34)
  %36 = sub nsw i64 %35, 1
  %37 = load %struct.factors_request*, %struct.factors_request** %2, align 8
  %38 = getelementptr inbounds %struct.factors_request, %struct.factors_request* %37, i32 0, i32 3
  store i64 %36, i64* %38, align 8
  ret void
}

declare dso_local i64 @DIV_ROUND_UP(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
