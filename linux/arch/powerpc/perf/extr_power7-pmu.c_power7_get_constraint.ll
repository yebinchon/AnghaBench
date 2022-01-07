; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/perf/extr_power7-pmu.c_power7_get_constraint.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/perf/extr_power7-pmu.c_power7_get_constraint.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@PM_PMC_SH = common dso_local global i32 0, align 4
@PM_PMC_MSK = common dso_local global i32 0, align 4
@PM_UNIT_SH = common dso_local global i32 0, align 4
@PM_UNIT_MSK = common dso_local global i32 0, align 4
@PM_L2SEL_SH = common dso_local global i32 0, align 4
@PM_L2SEL_MSK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i64*, i64*)* @power7_get_constraint to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @power7_get_constraint(i32 %0, i64* %1, i64* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i64*, align 8
  %7 = alloca i64*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i64* %1, i64** %6, align 8
  store i64* %2, i64** %7, align 8
  store i64 0, i64* %11, align 8
  store i64 0, i64* %12, align 8
  %14 = load i32, i32* %5, align 4
  %15 = load i32, i32* @PM_PMC_SH, align 4
  %16 = ashr i32 %14, %15
  %17 = load i32, i32* @PM_PMC_MSK, align 4
  %18 = and i32 %16, %17
  store i32 %18, i32* %8, align 4
  %19 = load i32, i32* %8, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %49

21:                                               ; preds = %3
  %22 = load i32, i32* %8, align 4
  %23 = icmp sgt i32 %22, 6
  br i1 %23, label %24, label %25

24:                                               ; preds = %21
  store i32 -1, i32* %4, align 4
  br label %83

25:                                               ; preds = %21
  %26 = load i32, i32* %8, align 4
  %27 = sub nsw i32 %26, 1
  %28 = mul nsw i32 %27, 2
  store i32 %28, i32* %9, align 4
  %29 = load i32, i32* %9, align 4
  %30 = shl i32 2, %29
  %31 = sext i32 %30 to i64
  %32 = load i64, i64* %11, align 8
  %33 = or i64 %32, %31
  store i64 %33, i64* %11, align 8
  %34 = load i32, i32* %9, align 4
  %35 = shl i32 1, %34
  %36 = sext i32 %35 to i64
  %37 = load i64, i64* %12, align 8
  %38 = or i64 %37, %36
  store i64 %38, i64* %12, align 8
  %39 = load i32, i32* %8, align 4
  %40 = icmp sge i32 %39, 5
  br i1 %40, label %41, label %48

41:                                               ; preds = %25
  %42 = load i32, i32* %5, align 4
  %43 = icmp eq i32 %42, 327930
  br i1 %43, label %48, label %44

44:                                               ; preds = %41
  %45 = load i32, i32* %5, align 4
  %46 = icmp eq i32 %45, 393460
  br i1 %46, label %48, label %47

47:                                               ; preds = %44
  store i32 -1, i32* %4, align 4
  br label %83

48:                                               ; preds = %44, %41, %25
  br label %49

49:                                               ; preds = %48, %3
  %50 = load i32, i32* %8, align 4
  %51 = icmp slt i32 %50, 5
  br i1 %51, label %52, label %57

52:                                               ; preds = %49
  %53 = load i64, i64* %11, align 8
  %54 = or i64 %53, 32768
  store i64 %54, i64* %11, align 8
  %55 = load i64, i64* %12, align 8
  %56 = or i64 %55, 4096
  store i64 %56, i64* %12, align 8
  br label %57

57:                                               ; preds = %52, %49
  %58 = load i32, i32* %5, align 4
  %59 = load i32, i32* @PM_UNIT_SH, align 4
  %60 = ashr i32 %58, %59
  %61 = load i32, i32* @PM_UNIT_MSK, align 4
  %62 = and i32 %60, %61
  store i32 %62, i32* %10, align 4
  %63 = load i32, i32* %10, align 4
  %64 = icmp eq i32 %63, 6
  br i1 %64, label %65, label %78

65:                                               ; preds = %57
  %66 = load i32, i32* %5, align 4
  %67 = load i32, i32* @PM_L2SEL_SH, align 4
  %68 = ashr i32 %66, %67
  %69 = load i32, i32* @PM_L2SEL_MSK, align 4
  %70 = and i32 %68, %69
  store i32 %70, i32* %13, align 4
  %71 = load i64, i64* %11, align 8
  %72 = or i64 %71, 458752
  store i64 %72, i64* %11, align 8
  %73 = load i32, i32* %13, align 4
  %74 = shl i32 %73, 16
  %75 = sext i32 %74 to i64
  %76 = load i64, i64* %12, align 8
  %77 = or i64 %76, %75
  store i64 %77, i64* %12, align 8
  br label %78

78:                                               ; preds = %65, %57
  %79 = load i64, i64* %11, align 8
  %80 = load i64*, i64** %6, align 8
  store i64 %79, i64* %80, align 8
  %81 = load i64, i64* %12, align 8
  %82 = load i64*, i64** %7, align 8
  store i64 %81, i64* %82, align 8
  store i32 0, i32* %4, align 4
  br label %83

83:                                               ; preds = %78, %47, %24
  %84 = load i32, i32* %4, align 4
  ret i32 %84
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
