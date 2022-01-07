; ModuleID = '/home/carl/AnghaBench/linux/drivers/clk/extr_clk-multiplier.c___bestmult.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/clk/extr_clk-multiplier.c___bestmult.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.clk_hw = type { i32 }
%struct.clk_multiplier = type { i32 }

@CLK_SET_RATE_PARENT = common dso_local global i32 0, align 4
@CLK_MULTIPLIER_ZERO_BYPASS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.clk_hw*, i64, i64*, i32, i64)* @__bestmult to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @__bestmult(%struct.clk_hw* %0, i64 %1, i64* %2, i32 %3, i64 %4) #0 {
  %6 = alloca i64, align 8
  %7 = alloca %struct.clk_hw*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca %struct.clk_multiplier*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  store %struct.clk_hw* %0, %struct.clk_hw** %7, align 8
  store i64 %1, i64* %8, align 8
  store i64* %2, i64** %9, align 8
  store i32 %3, i32* %10, align 4
  store i64 %4, i64* %11, align 8
  %20 = load %struct.clk_hw*, %struct.clk_hw** %7, align 8
  %21 = call %struct.clk_multiplier* @to_clk_multiplier(%struct.clk_hw* %20)
  store %struct.clk_multiplier* %21, %struct.clk_multiplier** %12, align 8
  %22 = load i64*, i64** %9, align 8
  %23 = load i64, i64* %22, align 8
  store i64 %23, i64* %13, align 8
  store i64 -1, i64* %16, align 8
  store i32 0, i32* %18, align 4
  %24 = load i32, i32* %10, align 4
  %25 = shl i32 1, %24
  %26 = sub nsw i32 %25, 1
  store i32 %26, i32* %19, align 4
  %27 = load %struct.clk_hw*, %struct.clk_hw** %7, align 8
  %28 = call i32 @clk_hw_get_flags(%struct.clk_hw* %27)
  %29 = load i32, i32* @CLK_SET_RATE_PARENT, align 4
  %30 = and i32 %28, %29
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %56, label %32

32:                                               ; preds = %5
  %33 = load i64, i64* %8, align 8
  %34 = load i64, i64* %13, align 8
  %35 = udiv i64 %33, %34
  %36 = trunc i64 %35 to i32
  store i32 %36, i32* %18, align 4
  %37 = load i32, i32* %18, align 4
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %39, label %47

39:                                               ; preds = %32
  %40 = load %struct.clk_multiplier*, %struct.clk_multiplier** %12, align 8
  %41 = getelementptr inbounds %struct.clk_multiplier, %struct.clk_multiplier* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = load i32, i32* @CLK_MULTIPLIER_ZERO_BYPASS, align 4
  %44 = and i32 %42, %43
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %47, label %46

46:                                               ; preds = %39
  store i32 1, i32* %18, align 4
  br label %47

47:                                               ; preds = %46, %39, %32
  %48 = load i32, i32* %18, align 4
  %49 = load i32, i32* %19, align 4
  %50 = icmp ugt i32 %48, %49
  br i1 %50, label %51, label %53

51:                                               ; preds = %47
  %52 = load i32, i32* %19, align 4
  store i32 %52, i32* %18, align 4
  br label %53

53:                                               ; preds = %51, %47
  %54 = load i32, i32* %18, align 4
  %55 = zext i32 %54 to i64
  store i64 %55, i64* %6, align 8
  br label %103

56:                                               ; preds = %5
  store i32 1, i32* %17, align 4
  br label %57

57:                                               ; preds = %97, %56
  %58 = load i32, i32* %17, align 4
  %59 = load i32, i32* %19, align 4
  %60 = icmp ult i32 %58, %59
  br i1 %60, label %61, label %100

61:                                               ; preds = %57
  %62 = load i64, i64* %8, align 8
  %63 = load i64, i64* %13, align 8
  %64 = load i32, i32* %17, align 4
  %65 = zext i32 %64 to i64
  %66 = mul i64 %63, %65
  %67 = icmp eq i64 %62, %66
  br i1 %67, label %68, label %73

68:                                               ; preds = %61
  %69 = load i64, i64* %13, align 8
  %70 = load i64*, i64** %9, align 8
  store i64 %69, i64* %70, align 8
  %71 = load i32, i32* %17, align 4
  %72 = zext i32 %71 to i64
  store i64 %72, i64* %6, align 8
  br label %103

73:                                               ; preds = %61
  %74 = load %struct.clk_hw*, %struct.clk_hw** %7, align 8
  %75 = call i32 @clk_hw_get_parent(%struct.clk_hw* %74)
  %76 = load i64, i64* %8, align 8
  %77 = load i32, i32* %17, align 4
  %78 = zext i32 %77 to i64
  %79 = udiv i64 %76, %78
  %80 = call i64 @clk_hw_round_rate(i32 %75, i64 %79)
  store i64 %80, i64* %14, align 8
  %81 = load i64, i64* %14, align 8
  %82 = load i32, i32* %17, align 4
  %83 = zext i32 %82 to i64
  %84 = mul i64 %81, %83
  store i64 %84, i64* %15, align 8
  %85 = load i64, i64* %8, align 8
  %86 = load i64, i64* %15, align 8
  %87 = load i64, i64* %16, align 8
  %88 = load i64, i64* %11, align 8
  %89 = call i64 @__is_best_rate(i64 %85, i64 %86, i64 %87, i64 %88)
  %90 = icmp ne i64 %89, 0
  br i1 %90, label %91, label %96

91:                                               ; preds = %73
  %92 = load i32, i32* %17, align 4
  store i32 %92, i32* %18, align 4
  %93 = load i64, i64* %15, align 8
  store i64 %93, i64* %16, align 8
  %94 = load i64, i64* %14, align 8
  %95 = load i64*, i64** %9, align 8
  store i64 %94, i64* %95, align 8
  br label %96

96:                                               ; preds = %91, %73
  br label %97

97:                                               ; preds = %96
  %98 = load i32, i32* %17, align 4
  %99 = add i32 %98, 1
  store i32 %99, i32* %17, align 4
  br label %57

100:                                              ; preds = %57
  %101 = load i32, i32* %18, align 4
  %102 = zext i32 %101 to i64
  store i64 %102, i64* %6, align 8
  br label %103

103:                                              ; preds = %100, %68, %53
  %104 = load i64, i64* %6, align 8
  ret i64 %104
}

declare dso_local %struct.clk_multiplier* @to_clk_multiplier(%struct.clk_hw*) #1

declare dso_local i32 @clk_hw_get_flags(%struct.clk_hw*) #1

declare dso_local i64 @clk_hw_round_rate(i32, i64) #1

declare dso_local i32 @clk_hw_get_parent(%struct.clk_hw*) #1

declare dso_local i64 @__is_best_rate(i64, i64, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
