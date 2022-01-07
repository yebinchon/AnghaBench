; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/events/intel/extr_rapl.c_rapl_pmu_event_init.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/events/intel/extr_rapl.c_rapl_pmu_event_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i64 }
%struct.TYPE_10__ = type { i32 }
%struct.perf_event = type { %struct.TYPE_8__, %struct.rapl_pmu*, i32, %struct.TYPE_7__, i32 }
%struct.TYPE_8__ = type { i32, i32, i32 }
%struct.rapl_pmu = type { i32 }
%struct.TYPE_7__ = type { i32, i64, i64 }

@RAPL_EVENT_MASK = common dso_local global i32 0, align 4
@rapl_pmus = common dso_local global %struct.TYPE_9__* null, align 8
@ENOENT = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@PERF_EV_CAP_READ_ACTIVE_PKG = common dso_local global i32 0, align 4
@NR_RAPL_DOMAINS = common dso_local global i32 0, align 4
@rapl_cntr_mask = common dso_local global i32 0, align 4
@rapl_msrs = common dso_local global %struct.TYPE_10__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.perf_event*)* @rapl_pmu_event_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rapl_pmu_event_init(%struct.perf_event* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.perf_event*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.rapl_pmu*, align 8
  store %struct.perf_event* %0, %struct.perf_event** %3, align 8
  %8 = load %struct.perf_event*, %struct.perf_event** %3, align 8
  %9 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %8, i32 0, i32 3
  %10 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = load i32, i32* @RAPL_EVENT_MASK, align 4
  %13 = and i32 %11, %12
  store i32 %13, i32* %4, align 4
  store i32 0, i32* %6, align 4
  %14 = load %struct.perf_event*, %struct.perf_event** %3, align 8
  %15 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %14, i32 0, i32 3
  %16 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %15, i32 0, i32 1
  %17 = load i64, i64* %16, align 8
  %18 = load %struct.TYPE_9__*, %struct.TYPE_9__** @rapl_pmus, align 8
  %19 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = icmp ne i64 %17, %21
  br i1 %22, label %23, label %26

23:                                               ; preds = %1
  %24 = load i32, i32* @ENOENT, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %2, align 4
  br label %124

26:                                               ; preds = %1
  %27 = load %struct.perf_event*, %struct.perf_event** %3, align 8
  %28 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %27, i32 0, i32 3
  %29 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = load i32, i32* @RAPL_EVENT_MASK, align 4
  %32 = xor i32 %31, -1
  %33 = and i32 %30, %32
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %38

35:                                               ; preds = %26
  %36 = load i32, i32* @EINVAL, align 4
  %37 = sub nsw i32 0, %36
  store i32 %37, i32* %2, align 4
  br label %124

38:                                               ; preds = %26
  %39 = load %struct.perf_event*, %struct.perf_event** %3, align 8
  %40 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %39, i32 0, i32 2
  %41 = load i32, i32* %40, align 8
  %42 = icmp slt i32 %41, 0
  br i1 %42, label %43, label %46

43:                                               ; preds = %38
  %44 = load i32, i32* @EINVAL, align 4
  %45 = sub nsw i32 0, %44
  store i32 %45, i32* %2, align 4
  br label %124

46:                                               ; preds = %38
  %47 = load i32, i32* @PERF_EV_CAP_READ_ACTIVE_PKG, align 4
  %48 = load %struct.perf_event*, %struct.perf_event** %3, align 8
  %49 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %48, i32 0, i32 4
  %50 = load i32, i32* %49, align 8
  %51 = or i32 %50, %47
  store i32 %51, i32* %49, align 8
  %52 = load i32, i32* %4, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %59

54:                                               ; preds = %46
  %55 = load i32, i32* %4, align 4
  %56 = load i32, i32* @NR_RAPL_DOMAINS, align 4
  %57 = add nsw i32 %56, 1
  %58 = icmp sge i32 %55, %57
  br i1 %58, label %59, label %62

59:                                               ; preds = %54, %46
  %60 = load i32, i32* @EINVAL, align 4
  %61 = sub nsw i32 0, %60
  store i32 %61, i32* %2, align 4
  br label %124

62:                                               ; preds = %54
  %63 = load i32, i32* %4, align 4
  %64 = sext i32 %63 to i64
  %65 = load i32, i32* @NR_RAPL_DOMAINS, align 4
  %66 = add nsw i32 %65, 1
  %67 = call i32 @array_index_nospec(i64 %64, i32 %66)
  store i32 %67, i32* %4, align 4
  %68 = load i32, i32* %4, align 4
  %69 = sub nsw i32 %68, 1
  store i32 %69, i32* %5, align 4
  %70 = load i32, i32* @rapl_cntr_mask, align 4
  %71 = load i32, i32* %5, align 4
  %72 = shl i32 1, %71
  %73 = and i32 %70, %72
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %78, label %75

75:                                               ; preds = %62
  %76 = load i32, i32* @EINVAL, align 4
  %77 = sub nsw i32 0, %76
  store i32 %77, i32* %2, align 4
  br label %124

78:                                               ; preds = %62
  %79 = load %struct.perf_event*, %struct.perf_event** %3, align 8
  %80 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %79, i32 0, i32 3
  %81 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %80, i32 0, i32 2
  %82 = load i64, i64* %81, align 8
  %83 = icmp ne i64 %82, 0
  br i1 %83, label %84, label %87

84:                                               ; preds = %78
  %85 = load i32, i32* @EINVAL, align 4
  %86 = sub nsw i32 0, %85
  store i32 %86, i32* %2, align 4
  br label %124

87:                                               ; preds = %78
  %88 = load %struct.perf_event*, %struct.perf_event** %3, align 8
  %89 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %88, i32 0, i32 2
  %90 = load i32, i32* %89, align 8
  %91 = call %struct.rapl_pmu* @cpu_to_rapl_pmu(i32 %90)
  store %struct.rapl_pmu* %91, %struct.rapl_pmu** %7, align 8
  %92 = load %struct.rapl_pmu*, %struct.rapl_pmu** %7, align 8
  %93 = icmp ne %struct.rapl_pmu* %92, null
  br i1 %93, label %97, label %94

94:                                               ; preds = %87
  %95 = load i32, i32* @EINVAL, align 4
  %96 = sub nsw i32 0, %95
  store i32 %96, i32* %2, align 4
  br label %124

97:                                               ; preds = %87
  %98 = load %struct.rapl_pmu*, %struct.rapl_pmu** %7, align 8
  %99 = getelementptr inbounds %struct.rapl_pmu, %struct.rapl_pmu* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 4
  %101 = load %struct.perf_event*, %struct.perf_event** %3, align 8
  %102 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %101, i32 0, i32 2
  store i32 %100, i32* %102, align 8
  %103 = load %struct.rapl_pmu*, %struct.rapl_pmu** %7, align 8
  %104 = load %struct.perf_event*, %struct.perf_event** %3, align 8
  %105 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %104, i32 0, i32 1
  store %struct.rapl_pmu* %103, %struct.rapl_pmu** %105, align 8
  %106 = load %struct.TYPE_10__*, %struct.TYPE_10__** @rapl_msrs, align 8
  %107 = load i32, i32* %5, align 4
  %108 = sext i32 %107 to i64
  %109 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %106, i64 %108
  %110 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %109, i32 0, i32 0
  %111 = load i32, i32* %110, align 4
  %112 = load %struct.perf_event*, %struct.perf_event** %3, align 8
  %113 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %112, i32 0, i32 0
  %114 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %113, i32 0, i32 2
  store i32 %111, i32* %114, align 8
  %115 = load i32, i32* %4, align 4
  %116 = load %struct.perf_event*, %struct.perf_event** %3, align 8
  %117 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %116, i32 0, i32 0
  %118 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %117, i32 0, i32 0
  store i32 %115, i32* %118, align 8
  %119 = load i32, i32* %5, align 4
  %120 = load %struct.perf_event*, %struct.perf_event** %3, align 8
  %121 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %120, i32 0, i32 0
  %122 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %121, i32 0, i32 1
  store i32 %119, i32* %122, align 4
  %123 = load i32, i32* %6, align 4
  store i32 %123, i32* %2, align 4
  br label %124

124:                                              ; preds = %97, %94, %84, %75, %59, %43, %35, %23
  %125 = load i32, i32* %2, align 4
  ret i32 %125
}

declare dso_local i32 @array_index_nospec(i64, i32) #1

declare dso_local %struct.rapl_pmu* @cpu_to_rapl_pmu(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
