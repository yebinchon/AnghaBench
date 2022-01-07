; ModuleID = '/home/carl/AnghaBench/linux/arch/sparc/kernel/extr_perf_event.c_sparc_map_cache_event.c'
source_filename = "/home/carl/AnghaBench/linux/arch/sparc/kernel/extr_perf_event.c_sparc_map_cache_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { %struct.perf_event_map**** }
%struct.perf_event_map = type { i64 }

@sparc_pmu = common dso_local global %struct.TYPE_2__* null, align 8
@ENOENT = common dso_local global i32 0, align 4
@PERF_COUNT_HW_CACHE_MAX = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@PERF_COUNT_HW_CACHE_OP_MAX = common dso_local global i32 0, align 4
@PERF_COUNT_HW_CACHE_RESULT_MAX = common dso_local global i32 0, align 4
@CACHE_OP_UNSUPPORTED = common dso_local global i64 0, align 8
@CACHE_OP_NONSENSE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.perf_event_map* (i32)* @sparc_map_cache_event to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.perf_event_map* @sparc_map_cache_event(i32 %0) #0 {
  %2 = alloca %struct.perf_event_map*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.perf_event_map*, align 8
  store i32 %0, i32* %3, align 4
  %8 = load %struct.TYPE_2__*, %struct.TYPE_2__** @sparc_pmu, align 8
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 0
  %10 = load %struct.perf_event_map****, %struct.perf_event_map***** %9, align 8
  %11 = icmp ne %struct.perf_event_map**** %10, null
  br i1 %11, label %16, label %12

12:                                               ; preds = %1
  %13 = load i32, i32* @ENOENT, align 4
  %14 = sub nsw i32 0, %13
  %15 = call %struct.perf_event_map* @ERR_PTR(i32 %14)
  store %struct.perf_event_map* %15, %struct.perf_event_map** %2, align 8
  br label %86

16:                                               ; preds = %1
  %17 = load i32, i32* %3, align 4
  %18 = ashr i32 %17, 0
  %19 = and i32 %18, 255
  store i32 %19, i32* %4, align 4
  %20 = load i32, i32* %4, align 4
  %21 = load i32, i32* @PERF_COUNT_HW_CACHE_MAX, align 4
  %22 = icmp uge i32 %20, %21
  br i1 %22, label %23, label %27

23:                                               ; preds = %16
  %24 = load i32, i32* @EINVAL, align 4
  %25 = sub nsw i32 0, %24
  %26 = call %struct.perf_event_map* @ERR_PTR(i32 %25)
  store %struct.perf_event_map* %26, %struct.perf_event_map** %2, align 8
  br label %86

27:                                               ; preds = %16
  %28 = load i32, i32* %3, align 4
  %29 = ashr i32 %28, 8
  %30 = and i32 %29, 255
  store i32 %30, i32* %5, align 4
  %31 = load i32, i32* %5, align 4
  %32 = load i32, i32* @PERF_COUNT_HW_CACHE_OP_MAX, align 4
  %33 = icmp uge i32 %31, %32
  br i1 %33, label %34, label %38

34:                                               ; preds = %27
  %35 = load i32, i32* @EINVAL, align 4
  %36 = sub nsw i32 0, %35
  %37 = call %struct.perf_event_map* @ERR_PTR(i32 %36)
  store %struct.perf_event_map* %37, %struct.perf_event_map** %2, align 8
  br label %86

38:                                               ; preds = %27
  %39 = load i32, i32* %3, align 4
  %40 = ashr i32 %39, 16
  %41 = and i32 %40, 255
  store i32 %41, i32* %6, align 4
  %42 = load i32, i32* %6, align 4
  %43 = load i32, i32* @PERF_COUNT_HW_CACHE_RESULT_MAX, align 4
  %44 = icmp uge i32 %42, %43
  br i1 %44, label %45, label %49

45:                                               ; preds = %38
  %46 = load i32, i32* @EINVAL, align 4
  %47 = sub nsw i32 0, %46
  %48 = call %struct.perf_event_map* @ERR_PTR(i32 %47)
  store %struct.perf_event_map* %48, %struct.perf_event_map** %2, align 8
  br label %86

49:                                               ; preds = %38
  %50 = load %struct.TYPE_2__*, %struct.TYPE_2__** @sparc_pmu, align 8
  %51 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %50, i32 0, i32 0
  %52 = load %struct.perf_event_map****, %struct.perf_event_map***** %51, align 8
  %53 = load %struct.perf_event_map***, %struct.perf_event_map**** %52, align 8
  %54 = load i32, i32* %4, align 4
  %55 = zext i32 %54 to i64
  %56 = getelementptr inbounds %struct.perf_event_map**, %struct.perf_event_map*** %53, i64 %55
  %57 = load %struct.perf_event_map**, %struct.perf_event_map*** %56, align 8
  %58 = load i32, i32* %5, align 4
  %59 = zext i32 %58 to i64
  %60 = getelementptr inbounds %struct.perf_event_map*, %struct.perf_event_map** %57, i64 %59
  %61 = load %struct.perf_event_map*, %struct.perf_event_map** %60, align 8
  %62 = load i32, i32* %6, align 4
  %63 = zext i32 %62 to i64
  %64 = getelementptr inbounds %struct.perf_event_map, %struct.perf_event_map* %61, i64 %63
  store %struct.perf_event_map* %64, %struct.perf_event_map** %7, align 8
  %65 = load %struct.perf_event_map*, %struct.perf_event_map** %7, align 8
  %66 = getelementptr inbounds %struct.perf_event_map, %struct.perf_event_map* %65, i32 0, i32 0
  %67 = load i64, i64* %66, align 8
  %68 = load i64, i64* @CACHE_OP_UNSUPPORTED, align 8
  %69 = icmp eq i64 %67, %68
  br i1 %69, label %70, label %74

70:                                               ; preds = %49
  %71 = load i32, i32* @ENOENT, align 4
  %72 = sub nsw i32 0, %71
  %73 = call %struct.perf_event_map* @ERR_PTR(i32 %72)
  store %struct.perf_event_map* %73, %struct.perf_event_map** %2, align 8
  br label %86

74:                                               ; preds = %49
  %75 = load %struct.perf_event_map*, %struct.perf_event_map** %7, align 8
  %76 = getelementptr inbounds %struct.perf_event_map, %struct.perf_event_map* %75, i32 0, i32 0
  %77 = load i64, i64* %76, align 8
  %78 = load i64, i64* @CACHE_OP_NONSENSE, align 8
  %79 = icmp eq i64 %77, %78
  br i1 %79, label %80, label %84

80:                                               ; preds = %74
  %81 = load i32, i32* @EINVAL, align 4
  %82 = sub nsw i32 0, %81
  %83 = call %struct.perf_event_map* @ERR_PTR(i32 %82)
  store %struct.perf_event_map* %83, %struct.perf_event_map** %2, align 8
  br label %86

84:                                               ; preds = %74
  %85 = load %struct.perf_event_map*, %struct.perf_event_map** %7, align 8
  store %struct.perf_event_map* %85, %struct.perf_event_map** %2, align 8
  br label %86

86:                                               ; preds = %84, %80, %70, %45, %34, %23, %12
  %87 = load %struct.perf_event_map*, %struct.perf_event_map** %2, align 8
  ret %struct.perf_event_map* %87
}

declare dso_local %struct.perf_event_map* @ERR_PTR(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
