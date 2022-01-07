; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/perf/extr_mpc7450-pmu.c_mpc7450_get_constraint.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/perf/extr_mpc7450-pmu.c_mpc7450_get_constraint.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@PM_PMC_SH = common dso_local global i32 0, align 4
@PM_PMC_MSK = common dso_local global i32 0, align 4
@pmcbits = common dso_local global i32** null, align 8
@classbits = common dso_local global i32** null, align 8
@PM_THRESH_SH = common dso_local global i32 0, align 4
@PM_THRESH_MSK = common dso_local global i32 0, align 4
@PM_THRMULT_MSKS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i64, i64*, i64*)* @mpc7450_get_constraint to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mpc7450_get_constraint(i64 %0, i64* %1, i64* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i64*, align 8
  %7 = alloca i64*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store i64 %0, i64* %5, align 8
  store i64* %1, i64** %6, align 8
  store i64* %2, i64** %7, align 8
  %14 = load i64, i64* %5, align 8
  %15 = call i32 @mpc7450_classify_event(i64 %14)
  store i32 %15, i32* %9, align 4
  %16 = load i32, i32* %9, align 4
  %17 = icmp slt i32 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %3
  store i32 -1, i32* %4, align 4
  br label %100

19:                                               ; preds = %3
  %20 = load i32, i32* %9, align 4
  %21 = icmp eq i32 %20, 4
  br i1 %21, label %22, label %45

22:                                               ; preds = %19
  %23 = load i64, i64* %5, align 8
  %24 = trunc i64 %23 to i32
  %25 = load i32, i32* @PM_PMC_SH, align 4
  %26 = lshr i32 %24, %25
  %27 = load i32, i32* @PM_PMC_MSK, align 4
  %28 = and i32 %26, %27
  store i32 %28, i32* %8, align 4
  %29 = load i32**, i32*** @pmcbits, align 8
  %30 = load i32, i32* %8, align 4
  %31 = sub nsw i32 %30, 1
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds i32*, i32** %29, i64 %32
  %34 = load i32*, i32** %33, align 8
  %35 = getelementptr inbounds i32, i32* %34, i64 0
  %36 = load i32, i32* %35, align 4
  store i32 %36, i32* %10, align 4
  %37 = load i32**, i32*** @pmcbits, align 8
  %38 = load i32, i32* %8, align 4
  %39 = sub nsw i32 %38, 1
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds i32*, i32** %37, i64 %40
  %42 = load i32*, i32** %41, align 8
  %43 = getelementptr inbounds i32, i32* %42, i64 1
  %44 = load i32, i32* %43, align 4
  store i32 %44, i32* %11, align 4
  br label %60

45:                                               ; preds = %19
  %46 = load i32**, i32*** @classbits, align 8
  %47 = load i32, i32* %9, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds i32*, i32** %46, i64 %48
  %50 = load i32*, i32** %49, align 8
  %51 = getelementptr inbounds i32, i32* %50, i64 0
  %52 = load i32, i32* %51, align 4
  store i32 %52, i32* %10, align 4
  %53 = load i32**, i32*** @classbits, align 8
  %54 = load i32, i32* %9, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds i32*, i32** %53, i64 %55
  %57 = load i32*, i32** %56, align 8
  %58 = getelementptr inbounds i32, i32* %57, i64 1
  %59 = load i32, i32* %58, align 4
  store i32 %59, i32* %11, align 4
  br label %60

60:                                               ; preds = %45, %22
  %61 = load i64, i64* %5, align 8
  %62 = call i32 @mpc7450_threshold_use(i64 %61)
  store i32 %62, i32* %13, align 4
  %63 = load i32, i32* %13, align 4
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %93

65:                                               ; preds = %60
  %66 = load i64, i64* %5, align 8
  %67 = trunc i64 %66 to i32
  %68 = load i32, i32* @PM_THRESH_SH, align 4
  %69 = lshr i32 %67, %68
  %70 = load i32, i32* @PM_THRESH_MSK, align 4
  %71 = and i32 %69, %70
  store i32 %71, i32* %12, align 4
  %72 = load i32, i32* %10, align 4
  %73 = or i32 %72, 1056964608
  store i32 %73, i32* %10, align 4
  %74 = load i32, i32* %12, align 4
  %75 = shl i32 %74, 24
  %76 = load i32, i32* %11, align 4
  %77 = or i32 %76, %75
  store i32 %77, i32* %11, align 4
  %78 = load i32, i32* %13, align 4
  %79 = icmp eq i32 %78, 2
  br i1 %79, label %80, label %92

80:                                               ; preds = %65
  %81 = load i32, i32* %10, align 4
  %82 = or i32 %81, 1073741824
  store i32 %82, i32* %10, align 4
  %83 = load i64, i64* %5, align 8
  %84 = trunc i64 %83 to i32
  %85 = load i32, i32* @PM_THRMULT_MSKS, align 4
  %86 = and i32 %84, %85
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %88, label %91

88:                                               ; preds = %80
  %89 = load i32, i32* %11, align 4
  %90 = or i32 %89, 1073741824
  store i32 %90, i32* %11, align 4
  br label %91

91:                                               ; preds = %88, %80
  br label %92

92:                                               ; preds = %91, %65
  br label %93

93:                                               ; preds = %92, %60
  %94 = load i32, i32* %10, align 4
  %95 = sext i32 %94 to i64
  %96 = load i64*, i64** %6, align 8
  store i64 %95, i64* %96, align 8
  %97 = load i32, i32* %11, align 4
  %98 = sext i32 %97 to i64
  %99 = load i64*, i64** %7, align 8
  store i64 %98, i64* %99, align 8
  store i32 0, i32* %4, align 4
  br label %100

100:                                              ; preds = %93, %18
  %101 = load i32, i32* %4, align 4
  ret i32 %101
}

declare dso_local i32 @mpc7450_classify_event(i64) #1

declare dso_local i32 @mpc7450_threshold_use(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
