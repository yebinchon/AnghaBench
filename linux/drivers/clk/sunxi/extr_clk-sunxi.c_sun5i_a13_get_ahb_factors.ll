; ModuleID = '/home/carl/AnghaBench/linux/drivers/clk/sunxi/extr_clk-sunxi.c_sun5i_a13_get_ahb_factors.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/clk/sunxi/extr_clk-sunxi.c_sun5i_a13_get_ahb_factors.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.factors_request = type { i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.factors_request*)* @sun5i_a13_get_ahb_factors to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sun5i_a13_get_ahb_factors(%struct.factors_request* %0) #0 {
  %2 = alloca %struct.factors_request*, align 8
  %3 = alloca i32, align 4
  store %struct.factors_request* %0, %struct.factors_request** %2, align 8
  %4 = load %struct.factors_request*, %struct.factors_request** %2, align 8
  %5 = getelementptr inbounds %struct.factors_request, %struct.factors_request* %4, i32 0, i32 0
  %6 = load i32, i32* %5, align 4
  %7 = load %struct.factors_request*, %struct.factors_request** %2, align 8
  %8 = getelementptr inbounds %struct.factors_request, %struct.factors_request* %7, i32 0, i32 1
  %9 = load i32, i32* %8, align 4
  %10 = icmp slt i32 %6, %9
  br i1 %10, label %11, label %17

11:                                               ; preds = %1
  %12 = load %struct.factors_request*, %struct.factors_request** %2, align 8
  %13 = getelementptr inbounds %struct.factors_request, %struct.factors_request* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = load %struct.factors_request*, %struct.factors_request** %2, align 8
  %16 = getelementptr inbounds %struct.factors_request, %struct.factors_request* %15, i32 0, i32 1
  store i32 %14, i32* %16, align 4
  br label %17

17:                                               ; preds = %11, %1
  %18 = load %struct.factors_request*, %struct.factors_request** %2, align 8
  %19 = getelementptr inbounds %struct.factors_request, %struct.factors_request* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = icmp slt i32 %20, 8000
  br i1 %21, label %22, label %25

22:                                               ; preds = %17
  %23 = load %struct.factors_request*, %struct.factors_request** %2, align 8
  %24 = getelementptr inbounds %struct.factors_request, %struct.factors_request* %23, i32 0, i32 1
  store i32 8000, i32* %24, align 4
  br label %25

25:                                               ; preds = %22, %17
  %26 = load %struct.factors_request*, %struct.factors_request** %2, align 8
  %27 = getelementptr inbounds %struct.factors_request, %struct.factors_request* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = icmp sgt i32 %28, 300000000
  br i1 %29, label %30, label %33

30:                                               ; preds = %25
  %31 = load %struct.factors_request*, %struct.factors_request** %2, align 8
  %32 = getelementptr inbounds %struct.factors_request, %struct.factors_request* %31, i32 0, i32 1
  store i32 300000000, i32* %32, align 4
  br label %33

33:                                               ; preds = %30, %25
  %34 = load %struct.factors_request*, %struct.factors_request** %2, align 8
  %35 = getelementptr inbounds %struct.factors_request, %struct.factors_request* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = load %struct.factors_request*, %struct.factors_request** %2, align 8
  %38 = getelementptr inbounds %struct.factors_request, %struct.factors_request* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @DIV_ROUND_UP(i32 %36, i32 %39)
  %41 = call i32 @order_base_2(i32 %40)
  store i32 %41, i32* %3, align 4
  %42 = load i32, i32* %3, align 4
  %43 = icmp sgt i32 %42, 3
  br i1 %43, label %44, label %45

44:                                               ; preds = %33
  store i32 3, i32* %3, align 4
  br label %45

45:                                               ; preds = %44, %33
  %46 = load %struct.factors_request*, %struct.factors_request** %2, align 8
  %47 = getelementptr inbounds %struct.factors_request, %struct.factors_request* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = load i32, i32* %3, align 4
  %50 = ashr i32 %48, %49
  %51 = load %struct.factors_request*, %struct.factors_request** %2, align 8
  %52 = getelementptr inbounds %struct.factors_request, %struct.factors_request* %51, i32 0, i32 1
  store i32 %50, i32* %52, align 4
  %53 = load i32, i32* %3, align 4
  %54 = load %struct.factors_request*, %struct.factors_request** %2, align 8
  %55 = getelementptr inbounds %struct.factors_request, %struct.factors_request* %54, i32 0, i32 2
  store i32 %53, i32* %55, align 4
  ret void
}

declare dso_local i32 @order_base_2(i32) #1

declare dso_local i32 @DIV_ROUND_UP(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
