; ModuleID = '/home/carl/AnghaBench/linux/drivers/clk/mmp/extr_clk-frac.c_clk_factor_round_rate.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/clk/mmp/extr_clk-frac.c_clk_factor_round_rate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.clk_hw = type { i32 }
%struct.mmp_clk_factor = type { i32, %struct.TYPE_4__*, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i64 }
%struct.TYPE_3__ = type { i64, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.clk_hw*, i64, i64*)* @clk_factor_round_rate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @clk_factor_round_rate(%struct.clk_hw* %0, i64 %1, i64* %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca %struct.clk_hw*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64*, align 8
  %8 = alloca %struct.mmp_clk_factor*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  store %struct.clk_hw* %0, %struct.clk_hw** %5, align 8
  store i64 %1, i64* %6, align 8
  store i64* %2, i64** %7, align 8
  %12 = load %struct.clk_hw*, %struct.clk_hw** %5, align 8
  %13 = call %struct.mmp_clk_factor* @to_clk_factor(%struct.clk_hw* %12)
  store %struct.mmp_clk_factor* %13, %struct.mmp_clk_factor** %8, align 8
  store i64 0, i64* %9, align 8
  store i32 0, i32* %11, align 4
  br label %14

14:                                               ; preds = %55, %3
  %15 = load i32, i32* %11, align 4
  %16 = load %struct.mmp_clk_factor*, %struct.mmp_clk_factor** %8, align 8
  %17 = getelementptr inbounds %struct.mmp_clk_factor, %struct.mmp_clk_factor* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = icmp slt i32 %15, %18
  br i1 %19, label %20, label %58

20:                                               ; preds = %14
  %21 = load i64, i64* %9, align 8
  store i64 %21, i64* %10, align 8
  %22 = load i64*, i64** %7, align 8
  %23 = load i64, i64* %22, align 8
  %24 = udiv i64 %23, 10000
  %25 = load %struct.mmp_clk_factor*, %struct.mmp_clk_factor** %8, align 8
  %26 = getelementptr inbounds %struct.mmp_clk_factor, %struct.mmp_clk_factor* %25, i32 0, i32 2
  %27 = load %struct.TYPE_3__*, %struct.TYPE_3__** %26, align 8
  %28 = load i32, i32* %11, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %27, i64 %29
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = mul i64 %24, %32
  %34 = load %struct.mmp_clk_factor*, %struct.mmp_clk_factor** %8, align 8
  %35 = getelementptr inbounds %struct.mmp_clk_factor, %struct.mmp_clk_factor* %34, i32 0, i32 2
  %36 = load %struct.TYPE_3__*, %struct.TYPE_3__** %35, align 8
  %37 = load i32, i32* %11, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %36, i64 %38
  %40 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %39, i32 0, i32 1
  %41 = load i64, i64* %40, align 8
  %42 = load %struct.mmp_clk_factor*, %struct.mmp_clk_factor** %8, align 8
  %43 = getelementptr inbounds %struct.mmp_clk_factor, %struct.mmp_clk_factor* %42, i32 0, i32 1
  %44 = load %struct.TYPE_4__*, %struct.TYPE_4__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = mul i64 %41, %46
  %48 = udiv i64 %33, %47
  %49 = mul i64 %48, 10000
  store i64 %49, i64* %9, align 8
  %50 = load i64, i64* %9, align 8
  %51 = load i64, i64* %6, align 8
  %52 = icmp ugt i64 %50, %51
  br i1 %52, label %53, label %54

53:                                               ; preds = %20
  br label %58

54:                                               ; preds = %20
  br label %55

55:                                               ; preds = %54
  %56 = load i32, i32* %11, align 4
  %57 = add nsw i32 %56, 1
  store i32 %57, i32* %11, align 4
  br label %14

58:                                               ; preds = %53, %14
  %59 = load i32, i32* %11, align 4
  %60 = icmp eq i32 %59, 0
  br i1 %60, label %67, label %61

61:                                               ; preds = %58
  %62 = load i32, i32* %11, align 4
  %63 = load %struct.mmp_clk_factor*, %struct.mmp_clk_factor** %8, align 8
  %64 = getelementptr inbounds %struct.mmp_clk_factor, %struct.mmp_clk_factor* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 8
  %66 = icmp eq i32 %62, %65
  br i1 %66, label %67, label %69

67:                                               ; preds = %61, %58
  %68 = load i64, i64* %9, align 8
  store i64 %68, i64* %4, align 8
  br label %81

69:                                               ; preds = %61
  %70 = load i64, i64* %6, align 8
  %71 = load i64, i64* %10, align 8
  %72 = sub i64 %70, %71
  %73 = load i64, i64* %9, align 8
  %74 = load i64, i64* %6, align 8
  %75 = sub i64 %73, %74
  %76 = icmp ugt i64 %72, %75
  br i1 %76, label %77, label %79

77:                                               ; preds = %69
  %78 = load i64, i64* %9, align 8
  store i64 %78, i64* %4, align 8
  br label %81

79:                                               ; preds = %69
  %80 = load i64, i64* %10, align 8
  store i64 %80, i64* %4, align 8
  br label %81

81:                                               ; preds = %79, %77, %67
  %82 = load i64, i64* %4, align 8
  ret i64 %82
}

declare dso_local %struct.mmp_clk_factor* @to_clk_factor(%struct.clk_hw*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
