; ModuleID = '/home/carl/AnghaBench/linux/drivers/clk/sunxi/extr_clk-sunxi.c_sun6i_a31_get_pll1_factors.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/clk/sunxi/extr_clk-sunxi.c_sun6i_a31_get_pll1_factors.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.factors_request = type { i32, i32, i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.factors_request*)* @sun6i_a31_get_pll1_factors to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sun6i_a31_get_pll1_factors(%struct.factors_request* %0) #0 {
  %2 = alloca %struct.factors_request*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  store %struct.factors_request* %0, %struct.factors_request** %2, align 8
  %7 = load %struct.factors_request*, %struct.factors_request** %2, align 8
  %8 = getelementptr inbounds %struct.factors_request, %struct.factors_request* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = sdiv i32 %9, 1000000
  %11 = sext i32 %10 to i64
  store i64 %11, i64* %3, align 8
  %12 = load %struct.factors_request*, %struct.factors_request** %2, align 8
  %13 = getelementptr inbounds %struct.factors_request, %struct.factors_request* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 4
  %15 = sdiv i32 %14, 1000000
  %16 = sext i32 %15 to i64
  store i64 %16, i64* %4, align 8
  %17 = load i64, i64* %3, align 8
  %18 = call i64 @round_down(i64 %17, i32 6)
  store i64 %18, i64* %5, align 8
  %19 = load i64, i64* %3, align 8
  %20 = call i64 @round_down(i64 %19, i32 16)
  store i64 %20, i64* %6, align 8
  %21 = load i64, i64* %5, align 8
  %22 = load i64, i64* %6, align 8
  %23 = icmp sgt i64 %21, %22
  br i1 %23, label %24, label %26

24:                                               ; preds = %1
  %25 = load i64, i64* %5, align 8
  store i64 %25, i64* %3, align 8
  br label %28

26:                                               ; preds = %1
  %27 = load i64, i64* %6, align 8
  store i64 %27, i64* %3, align 8
  br label %28

28:                                               ; preds = %26, %24
  %29 = load i64, i64* %3, align 8
  %30 = mul nsw i64 %29, 1000000
  %31 = trunc i64 %30 to i32
  %32 = load %struct.factors_request*, %struct.factors_request** %2, align 8
  %33 = getelementptr inbounds %struct.factors_request, %struct.factors_request* %32, i32 0, i32 0
  store i32 %31, i32* %33, align 4
  %34 = load i64, i64* %3, align 8
  %35 = srem i64 %34, 32
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %40, label %37

37:                                               ; preds = %28
  %38 = load %struct.factors_request*, %struct.factors_request** %2, align 8
  %39 = getelementptr inbounds %struct.factors_request, %struct.factors_request* %38, i32 0, i32 2
  store i32 3, i32* %39, align 4
  br label %59

40:                                               ; preds = %28
  %41 = load i64, i64* %3, align 8
  %42 = srem i64 %41, 9
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %47, label %44

44:                                               ; preds = %40
  %45 = load %struct.factors_request*, %struct.factors_request** %2, align 8
  %46 = getelementptr inbounds %struct.factors_request, %struct.factors_request* %45, i32 0, i32 2
  store i32 2, i32* %46, align 4
  br label %58

47:                                               ; preds = %40
  %48 = load i64, i64* %3, align 8
  %49 = srem i64 %48, 8
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %54, label %51

51:                                               ; preds = %47
  %52 = load %struct.factors_request*, %struct.factors_request** %2, align 8
  %53 = getelementptr inbounds %struct.factors_request, %struct.factors_request* %52, i32 0, i32 2
  store i32 1, i32* %53, align 4
  br label %57

54:                                               ; preds = %47
  %55 = load %struct.factors_request*, %struct.factors_request** %2, align 8
  %56 = getelementptr inbounds %struct.factors_request, %struct.factors_request* %55, i32 0, i32 2
  store i32 0, i32* %56, align 4
  br label %57

57:                                               ; preds = %54, %51
  br label %58

58:                                               ; preds = %57, %44
  br label %59

59:                                               ; preds = %58, %37
  %60 = load i64, i64* %3, align 8
  %61 = srem i64 %60, 6
  %62 = icmp eq i64 %61, 2
  br i1 %62, label %67, label %63

63:                                               ; preds = %59
  %64 = load i64, i64* %3, align 8
  %65 = srem i64 %64, 6
  %66 = icmp eq i64 %65, 4
  br i1 %66, label %67, label %70

67:                                               ; preds = %63, %59
  %68 = load %struct.factors_request*, %struct.factors_request** %2, align 8
  %69 = getelementptr inbounds %struct.factors_request, %struct.factors_request* %68, i32 0, i32 3
  store i32 2, i32* %69, align 4
  br label %82

70:                                               ; preds = %63
  %71 = load i64, i64* %3, align 8
  %72 = sdiv i64 %71, 6
  %73 = and i64 %72, 1
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %75, label %78

75:                                               ; preds = %70
  %76 = load %struct.factors_request*, %struct.factors_request** %2, align 8
  %77 = getelementptr inbounds %struct.factors_request, %struct.factors_request* %76, i32 0, i32 3
  store i32 3, i32* %77, align 4
  br label %81

78:                                               ; preds = %70
  %79 = load %struct.factors_request*, %struct.factors_request** %2, align 8
  %80 = getelementptr inbounds %struct.factors_request, %struct.factors_request* %79, i32 0, i32 3
  store i32 1, i32* %80, align 4
  br label %81

81:                                               ; preds = %78, %75
  br label %82

82:                                               ; preds = %81, %67
  %83 = load i64, i64* %3, align 8
  %84 = load %struct.factors_request*, %struct.factors_request** %2, align 8
  %85 = getelementptr inbounds %struct.factors_request, %struct.factors_request* %84, i32 0, i32 3
  %86 = load i32, i32* %85, align 4
  %87 = add nsw i32 %86, 1
  %88 = sext i32 %87 to i64
  %89 = mul nsw i64 %83, %88
  %90 = load %struct.factors_request*, %struct.factors_request** %2, align 8
  %91 = getelementptr inbounds %struct.factors_request, %struct.factors_request* %90, i32 0, i32 2
  %92 = load i32, i32* %91, align 4
  %93 = add nsw i32 %92, 1
  %94 = sext i32 %93 to i64
  %95 = load i64, i64* %4, align 8
  %96 = mul nsw i64 %94, %95
  %97 = sdiv i64 %89, %96
  %98 = sub nsw i64 %97, 1
  %99 = trunc i64 %98 to i32
  %100 = load %struct.factors_request*, %struct.factors_request** %2, align 8
  %101 = getelementptr inbounds %struct.factors_request, %struct.factors_request* %100, i32 0, i32 4
  store i32 %99, i32* %101, align 4
  %102 = load %struct.factors_request*, %struct.factors_request** %2, align 8
  %103 = getelementptr inbounds %struct.factors_request, %struct.factors_request* %102, i32 0, i32 4
  %104 = load i32, i32* %103, align 4
  %105 = add nsw i32 %104, 1
  %106 = icmp sgt i32 %105, 31
  br i1 %106, label %107, label %130

107:                                              ; preds = %82
  %108 = load %struct.factors_request*, %struct.factors_request** %2, align 8
  %109 = getelementptr inbounds %struct.factors_request, %struct.factors_request* %108, i32 0, i32 3
  %110 = load i32, i32* %109, align 4
  %111 = add nsw i32 %110, 1
  %112 = icmp sgt i32 %111, 1
  br i1 %112, label %113, label %130

113:                                              ; preds = %107
  %114 = load %struct.factors_request*, %struct.factors_request** %2, align 8
  %115 = getelementptr inbounds %struct.factors_request, %struct.factors_request* %114, i32 0, i32 4
  %116 = load i32, i32* %115, align 4
  %117 = add nsw i32 %116, 1
  %118 = sdiv i32 %117, 2
  %119 = sub nsw i32 %118, 1
  %120 = load %struct.factors_request*, %struct.factors_request** %2, align 8
  %121 = getelementptr inbounds %struct.factors_request, %struct.factors_request* %120, i32 0, i32 4
  store i32 %119, i32* %121, align 4
  %122 = load %struct.factors_request*, %struct.factors_request** %2, align 8
  %123 = getelementptr inbounds %struct.factors_request, %struct.factors_request* %122, i32 0, i32 3
  %124 = load i32, i32* %123, align 4
  %125 = add nsw i32 %124, 1
  %126 = sdiv i32 %125, 2
  %127 = sub nsw i32 %126, 1
  %128 = load %struct.factors_request*, %struct.factors_request** %2, align 8
  %129 = getelementptr inbounds %struct.factors_request, %struct.factors_request* %128, i32 0, i32 3
  store i32 %127, i32* %129, align 4
  br label %130

130:                                              ; preds = %113, %107, %82
  ret void
}

declare dso_local i64 @round_down(i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
