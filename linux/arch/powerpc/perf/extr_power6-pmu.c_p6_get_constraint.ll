; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/perf/extr_power6-pmu.c_p6_get_constraint.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/perf/extr_power6-pmu.c_p6_get_constraint.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@PM_PMC_SH = common dso_local global i32 0, align 4
@PM_PMC_MSK = common dso_local global i32 0, align 4
@PM_BUSEVENT_MSK = common dso_local global i32 0, align 4
@PM_BYTE_SH = common dso_local global i32 0, align 4
@PM_BYTE_MSK = common dso_local global i32 0, align 4
@PM_UNIT_SH = common dso_local global i32 0, align 4
@PM_UNIT_MSKS = common dso_local global i32 0, align 4
@PM_SUBUNIT_SH = common dso_local global i32 0, align 4
@PM_SUBUNIT_MSK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i64*, i64*)* @p6_get_constraint to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @p6_get_constraint(i32 %0, i64* %1, i64* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i64*, align 8
  %7 = alloca i64*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  store i32 %0, i32* %5, align 4
  store i64* %1, i64** %6, align 8
  store i64* %2, i64** %7, align 8
  store i64 0, i64* %12, align 8
  store i64 0, i64* %13, align 8
  %14 = load i32, i32* %5, align 4
  %15 = load i32, i32* @PM_PMC_SH, align 4
  %16 = ashr i32 %14, %15
  %17 = load i32, i32* @PM_PMC_MSK, align 4
  %18 = and i32 %16, %17
  store i32 %18, i32* %8, align 4
  %19 = load i32, i32* %8, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %45

21:                                               ; preds = %3
  %22 = load i32, i32* %8, align 4
  %23 = icmp sgt i32 %22, 4
  br i1 %23, label %24, label %31

24:                                               ; preds = %21
  %25 = load i32, i32* %5, align 4
  %26 = icmp eq i32 %25, 5242889
  br i1 %26, label %31, label %27

27:                                               ; preds = %24
  %28 = load i32, i32* %5, align 4
  %29 = icmp eq i32 %28, 6291461
  br i1 %29, label %31, label %30

30:                                               ; preds = %27
  store i32 -1, i32* %4, align 4
  br label %112

31:                                               ; preds = %27, %24, %21
  %32 = load i32, i32* %8, align 4
  %33 = sub nsw i32 %32, 1
  %34 = mul nsw i32 %33, 2
  store i32 %34, i32* %10, align 4
  %35 = load i32, i32* %10, align 4
  %36 = shl i32 2, %35
  %37 = sext i32 %36 to i64
  %38 = load i64, i64* %12, align 8
  %39 = or i64 %38, %37
  store i64 %39, i64* %12, align 8
  %40 = load i32, i32* %10, align 4
  %41 = shl i32 1, %40
  %42 = sext i32 %41 to i64
  %43 = load i64, i64* %13, align 8
  %44 = or i64 %43, %42
  store i64 %44, i64* %13, align 8
  br label %45

45:                                               ; preds = %31, %3
  %46 = load i32, i32* %5, align 4
  %47 = load i32, i32* @PM_BUSEVENT_MSK, align 4
  %48 = and i32 %46, %47
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %99

50:                                               ; preds = %45
  %51 = load i32, i32* %5, align 4
  %52 = load i32, i32* @PM_BYTE_SH, align 4
  %53 = ashr i32 %51, %52
  %54 = load i32, i32* @PM_BYTE_MSK, align 4
  %55 = and i32 %53, %54
  store i32 %55, i32* %9, align 4
  %56 = load i32, i32* %9, align 4
  %57 = mul nsw i32 %56, 4
  %58 = load i32, i32* @PM_UNIT_SH, align 4
  %59 = sub nsw i32 16, %58
  %60 = add nsw i32 %57, %59
  store i32 %60, i32* %10, align 4
  %61 = load i32, i32* @PM_UNIT_MSKS, align 4
  %62 = load i32, i32* %10, align 4
  %63 = shl i32 %61, %62
  %64 = sext i32 %63 to i64
  %65 = load i64, i64* %12, align 8
  %66 = or i64 %65, %64
  store i64 %66, i64* %12, align 8
  %67 = load i32, i32* %5, align 4
  %68 = load i32, i32* @PM_UNIT_MSKS, align 4
  %69 = and i32 %67, %68
  %70 = sext i32 %69 to i64
  %71 = load i32, i32* %10, align 4
  %72 = zext i32 %71 to i64
  %73 = shl i64 %70, %72
  %74 = load i64, i64* %13, align 8
  %75 = or i64 %74, %73
  store i64 %75, i64* %13, align 8
  %76 = load i32, i32* %5, align 4
  %77 = load i32, i32* @PM_UNIT_MSKS, align 4
  %78 = and i32 %76, %77
  %79 = load i32, i32* @PM_UNIT_SH, align 4
  %80 = shl i32 5, %79
  %81 = icmp eq i32 %78, %80
  br i1 %81, label %82, label %98

82:                                               ; preds = %50
  %83 = load i32, i32* %5, align 4
  %84 = load i32, i32* @PM_SUBUNIT_SH, align 4
  %85 = ashr i32 %83, %84
  %86 = load i32, i32* @PM_SUBUNIT_MSK, align 4
  %87 = and i32 %85, %86
  store i32 %87, i32* %11, align 4
  %88 = load i32, i32* @PM_SUBUNIT_MSK, align 4
  %89 = sext i32 %88 to i64
  %90 = shl i64 %89, 32
  %91 = load i64, i64* %12, align 8
  %92 = or i64 %91, %90
  store i64 %92, i64* %12, align 8
  %93 = load i32, i32* %11, align 4
  %94 = sext i32 %93 to i64
  %95 = shl i64 %94, 32
  %96 = load i64, i64* %13, align 8
  %97 = or i64 %96, %95
  store i64 %97, i64* %13, align 8
  br label %98

98:                                               ; preds = %82, %50
  br label %99

99:                                               ; preds = %98, %45
  %100 = load i32, i32* %8, align 4
  %101 = icmp sle i32 %100, 4
  br i1 %101, label %102, label %107

102:                                              ; preds = %99
  %103 = load i64, i64* %12, align 8
  %104 = or i64 %103, 32768
  store i64 %104, i64* %12, align 8
  %105 = load i64, i64* %13, align 8
  %106 = or i64 %105, 4096
  store i64 %106, i64* %13, align 8
  br label %107

107:                                              ; preds = %102, %99
  %108 = load i64, i64* %12, align 8
  %109 = load i64*, i64** %6, align 8
  store i64 %108, i64* %109, align 8
  %110 = load i64, i64* %13, align 8
  %111 = load i64*, i64** %7, align 8
  store i64 %110, i64* %111, align 8
  store i32 0, i32* %4, align 4
  br label %112

112:                                              ; preds = %107, %30
  %113 = load i32, i32* %4, align 4
  ret i32 %113
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
