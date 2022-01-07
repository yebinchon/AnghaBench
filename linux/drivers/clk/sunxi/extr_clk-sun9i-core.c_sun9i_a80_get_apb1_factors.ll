; ModuleID = '/home/carl/AnghaBench/linux/drivers/clk/sunxi/extr_clk-sun9i-core.c_sun9i_a80_get_apb1_factors.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/clk/sunxi/extr_clk-sun9i-core.c_sun9i_a80_get_apb1_factors.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.factors_request = type { i32, i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.factors_request*)* @sun9i_a80_get_apb1_factors to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sun9i_a80_get_apb1_factors(%struct.factors_request* %0) #0 {
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
  %19 = getelementptr inbounds %struct.factors_request, %struct.factors_request* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = load %struct.factors_request*, %struct.factors_request** %2, align 8
  %22 = getelementptr inbounds %struct.factors_request, %struct.factors_request* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @DIV_ROUND_UP(i32 %20, i32 %23)
  store i32 %24, i32* %3, align 4
  %25 = load i32, i32* %3, align 4
  %26 = icmp sgt i32 %25, 256
  br i1 %26, label %27, label %28

27:                                               ; preds = %17
  store i32 256, i32* %3, align 4
  br label %28

28:                                               ; preds = %27, %17
  %29 = load i32, i32* %3, align 4
  %30 = call i32 @order_base_2(i32 %29)
  %31 = load %struct.factors_request*, %struct.factors_request** %2, align 8
  %32 = getelementptr inbounds %struct.factors_request, %struct.factors_request* %31, i32 0, i32 2
  store i32 %30, i32* %32, align 4
  %33 = load %struct.factors_request*, %struct.factors_request** %2, align 8
  %34 = getelementptr inbounds %struct.factors_request, %struct.factors_request* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = load %struct.factors_request*, %struct.factors_request** %2, align 8
  %37 = getelementptr inbounds %struct.factors_request, %struct.factors_request* %36, i32 0, i32 2
  %38 = load i32, i32* %37, align 4
  %39 = ashr i32 %35, %38
  %40 = sub nsw i32 %39, 1
  %41 = load %struct.factors_request*, %struct.factors_request** %2, align 8
  %42 = getelementptr inbounds %struct.factors_request, %struct.factors_request* %41, i32 0, i32 3
  store i32 %40, i32* %42, align 4
  %43 = load %struct.factors_request*, %struct.factors_request** %2, align 8
  %44 = getelementptr inbounds %struct.factors_request, %struct.factors_request* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = load %struct.factors_request*, %struct.factors_request** %2, align 8
  %47 = getelementptr inbounds %struct.factors_request, %struct.factors_request* %46, i32 0, i32 2
  %48 = load i32, i32* %47, align 4
  %49 = ashr i32 %45, %48
  %50 = load %struct.factors_request*, %struct.factors_request** %2, align 8
  %51 = getelementptr inbounds %struct.factors_request, %struct.factors_request* %50, i32 0, i32 3
  %52 = load i32, i32* %51, align 4
  %53 = add nsw i32 %52, 1
  %54 = sdiv i32 %49, %53
  %55 = load %struct.factors_request*, %struct.factors_request** %2, align 8
  %56 = getelementptr inbounds %struct.factors_request, %struct.factors_request* %55, i32 0, i32 1
  store i32 %54, i32* %56, align 4
  ret void
}

declare dso_local i32 @DIV_ROUND_UP(i32, i32) #1

declare dso_local i32 @order_base_2(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
