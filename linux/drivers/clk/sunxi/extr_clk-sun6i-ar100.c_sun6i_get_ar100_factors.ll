; ModuleID = '/home/carl/AnghaBench/linux/drivers/clk/sunxi/extr_clk-sun6i-ar100.c_sun6i_get_ar100_factors.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/clk/sunxi/extr_clk-sun6i-ar100.c_sun6i_get_ar100_factors.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.factors_request = type { i32, i32, i64, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.factors_request*)* @sun6i_get_ar100_factors to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sun6i_get_ar100_factors(%struct.factors_request* %0) #0 {
  %2 = alloca %struct.factors_request*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  store %struct.factors_request* %0, %struct.factors_request** %2, align 8
  %5 = load %struct.factors_request*, %struct.factors_request** %2, align 8
  %6 = getelementptr inbounds %struct.factors_request, %struct.factors_request* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 8
  %8 = load %struct.factors_request*, %struct.factors_request** %2, align 8
  %9 = getelementptr inbounds %struct.factors_request, %struct.factors_request* %8, i32 0, i32 1
  %10 = load i32, i32* %9, align 4
  %11 = icmp sgt i32 %7, %10
  br i1 %11, label %12, label %18

12:                                               ; preds = %1
  %13 = load %struct.factors_request*, %struct.factors_request** %2, align 8
  %14 = getelementptr inbounds %struct.factors_request, %struct.factors_request* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  %16 = load %struct.factors_request*, %struct.factors_request** %2, align 8
  %17 = getelementptr inbounds %struct.factors_request, %struct.factors_request* %16, i32 0, i32 0
  store i32 %15, i32* %17, align 8
  br label %18

18:                                               ; preds = %12, %1
  %19 = load %struct.factors_request*, %struct.factors_request** %2, align 8
  %20 = getelementptr inbounds %struct.factors_request, %struct.factors_request* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = load %struct.factors_request*, %struct.factors_request** %2, align 8
  %23 = getelementptr inbounds %struct.factors_request, %struct.factors_request* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = call i64 @DIV_ROUND_UP(i32 %21, i32 %24)
  store i64 %25, i64* %3, align 8
  %26 = load i64, i64* %3, align 8
  %27 = icmp ult i64 %26, 32
  br i1 %27, label %28, label %29

28:                                               ; preds = %18
  store i32 0, i32* %4, align 4
  br label %42

29:                                               ; preds = %18
  %30 = load i64, i64* %3, align 8
  %31 = lshr i64 %30, 1
  %32 = icmp ult i64 %31, 32
  br i1 %32, label %33, label %34

33:                                               ; preds = %29
  store i32 1, i32* %4, align 4
  br label %41

34:                                               ; preds = %29
  %35 = load i64, i64* %3, align 8
  %36 = lshr i64 %35, 2
  %37 = icmp ult i64 %36, 32
  br i1 %37, label %38, label %39

38:                                               ; preds = %34
  store i32 2, i32* %4, align 4
  br label %40

39:                                               ; preds = %34
  store i32 3, i32* %4, align 4
  br label %40

40:                                               ; preds = %39, %38
  br label %41

41:                                               ; preds = %40, %33
  br label %42

42:                                               ; preds = %41, %28
  %43 = load i32, i32* %4, align 4
  %44 = load i64, i64* %3, align 8
  %45 = zext i32 %43 to i64
  %46 = lshr i64 %44, %45
  store i64 %46, i64* %3, align 8
  %47 = load i64, i64* %3, align 8
  %48 = icmp ugt i64 %47, 32
  br i1 %48, label %49, label %50

49:                                               ; preds = %42
  store i64 32, i64* %3, align 8
  br label %50

50:                                               ; preds = %49, %42
  %51 = load %struct.factors_request*, %struct.factors_request** %2, align 8
  %52 = getelementptr inbounds %struct.factors_request, %struct.factors_request* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  %54 = load i32, i32* %4, align 4
  %55 = ashr i32 %53, %54
  %56 = sext i32 %55 to i64
  %57 = load i64, i64* %3, align 8
  %58 = udiv i64 %56, %57
  %59 = trunc i64 %58 to i32
  %60 = load %struct.factors_request*, %struct.factors_request** %2, align 8
  %61 = getelementptr inbounds %struct.factors_request, %struct.factors_request* %60, i32 0, i32 0
  store i32 %59, i32* %61, align 8
  %62 = load i64, i64* %3, align 8
  %63 = sub i64 %62, 1
  %64 = load %struct.factors_request*, %struct.factors_request** %2, align 8
  %65 = getelementptr inbounds %struct.factors_request, %struct.factors_request* %64, i32 0, i32 2
  store i64 %63, i64* %65, align 8
  %66 = load i32, i32* %4, align 4
  %67 = load %struct.factors_request*, %struct.factors_request** %2, align 8
  %68 = getelementptr inbounds %struct.factors_request, %struct.factors_request* %67, i32 0, i32 3
  store i32 %66, i32* %68, align 8
  ret void
}

declare dso_local i64 @DIV_ROUND_UP(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
