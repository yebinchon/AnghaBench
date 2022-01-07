; ModuleID = '/home/carl/AnghaBench/linux/drivers/clk/tegra/extr_clk-dfll.c_dfll_build_pwm_lut.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/clk/tegra/extr_clk-dfll.c_dfll_build_pwm_lut.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tegra_dfll = type { i64*, i32*, i32, i32, i64, %struct.TYPE_4__*, i32 }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }

@MAX_DFLL_VOLTAGES = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"no voltage above DFLL minimum %d mV\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [41 x i8] c"no opp below DFLL minimum voltage %d mV\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tegra_dfll*, i64)* @dfll_build_pwm_lut to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dfll_build_pwm_lut(%struct.tegra_dfll* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.tegra_dfll*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.tegra_dfll* %0, %struct.tegra_dfll** %4, align 8
  store i64 %1, i64* %5, align 8
  %11 = load i32, i32* @MAX_DFLL_VOLTAGES, align 4
  store i32 %11, i32* %9, align 4
  %12 = load %struct.tegra_dfll*, %struct.tegra_dfll** %4, align 8
  %13 = getelementptr inbounds %struct.tegra_dfll, %struct.tegra_dfll* %12, i32 0, i32 5
  %14 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 0
  %16 = load %struct.TYPE_3__*, %struct.TYPE_3__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = mul nsw i32 %18, 1000
  store i32 %19, i32* %10, align 4
  store i32 0, i32* %6, align 4
  br label %20

20:                                               ; preds = %58, %2
  %21 = load i32, i32* %6, align 4
  %22 = load i32, i32* @MAX_DFLL_VOLTAGES, align 4
  %23 = icmp slt i32 %21, %22
  br i1 %23, label %24, label %61

24:                                               ; preds = %20
  %25 = load %struct.tegra_dfll*, %struct.tegra_dfll** %4, align 8
  %26 = getelementptr inbounds %struct.tegra_dfll, %struct.tegra_dfll* %25, i32 0, i32 0
  %27 = load i64*, i64** %26, align 8
  %28 = load i32, i32* %6, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds i64, i64* %27, i64 %29
  %31 = load i64, i64* %30, align 8
  store i64 %31, i64* %8, align 8
  %32 = load i64, i64* %8, align 8
  %33 = udiv i64 %32, 1000
  %34 = mul i64 %33, 1000
  store i64 %34, i64* %8, align 8
  %35 = load i64, i64* %8, align 8
  %36 = load i64, i64* %5, align 8
  %37 = icmp ugt i64 %35, %36
  br i1 %37, label %38, label %39

38:                                               ; preds = %24
  br label %61

39:                                               ; preds = %24
  %40 = load i32, i32* %6, align 4
  %41 = load %struct.tegra_dfll*, %struct.tegra_dfll** %4, align 8
  %42 = getelementptr inbounds %struct.tegra_dfll, %struct.tegra_dfll* %41, i32 0, i32 1
  %43 = load i32*, i32** %42, align 8
  %44 = load i32, i32* %6, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds i32, i32* %43, i64 %45
  store i32 %40, i32* %46, align 4
  %47 = load i32, i32* %9, align 4
  %48 = load i32, i32* @MAX_DFLL_VOLTAGES, align 4
  %49 = icmp eq i32 %47, %48
  br i1 %49, label %50, label %57

50:                                               ; preds = %39
  %51 = load i64, i64* %8, align 8
  %52 = load i32, i32* %10, align 4
  %53 = sext i32 %52 to i64
  %54 = icmp uge i64 %51, %53
  br i1 %54, label %55, label %57

55:                                               ; preds = %50
  %56 = load i32, i32* %6, align 4
  store i32 %56, i32* %9, align 4
  br label %57

57:                                               ; preds = %55, %50, %39
  br label %58

58:                                               ; preds = %57
  %59 = load i32, i32* %6, align 4
  %60 = add nsw i32 %59, 1
  store i32 %60, i32* %6, align 4
  br label %20

61:                                               ; preds = %38, %20
  %62 = load i32, i32* %6, align 4
  %63 = load %struct.tegra_dfll*, %struct.tegra_dfll** %4, align 8
  %64 = getelementptr inbounds %struct.tegra_dfll, %struct.tegra_dfll* %63, i32 0, i32 2
  store i32 %62, i32* %64, align 8
  %65 = load i32, i32* %9, align 4
  %66 = load i32, i32* @MAX_DFLL_VOLTAGES, align 4
  %67 = icmp eq i32 %65, %66
  br i1 %67, label %75, label %68

68:                                               ; preds = %61
  %69 = load i32, i32* %9, align 4
  %70 = add nsw i32 %69, 1
  %71 = load %struct.tegra_dfll*, %struct.tegra_dfll** %4, align 8
  %72 = getelementptr inbounds %struct.tegra_dfll, %struct.tegra_dfll* %71, i32 0, i32 2
  %73 = load i32, i32* %72, align 8
  %74 = icmp sge i32 %70, %73
  br i1 %74, label %75, label %89

75:                                               ; preds = %68, %61
  %76 = load %struct.tegra_dfll*, %struct.tegra_dfll** %4, align 8
  %77 = getelementptr inbounds %struct.tegra_dfll, %struct.tegra_dfll* %76, i32 0, i32 6
  %78 = load i32, i32* %77, align 8
  %79 = load %struct.tegra_dfll*, %struct.tegra_dfll** %4, align 8
  %80 = getelementptr inbounds %struct.tegra_dfll, %struct.tegra_dfll* %79, i32 0, i32 5
  %81 = load %struct.TYPE_4__*, %struct.TYPE_4__** %80, align 8
  %82 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %81, i32 0, i32 0
  %83 = load %struct.TYPE_3__*, %struct.TYPE_3__** %82, align 8
  %84 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 4
  %86 = call i32 @dev_err(i32 %78, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), i32 %85)
  %87 = load i32, i32* @EINVAL, align 4
  %88 = sub nsw i32 0, %87
  store i32 %88, i32* %3, align 4
  br label %118

89:                                               ; preds = %68
  %90 = load i32, i32* %9, align 4
  %91 = load %struct.tegra_dfll*, %struct.tegra_dfll** %4, align 8
  %92 = getelementptr inbounds %struct.tegra_dfll, %struct.tegra_dfll* %91, i32 0, i32 3
  store i32 %90, i32* %92, align 4
  %93 = load %struct.tegra_dfll*, %struct.tegra_dfll** %4, align 8
  %94 = load %struct.tegra_dfll*, %struct.tegra_dfll** %4, align 8
  %95 = getelementptr inbounds %struct.tegra_dfll, %struct.tegra_dfll* %94, i32 0, i32 3
  %96 = load i32, i32* %95, align 4
  %97 = call i64 @get_dvco_rate_below(%struct.tegra_dfll* %93, i32 %96)
  store i64 %97, i64* %7, align 8
  %98 = load i64, i64* %7, align 8
  %99 = icmp ne i64 %98, 0
  br i1 %99, label %114, label %100

100:                                              ; preds = %89
  %101 = load %struct.tegra_dfll*, %struct.tegra_dfll** %4, align 8
  %102 = getelementptr inbounds %struct.tegra_dfll, %struct.tegra_dfll* %101, i32 0, i32 6
  %103 = load i32, i32* %102, align 8
  %104 = load %struct.tegra_dfll*, %struct.tegra_dfll** %4, align 8
  %105 = getelementptr inbounds %struct.tegra_dfll, %struct.tegra_dfll* %104, i32 0, i32 5
  %106 = load %struct.TYPE_4__*, %struct.TYPE_4__** %105, align 8
  %107 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %106, i32 0, i32 0
  %108 = load %struct.TYPE_3__*, %struct.TYPE_3__** %107, align 8
  %109 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %108, i32 0, i32 0
  %110 = load i32, i32* %109, align 4
  %111 = call i32 @dev_err(i32 %103, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.1, i64 0, i64 0), i32 %110)
  %112 = load i32, i32* @EINVAL, align 4
  %113 = sub nsw i32 0, %112
  store i32 %113, i32* %3, align 4
  br label %118

114:                                              ; preds = %89
  %115 = load i64, i64* %7, align 8
  %116 = load %struct.tegra_dfll*, %struct.tegra_dfll** %4, align 8
  %117 = getelementptr inbounds %struct.tegra_dfll, %struct.tegra_dfll* %116, i32 0, i32 4
  store i64 %115, i64* %117, align 8
  store i32 0, i32* %3, align 4
  br label %118

118:                                              ; preds = %114, %100, %75
  %119 = load i32, i32* %3, align 4
  ret i32 %119
}

declare dso_local i32 @dev_err(i32, i8*, i32) #1

declare dso_local i64 @get_dvco_rate_below(%struct.tegra_dfll*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
