; ModuleID = '/home/carl/AnghaBench/linux/drivers/clk/sunxi/extr_clk-sunxi.c_sun6i_get_ahb1_factors.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/clk/sunxi/extr_clk-sunxi.c_sun6i_get_ahb1_factors.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.factors_request = type { i32, i32, i64, i32, i32 }

@SUN6I_AHB1_PARENT_PLL6 = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.factors_request*)* @sun6i_get_ahb1_factors to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sun6i_get_ahb1_factors(%struct.factors_request* %0) #0 {
  %2 = alloca %struct.factors_request*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.factors_request* %0, %struct.factors_request** %2, align 8
  store i32 1, i32* %5, align 4
  %6 = load %struct.factors_request*, %struct.factors_request** %2, align 8
  %7 = getelementptr inbounds %struct.factors_request, %struct.factors_request* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 8
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %10, label %24

10:                                               ; preds = %1
  %11 = load %struct.factors_request*, %struct.factors_request** %2, align 8
  %12 = getelementptr inbounds %struct.factors_request, %struct.factors_request* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 4
  %14 = load %struct.factors_request*, %struct.factors_request** %2, align 8
  %15 = getelementptr inbounds %struct.factors_request, %struct.factors_request* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = icmp sgt i32 %13, %16
  br i1 %17, label %18, label %24

18:                                               ; preds = %10
  %19 = load %struct.factors_request*, %struct.factors_request** %2, align 8
  %20 = getelementptr inbounds %struct.factors_request, %struct.factors_request* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = load %struct.factors_request*, %struct.factors_request** %2, align 8
  %23 = getelementptr inbounds %struct.factors_request, %struct.factors_request* %22, i32 0, i32 1
  store i32 %21, i32* %23, align 4
  br label %24

24:                                               ; preds = %18, %10, %1
  %25 = load %struct.factors_request*, %struct.factors_request** %2, align 8
  %26 = getelementptr inbounds %struct.factors_request, %struct.factors_request* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = load %struct.factors_request*, %struct.factors_request** %2, align 8
  %29 = getelementptr inbounds %struct.factors_request, %struct.factors_request* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @DIV_ROUND_UP(i32 %27, i32 %30)
  store i32 %31, i32* %3, align 4
  %32 = load %struct.factors_request*, %struct.factors_request** %2, align 8
  %33 = getelementptr inbounds %struct.factors_request, %struct.factors_request* %32, i32 0, i32 2
  %34 = load i64, i64* %33, align 8
  %35 = load i64, i64* @SUN6I_AHB1_PARENT_PLL6, align 8
  %36 = icmp eq i64 %34, %35
  br i1 %36, label %37, label %59

37:                                               ; preds = %24
  %38 = load i32, i32* %3, align 4
  %39 = icmp slt i32 %38, 4
  br i1 %39, label %40, label %41

40:                                               ; preds = %37
  store i32 0, i32* %4, align 4
  br label %54

41:                                               ; preds = %37
  %42 = load i32, i32* %3, align 4
  %43 = sdiv i32 %42, 2
  %44 = icmp slt i32 %43, 4
  br i1 %44, label %45, label %46

45:                                               ; preds = %41
  store i32 1, i32* %4, align 4
  br label %53

46:                                               ; preds = %41
  %47 = load i32, i32* %3, align 4
  %48 = sdiv i32 %47, 4
  %49 = icmp slt i32 %48, 4
  br i1 %49, label %50, label %51

50:                                               ; preds = %46
  store i32 2, i32* %4, align 4
  br label %52

51:                                               ; preds = %46
  store i32 3, i32* %4, align 4
  br label %52

52:                                               ; preds = %51, %50
  br label %53

53:                                               ; preds = %52, %45
  br label %54

54:                                               ; preds = %53, %40
  %55 = load i32, i32* %3, align 4
  %56 = load i32, i32* %4, align 4
  %57 = shl i32 1, %56
  %58 = call i32 @DIV_ROUND_UP(i32 %55, i32 %57)
  store i32 %58, i32* %5, align 4
  br label %69

59:                                               ; preds = %24
  %60 = load i32, i32* %3, align 4
  %61 = call i32 @__roundup_pow_of_two(i32 %60)
  store i32 %61, i32* %4, align 4
  %62 = load i32, i32* %4, align 4
  %63 = icmp sgt i32 %62, 3
  br i1 %63, label %64, label %65

64:                                               ; preds = %59
  br label %67

65:                                               ; preds = %59
  %66 = load i32, i32* %4, align 4
  br label %67

67:                                               ; preds = %65, %64
  %68 = phi i32 [ 3, %64 ], [ %66, %65 ]
  store i32 %68, i32* %4, align 4
  br label %69

69:                                               ; preds = %67, %54
  %70 = load %struct.factors_request*, %struct.factors_request** %2, align 8
  %71 = getelementptr inbounds %struct.factors_request, %struct.factors_request* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 8
  %73 = load i32, i32* %5, align 4
  %74 = sdiv i32 %72, %73
  %75 = load i32, i32* %4, align 4
  %76 = ashr i32 %74, %75
  %77 = load %struct.factors_request*, %struct.factors_request** %2, align 8
  %78 = getelementptr inbounds %struct.factors_request, %struct.factors_request* %77, i32 0, i32 1
  store i32 %76, i32* %78, align 4
  %79 = load i32, i32* %4, align 4
  %80 = load %struct.factors_request*, %struct.factors_request** %2, align 8
  %81 = getelementptr inbounds %struct.factors_request, %struct.factors_request* %80, i32 0, i32 3
  store i32 %79, i32* %81, align 8
  %82 = load i32, i32* %5, align 4
  %83 = sub nsw i32 %82, 1
  %84 = load %struct.factors_request*, %struct.factors_request** %2, align 8
  %85 = getelementptr inbounds %struct.factors_request, %struct.factors_request* %84, i32 0, i32 4
  store i32 %83, i32* %85, align 4
  ret void
}

declare dso_local i32 @DIV_ROUND_UP(i32, i32) #1

declare dso_local i32 @__roundup_pow_of_two(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
