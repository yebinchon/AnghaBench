; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/events/extr_core.c_set_ext_hw_attr.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/events/extr_core.c_set_ext_hw_attr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hw_perf_event = type { i32 }
%struct.perf_event = type { %struct.perf_event_attr }
%struct.perf_event_attr = type { i32, i32 }

@PERF_COUNT_HW_CACHE_MAX = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@PERF_COUNT_HW_CACHE_OP_MAX = common dso_local global i32 0, align 4
@PERF_COUNT_HW_CACHE_RESULT_MAX = common dso_local global i32 0, align 4
@hw_cache_event_ids = common dso_local global i32*** null, align 8
@ENOENT = common dso_local global i32 0, align 4
@hw_cache_extra_regs = common dso_local global i32*** null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hw_perf_event*, %struct.perf_event*)* @set_ext_hw_attr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @set_ext_hw_attr(%struct.hw_perf_event* %0, %struct.perf_event* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.hw_perf_event*, align 8
  %5 = alloca %struct.perf_event*, align 8
  %6 = alloca %struct.perf_event_attr*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.hw_perf_event* %0, %struct.hw_perf_event** %4, align 8
  store %struct.perf_event* %1, %struct.perf_event** %5, align 8
  %12 = load %struct.perf_event*, %struct.perf_event** %5, align 8
  %13 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %12, i32 0, i32 0
  store %struct.perf_event_attr* %13, %struct.perf_event_attr** %6, align 8
  %14 = load %struct.perf_event_attr*, %struct.perf_event_attr** %6, align 8
  %15 = getelementptr inbounds %struct.perf_event_attr, %struct.perf_event_attr* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  store i32 %16, i32* %10, align 4
  %17 = load i32, i32* %10, align 4
  %18 = ashr i32 %17, 0
  %19 = and i32 %18, 255
  store i32 %19, i32* %7, align 4
  %20 = load i32, i32* %7, align 4
  %21 = load i32, i32* @PERF_COUNT_HW_CACHE_MAX, align 4
  %22 = icmp uge i32 %20, %21
  br i1 %22, label %23, label %26

23:                                               ; preds = %2
  %24 = load i32, i32* @EINVAL, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %3, align 4
  br label %104

26:                                               ; preds = %2
  %27 = load i32, i32* %7, align 4
  %28 = load i32, i32* @PERF_COUNT_HW_CACHE_MAX, align 4
  %29 = call i32 @array_index_nospec(i32 %27, i32 %28)
  store i32 %29, i32* %7, align 4
  %30 = load i32, i32* %10, align 4
  %31 = ashr i32 %30, 8
  %32 = and i32 %31, 255
  store i32 %32, i32* %8, align 4
  %33 = load i32, i32* %8, align 4
  %34 = load i32, i32* @PERF_COUNT_HW_CACHE_OP_MAX, align 4
  %35 = icmp uge i32 %33, %34
  br i1 %35, label %36, label %39

36:                                               ; preds = %26
  %37 = load i32, i32* @EINVAL, align 4
  %38 = sub nsw i32 0, %37
  store i32 %38, i32* %3, align 4
  br label %104

39:                                               ; preds = %26
  %40 = load i32, i32* %8, align 4
  %41 = load i32, i32* @PERF_COUNT_HW_CACHE_OP_MAX, align 4
  %42 = call i32 @array_index_nospec(i32 %40, i32 %41)
  store i32 %42, i32* %8, align 4
  %43 = load i32, i32* %10, align 4
  %44 = ashr i32 %43, 16
  %45 = and i32 %44, 255
  store i32 %45, i32* %9, align 4
  %46 = load i32, i32* %9, align 4
  %47 = load i32, i32* @PERF_COUNT_HW_CACHE_RESULT_MAX, align 4
  %48 = icmp uge i32 %46, %47
  br i1 %48, label %49, label %52

49:                                               ; preds = %39
  %50 = load i32, i32* @EINVAL, align 4
  %51 = sub nsw i32 0, %50
  store i32 %51, i32* %3, align 4
  br label %104

52:                                               ; preds = %39
  %53 = load i32, i32* %9, align 4
  %54 = load i32, i32* @PERF_COUNT_HW_CACHE_RESULT_MAX, align 4
  %55 = call i32 @array_index_nospec(i32 %53, i32 %54)
  store i32 %55, i32* %9, align 4
  %56 = load i32***, i32**** @hw_cache_event_ids, align 8
  %57 = load i32, i32* %7, align 4
  %58 = zext i32 %57 to i64
  %59 = getelementptr inbounds i32**, i32*** %56, i64 %58
  %60 = load i32**, i32*** %59, align 8
  %61 = load i32, i32* %8, align 4
  %62 = zext i32 %61 to i64
  %63 = getelementptr inbounds i32*, i32** %60, i64 %62
  %64 = load i32*, i32** %63, align 8
  %65 = load i32, i32* %9, align 4
  %66 = zext i32 %65 to i64
  %67 = getelementptr inbounds i32, i32* %64, i64 %66
  %68 = load i32, i32* %67, align 4
  store i32 %68, i32* %11, align 4
  %69 = load i32, i32* %11, align 4
  %70 = icmp eq i32 %69, 0
  br i1 %70, label %71, label %74

71:                                               ; preds = %52
  %72 = load i32, i32* @ENOENT, align 4
  %73 = sub nsw i32 0, %72
  store i32 %73, i32* %3, align 4
  br label %104

74:                                               ; preds = %52
  %75 = load i32, i32* %11, align 4
  %76 = icmp eq i32 %75, -1
  br i1 %76, label %77, label %80

77:                                               ; preds = %74
  %78 = load i32, i32* @EINVAL, align 4
  %79 = sub nsw i32 0, %78
  store i32 %79, i32* %3, align 4
  br label %104

80:                                               ; preds = %74
  %81 = load i32, i32* %11, align 4
  %82 = load %struct.hw_perf_event*, %struct.hw_perf_event** %4, align 8
  %83 = getelementptr inbounds %struct.hw_perf_event, %struct.hw_perf_event* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 4
  %85 = or i32 %84, %81
  store i32 %85, i32* %83, align 4
  %86 = load i32***, i32**** @hw_cache_extra_regs, align 8
  %87 = load i32, i32* %7, align 4
  %88 = zext i32 %87 to i64
  %89 = getelementptr inbounds i32**, i32*** %86, i64 %88
  %90 = load i32**, i32*** %89, align 8
  %91 = load i32, i32* %8, align 4
  %92 = zext i32 %91 to i64
  %93 = getelementptr inbounds i32*, i32** %90, i64 %92
  %94 = load i32*, i32** %93, align 8
  %95 = load i32, i32* %9, align 4
  %96 = zext i32 %95 to i64
  %97 = getelementptr inbounds i32, i32* %94, i64 %96
  %98 = load i32, i32* %97, align 4
  %99 = load %struct.perf_event_attr*, %struct.perf_event_attr** %6, align 8
  %100 = getelementptr inbounds %struct.perf_event_attr, %struct.perf_event_attr* %99, i32 0, i32 1
  store i32 %98, i32* %100, align 4
  %101 = load i32, i32* %11, align 4
  %102 = load %struct.perf_event*, %struct.perf_event** %5, align 8
  %103 = call i32 @x86_pmu_extra_regs(i32 %101, %struct.perf_event* %102)
  store i32 %103, i32* %3, align 4
  br label %104

104:                                              ; preds = %80, %77, %71, %49, %36, %23
  %105 = load i32, i32* %3, align 4
  ret i32 %105
}

declare dso_local i32 @array_index_nospec(i32, i32) #1

declare dso_local i32 @x86_pmu_extra_regs(i32, %struct.perf_event*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
