; ModuleID = '/home/carl/AnghaBench/linux/drivers/clk/ti/extr_dpll3xxx.c__omap3_dpll_compute_freqsel.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/clk/ti/extr_dpll3xxx.c__omap3_dpll_compute_freqsel.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.clk_hw_omap = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [20 x i8] c"clock: fint is %lu\0A\00", align 1
@.str.1 = private unnamed_addr constant [39 x i8] c"clock: unknown freqsel setting for %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.clk_hw_omap*, i64)* @_omap3_dpll_compute_freqsel to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @_omap3_dpll_compute_freqsel(%struct.clk_hw_omap* %0, i64 %1) #0 {
  %3 = alloca %struct.clk_hw_omap*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  store %struct.clk_hw_omap* %0, %struct.clk_hw_omap** %3, align 8
  store i64 %1, i64* %4, align 8
  store i32 0, i32* %6, align 4
  %7 = load %struct.clk_hw_omap*, %struct.clk_hw_omap** %3, align 8
  %8 = getelementptr inbounds %struct.clk_hw_omap, %struct.clk_hw_omap* %7, i32 0, i32 0
  %9 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = call i64 @clk_hw_get_rate(i32 %11)
  %13 = load i64, i64* %4, align 8
  %14 = udiv i64 %12, %13
  store i64 %14, i64* %5, align 8
  %15 = load i64, i64* %5, align 8
  %16 = call i32 @pr_debug(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i64 %15)
  %17 = load i64, i64* %5, align 8
  %18 = icmp uge i64 %17, 750000
  br i1 %18, label %19, label %23

19:                                               ; preds = %2
  %20 = load i64, i64* %5, align 8
  %21 = icmp ule i64 %20, 1000000
  br i1 %21, label %22, label %23

22:                                               ; preds = %19
  store i32 3, i32* %6, align 4
  br label %98

23:                                               ; preds = %19, %2
  %24 = load i64, i64* %5, align 8
  %25 = icmp ugt i64 %24, 1000000
  br i1 %25, label %26, label %30

26:                                               ; preds = %23
  %27 = load i64, i64* %5, align 8
  %28 = icmp ule i64 %27, 1250000
  br i1 %28, label %29, label %30

29:                                               ; preds = %26
  store i32 4, i32* %6, align 4
  br label %97

30:                                               ; preds = %26, %23
  %31 = load i64, i64* %5, align 8
  %32 = icmp ugt i64 %31, 1250000
  br i1 %32, label %33, label %37

33:                                               ; preds = %30
  %34 = load i64, i64* %5, align 8
  %35 = icmp ule i64 %34, 1500000
  br i1 %35, label %36, label %37

36:                                               ; preds = %33
  store i32 5, i32* %6, align 4
  br label %96

37:                                               ; preds = %33, %30
  %38 = load i64, i64* %5, align 8
  %39 = icmp ugt i64 %38, 1500000
  br i1 %39, label %40, label %44

40:                                               ; preds = %37
  %41 = load i64, i64* %5, align 8
  %42 = icmp ule i64 %41, 1750000
  br i1 %42, label %43, label %44

43:                                               ; preds = %40
  store i32 6, i32* %6, align 4
  br label %95

44:                                               ; preds = %40, %37
  %45 = load i64, i64* %5, align 8
  %46 = icmp ugt i64 %45, 1750000
  br i1 %46, label %47, label %51

47:                                               ; preds = %44
  %48 = load i64, i64* %5, align 8
  %49 = icmp ule i64 %48, 2100000
  br i1 %49, label %50, label %51

50:                                               ; preds = %47
  store i32 7, i32* %6, align 4
  br label %94

51:                                               ; preds = %47, %44
  %52 = load i64, i64* %5, align 8
  %53 = icmp ugt i64 %52, 7500000
  br i1 %53, label %54, label %58

54:                                               ; preds = %51
  %55 = load i64, i64* %5, align 8
  %56 = icmp ule i64 %55, 10000000
  br i1 %56, label %57, label %58

57:                                               ; preds = %54
  store i32 11, i32* %6, align 4
  br label %93

58:                                               ; preds = %54, %51
  %59 = load i64, i64* %5, align 8
  %60 = icmp ugt i64 %59, 10000000
  br i1 %60, label %61, label %65

61:                                               ; preds = %58
  %62 = load i64, i64* %5, align 8
  %63 = icmp ule i64 %62, 12500000
  br i1 %63, label %64, label %65

64:                                               ; preds = %61
  store i32 12, i32* %6, align 4
  br label %92

65:                                               ; preds = %61, %58
  %66 = load i64, i64* %5, align 8
  %67 = icmp ugt i64 %66, 12500000
  br i1 %67, label %68, label %72

68:                                               ; preds = %65
  %69 = load i64, i64* %5, align 8
  %70 = icmp ule i64 %69, 15000000
  br i1 %70, label %71, label %72

71:                                               ; preds = %68
  store i32 13, i32* %6, align 4
  br label %91

72:                                               ; preds = %68, %65
  %73 = load i64, i64* %5, align 8
  %74 = icmp ugt i64 %73, 15000000
  br i1 %74, label %75, label %79

75:                                               ; preds = %72
  %76 = load i64, i64* %5, align 8
  %77 = icmp ule i64 %76, 17500000
  br i1 %77, label %78, label %79

78:                                               ; preds = %75
  store i32 14, i32* %6, align 4
  br label %90

79:                                               ; preds = %75, %72
  %80 = load i64, i64* %5, align 8
  %81 = icmp ugt i64 %80, 17500000
  br i1 %81, label %82, label %86

82:                                               ; preds = %79
  %83 = load i64, i64* %5, align 8
  %84 = icmp ule i64 %83, 21000000
  br i1 %84, label %85, label %86

85:                                               ; preds = %82
  store i32 15, i32* %6, align 4
  br label %89

86:                                               ; preds = %82, %79
  %87 = load i64, i64* %4, align 8
  %88 = call i32 @pr_debug(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i64 0, i64 0), i64 %87)
  br label %89

89:                                               ; preds = %86, %85
  br label %90

90:                                               ; preds = %89, %78
  br label %91

91:                                               ; preds = %90, %71
  br label %92

92:                                               ; preds = %91, %64
  br label %93

93:                                               ; preds = %92, %57
  br label %94

94:                                               ; preds = %93, %50
  br label %95

95:                                               ; preds = %94, %43
  br label %96

96:                                               ; preds = %95, %36
  br label %97

97:                                               ; preds = %96, %29
  br label %98

98:                                               ; preds = %97, %22
  %99 = load i32, i32* %6, align 4
  ret i32 %99
}

declare dso_local i64 @clk_hw_get_rate(i32) #1

declare dso_local i32 @pr_debug(i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
