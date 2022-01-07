; ModuleID = '/home/carl/AnghaBench/linux/drivers/clk/extr_clk-si544.c_si544_calc_muldiv.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/clk/extr_clk-si544.c_si544_calc_muldiv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.clk_si544_muldiv = type { i64, i32, i32, i32, i64 }

@MIN_HSDIV_FREQ = common dso_local global i64 0, align 8
@HS_DIV_MAX = common dso_local global i32 0, align 4
@FVCO_MIN = common dso_local global i32 0, align 4
@HS_DIV_MAX_ODD = common dso_local global i32 0, align 4
@FXO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.clk_si544_muldiv*, i64)* @si544_calc_muldiv to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @si544_calc_muldiv(%struct.clk_si544_muldiv* %0, i64 %1) #0 {
  %3 = alloca %struct.clk_si544_muldiv*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  store %struct.clk_si544_muldiv* %0, %struct.clk_si544_muldiv** %3, align 8
  store i64 %1, i64* %4, align 8
  %9 = load i64, i64* %4, align 8
  %10 = trunc i64 %9 to i32
  store i32 %10, i32* %6, align 4
  %11 = load %struct.clk_si544_muldiv*, %struct.clk_si544_muldiv** %3, align 8
  %12 = getelementptr inbounds %struct.clk_si544_muldiv, %struct.clk_si544_muldiv* %11, i32 0, i32 0
  store i64 0, i64* %12, align 8
  %13 = load i64, i64* %4, align 8
  %14 = load i64, i64* @MIN_HSDIV_FREQ, align 8
  %15 = icmp uge i64 %13, %14
  br i1 %15, label %16, label %19

16:                                               ; preds = %2
  %17 = load %struct.clk_si544_muldiv*, %struct.clk_si544_muldiv** %3, align 8
  %18 = getelementptr inbounds %struct.clk_si544_muldiv, %struct.clk_si544_muldiv* %17, i32 0, i32 0
  store i64 0, i64* %18, align 8
  br label %48

19:                                               ; preds = %2
  store i64 1, i64* %8, align 8
  %20 = load i32, i32* @HS_DIV_MAX, align 4
  %21 = mul nsw i32 2, %20
  store i32 %21, i32* %7, align 4
  br label %22

22:                                               ; preds = %35, %19
  %23 = load i32, i32* %7, align 4
  %24 = load i32, i32* @HS_DIV_MAX, align 4
  %25 = mul nsw i32 %24, 32
  %26 = icmp sle i32 %23, %25
  br i1 %26, label %27, label %40

27:                                               ; preds = %22
  %28 = load i64, i64* %4, align 8
  %29 = trunc i64 %28 to i32
  %30 = load i32, i32* %7, align 4
  %31 = mul nsw i32 %29, %30
  %32 = load i32, i32* @FVCO_MIN, align 4
  %33 = icmp sge i32 %31, %32
  br i1 %33, label %34, label %35

34:                                               ; preds = %27
  br label %40

35:                                               ; preds = %27
  %36 = load i64, i64* %8, align 8
  %37 = add i64 %36, 1
  store i64 %37, i64* %8, align 8
  %38 = load i32, i32* %7, align 4
  %39 = shl i32 %38, 1
  store i32 %39, i32* %7, align 4
  br label %22

40:                                               ; preds = %34, %22
  %41 = load i64, i64* %8, align 8
  %42 = load %struct.clk_si544_muldiv*, %struct.clk_si544_muldiv** %3, align 8
  %43 = getelementptr inbounds %struct.clk_si544_muldiv, %struct.clk_si544_muldiv* %42, i32 0, i32 0
  store i64 %41, i64* %43, align 8
  %44 = load i64, i64* %4, align 8
  %45 = load i64, i64* %8, align 8
  %46 = shl i64 %44, %45
  %47 = trunc i64 %46 to i32
  store i32 %47, i32* %6, align 4
  br label %48

48:                                               ; preds = %40, %16
  %49 = load i32, i32* @FVCO_MIN, align 4
  %50 = load i32, i32* %6, align 4
  %51 = add nsw i32 %49, %50
  %52 = sub nsw i32 %51, 1
  store i32 %52, i32* %5, align 4
  %53 = load i32, i32* %5, align 4
  %54 = load i32, i32* %6, align 4
  %55 = call i32 @do_div(i32 %53, i32 %54)
  %56 = load i32, i32* %5, align 4
  %57 = load %struct.clk_si544_muldiv*, %struct.clk_si544_muldiv** %3, align 8
  %58 = getelementptr inbounds %struct.clk_si544_muldiv, %struct.clk_si544_muldiv* %57, i32 0, i32 1
  store i32 %56, i32* %58, align 8
  %59 = load %struct.clk_si544_muldiv*, %struct.clk_si544_muldiv** %3, align 8
  %60 = getelementptr inbounds %struct.clk_si544_muldiv, %struct.clk_si544_muldiv* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 8
  %62 = and i32 %61, 1
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %80

64:                                               ; preds = %48
  %65 = load %struct.clk_si544_muldiv*, %struct.clk_si544_muldiv** %3, align 8
  %66 = getelementptr inbounds %struct.clk_si544_muldiv, %struct.clk_si544_muldiv* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 8
  %68 = load i32, i32* @HS_DIV_MAX_ODD, align 4
  %69 = icmp sgt i32 %67, %68
  br i1 %69, label %75, label %70

70:                                               ; preds = %64
  %71 = load %struct.clk_si544_muldiv*, %struct.clk_si544_muldiv** %3, align 8
  %72 = getelementptr inbounds %struct.clk_si544_muldiv, %struct.clk_si544_muldiv* %71, i32 0, i32 0
  %73 = load i64, i64* %72, align 8
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %75, label %80

75:                                               ; preds = %70, %64
  %76 = load %struct.clk_si544_muldiv*, %struct.clk_si544_muldiv** %3, align 8
  %77 = getelementptr inbounds %struct.clk_si544_muldiv, %struct.clk_si544_muldiv* %76, i32 0, i32 1
  %78 = load i32, i32* %77, align 8
  %79 = add nsw i32 %78, 1
  store i32 %79, i32* %77, align 8
  br label %80

80:                                               ; preds = %75, %70, %48
  %81 = load i32, i32* %6, align 4
  %82 = load %struct.clk_si544_muldiv*, %struct.clk_si544_muldiv** %3, align 8
  %83 = getelementptr inbounds %struct.clk_si544_muldiv, %struct.clk_si544_muldiv* %82, i32 0, i32 1
  %84 = load i32, i32* %83, align 8
  %85 = mul nsw i32 %81, %84
  store i32 %85, i32* %5, align 4
  %86 = load i32, i32* %5, align 4
  %87 = load i32, i32* @FXO, align 4
  %88 = call i32 @do_div(i32 %86, i32 %87)
  store i32 %88, i32* %7, align 4
  %89 = load i32, i32* %5, align 4
  %90 = load %struct.clk_si544_muldiv*, %struct.clk_si544_muldiv** %3, align 8
  %91 = getelementptr inbounds %struct.clk_si544_muldiv, %struct.clk_si544_muldiv* %90, i32 0, i32 2
  store i32 %89, i32* %91, align 4
  %92 = load i32, i32* %7, align 4
  %93 = shl i32 %92, 32
  store i32 %93, i32* %5, align 4
  %94 = load i32, i32* @FXO, align 4
  %95 = sdiv i32 %94, 2
  %96 = load i32, i32* %5, align 4
  %97 = add nsw i32 %96, %95
  store i32 %97, i32* %5, align 4
  %98 = load i32, i32* %5, align 4
  %99 = load i32, i32* @FXO, align 4
  %100 = call i32 @do_div(i32 %98, i32 %99)
  %101 = load i32, i32* %5, align 4
  %102 = load %struct.clk_si544_muldiv*, %struct.clk_si544_muldiv** %3, align 8
  %103 = getelementptr inbounds %struct.clk_si544_muldiv, %struct.clk_si544_muldiv* %102, i32 0, i32 3
  store i32 %101, i32* %103, align 8
  %104 = load %struct.clk_si544_muldiv*, %struct.clk_si544_muldiv** %3, align 8
  %105 = getelementptr inbounds %struct.clk_si544_muldiv, %struct.clk_si544_muldiv* %104, i32 0, i32 4
  store i64 0, i64* %105, align 8
  ret i32 0
}

declare dso_local i32 @do_div(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
