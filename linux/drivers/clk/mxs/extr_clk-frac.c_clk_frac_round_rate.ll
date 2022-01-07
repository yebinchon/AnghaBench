; ModuleID = '/home/carl/AnghaBench/linux/drivers/clk/mxs/extr_clk-frac.c_clk_frac_round_rate.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/clk/mxs/extr_clk-frac.c_clk_frac_round_rate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.clk_hw = type { i32 }
%struct.clk_frac = type { i32 }

@EINVAL = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.clk_hw*, i64, i64*)* @clk_frac_round_rate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @clk_frac_round_rate(%struct.clk_hw* %0, i64 %1, i64* %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca %struct.clk_hw*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64*, align 8
  %8 = alloca %struct.clk_frac*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.clk_hw* %0, %struct.clk_hw** %5, align 8
  store i64 %1, i64* %6, align 8
  store i64* %2, i64** %7, align 8
  %14 = load %struct.clk_hw*, %struct.clk_hw** %5, align 8
  %15 = call %struct.clk_frac* @to_clk_frac(%struct.clk_hw* %14)
  store %struct.clk_frac* %15, %struct.clk_frac** %8, align 8
  %16 = load i64*, i64** %7, align 8
  %17 = load i64, i64* %16, align 8
  store i64 %17, i64* %9, align 8
  %18 = load i64, i64* %6, align 8
  %19 = load i64, i64* %9, align 8
  %20 = icmp ugt i64 %18, %19
  br i1 %20, label %21, label %24

21:                                               ; preds = %3
  %22 = load i64, i64* @EINVAL, align 8
  %23 = sub nsw i64 0, %22
  store i64 %23, i64* %4, align 8
  br label %64

24:                                               ; preds = %3
  %25 = load i64, i64* %6, align 8
  %26 = trunc i64 %25 to i32
  store i32 %26, i32* %11, align 4
  %27 = load %struct.clk_frac*, %struct.clk_frac** %8, align 8
  %28 = getelementptr inbounds %struct.clk_frac, %struct.clk_frac* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = load i32, i32* %11, align 4
  %31 = shl i32 %30, %29
  store i32 %31, i32* %11, align 4
  %32 = load i32, i32* %11, align 4
  %33 = load i64, i64* %9, align 8
  %34 = call i32 @do_div(i32 %32, i64 %33)
  %35 = load i32, i32* %11, align 4
  store i32 %35, i32* %10, align 4
  %36 = load i32, i32* %10, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %41, label %38

38:                                               ; preds = %24
  %39 = load i64, i64* @EINVAL, align 8
  %40 = sub nsw i64 0, %39
  store i64 %40, i64* %4, align 8
  br label %64

41:                                               ; preds = %24
  %42 = load i64, i64* %9, align 8
  %43 = trunc i64 %42 to i32
  %44 = load i32, i32* %10, align 4
  %45 = mul nsw i32 %43, %44
  store i32 %45, i32* %12, align 4
  %46 = load i32, i32* %12, align 4
  %47 = load %struct.clk_frac*, %struct.clk_frac** %8, align 8
  %48 = getelementptr inbounds %struct.clk_frac, %struct.clk_frac* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = ashr i32 %46, %49
  store i32 %50, i32* %13, align 4
  %51 = load i32, i32* %13, align 4
  %52 = load %struct.clk_frac*, %struct.clk_frac** %8, align 8
  %53 = getelementptr inbounds %struct.clk_frac, %struct.clk_frac* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = shl i32 %51, %54
  %56 = load i32, i32* %12, align 4
  %57 = icmp slt i32 %55, %56
  br i1 %57, label %58, label %61

58:                                               ; preds = %41
  %59 = load i32, i32* %13, align 4
  %60 = add nsw i32 %59, 1
  store i32 %60, i32* %13, align 4
  br label %61

61:                                               ; preds = %58, %41
  %62 = load i32, i32* %13, align 4
  %63 = sext i32 %62 to i64
  store i64 %63, i64* %4, align 8
  br label %64

64:                                               ; preds = %61, %38, %21
  %65 = load i64, i64* %4, align 8
  ret i64 %65
}

declare dso_local %struct.clk_frac* @to_clk_frac(%struct.clk_hw*) #1

declare dso_local i32 @do_div(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
