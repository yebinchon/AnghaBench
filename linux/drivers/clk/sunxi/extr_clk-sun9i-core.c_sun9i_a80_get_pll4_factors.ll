; ModuleID = '/home/carl/AnghaBench/linux/drivers/clk/sunxi/extr_clk-sun9i-core.c_sun9i_a80_get_pll4_factors.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/clk/sunxi/extr_clk-sun9i-core.c_sun9i_a80_get_pll4_factors.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.factors_request = type { i32, i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.factors_request*)* @sun9i_a80_get_pll4_factors to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sun9i_a80_get_pll4_factors(%struct.factors_request* %0) #0 {
  %2 = alloca %struct.factors_request*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.factors_request* %0, %struct.factors_request** %2, align 8
  store i32 1, i32* %4, align 4
  store i32 1, i32* %5, align 4
  %6 = load %struct.factors_request*, %struct.factors_request** %2, align 8
  %7 = getelementptr inbounds %struct.factors_request, %struct.factors_request* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = call i32 @DIV_ROUND_UP(i32 %8, i32 6000000)
  store i32 %9, i32* %3, align 4
  %10 = load i32, i32* %3, align 4
  %11 = icmp sgt i32 %10, 255
  br i1 %11, label %12, label %16

12:                                               ; preds = %1
  store i32 0, i32* %4, align 4
  %13 = load i32, i32* %3, align 4
  %14 = add nsw i32 %13, 1
  %15 = sdiv i32 %14, 2
  store i32 %15, i32* %3, align 4
  br label %16

16:                                               ; preds = %12, %1
  %17 = load i32, i32* %3, align 4
  %18 = icmp sgt i32 %17, 255
  br i1 %18, label %19, label %23

19:                                               ; preds = %16
  store i32 0, i32* %5, align 4
  %20 = load i32, i32* %3, align 4
  %21 = add nsw i32 %20, 1
  %22 = sdiv i32 %21, 2
  store i32 %22, i32* %3, align 4
  br label %23

23:                                               ; preds = %19, %16
  %24 = load i32, i32* %3, align 4
  %25 = icmp sgt i32 %24, 255
  br i1 %25, label %26, label %27

26:                                               ; preds = %23
  store i32 255, i32* %3, align 4
  br label %32

27:                                               ; preds = %23
  %28 = load i32, i32* %3, align 4
  %29 = icmp slt i32 %28, 12
  br i1 %29, label %30, label %31

30:                                               ; preds = %27
  store i32 12, i32* %3, align 4
  br label %31

31:                                               ; preds = %30, %27
  br label %32

32:                                               ; preds = %31, %26
  %33 = load i32, i32* %3, align 4
  %34 = mul nsw i32 24000000, %33
  %35 = load i32, i32* %5, align 4
  %36 = ashr i32 %34, %35
  %37 = load i32, i32* %4, align 4
  %38 = add nsw i32 %37, 1
  %39 = sdiv i32 %36, %38
  %40 = load %struct.factors_request*, %struct.factors_request** %2, align 8
  %41 = getelementptr inbounds %struct.factors_request, %struct.factors_request* %40, i32 0, i32 0
  store i32 %39, i32* %41, align 4
  %42 = load i32, i32* %3, align 4
  %43 = load %struct.factors_request*, %struct.factors_request** %2, align 8
  %44 = getelementptr inbounds %struct.factors_request, %struct.factors_request* %43, i32 0, i32 1
  store i32 %42, i32* %44, align 4
  %45 = load i32, i32* %4, align 4
  %46 = load %struct.factors_request*, %struct.factors_request** %2, align 8
  %47 = getelementptr inbounds %struct.factors_request, %struct.factors_request* %46, i32 0, i32 2
  store i32 %45, i32* %47, align 4
  %48 = load i32, i32* %5, align 4
  %49 = load %struct.factors_request*, %struct.factors_request** %2, align 8
  %50 = getelementptr inbounds %struct.factors_request, %struct.factors_request* %49, i32 0, i32 3
  store i32 %48, i32* %50, align 4
  ret void
}

declare dso_local i32 @DIV_ROUND_UP(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
