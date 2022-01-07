; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/perf/extr_imc-pmu.c_update_pmu_ops.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/perf/extr_imc-pmu.c_update_pmu_ops.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.imc_pmu = type { i32, i32**, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i8*, i32, i8*, i32, i32, i32, i32, i32, i32, i32**, i32 }

@perf_invalid_context = common dso_local global i32 0, align 4
@imc_event_add = common dso_local global i32 0, align 4
@imc_event_stop = common dso_local global i8* null, align 8
@imc_event_start = common dso_local global i32 0, align 4
@imc_event_update = common dso_local global i32 0, align 4
@PERF_PMU_CAP_NO_EXCLUDE = common dso_local global i32 0, align 4
@imc_format_group = common dso_local global i32 0, align 4
@IMC_FORMAT_ATTR = common dso_local global i64 0, align 8
@nest_imc_event_init = common dso_local global i32 0, align 4
@imc_pmu_cpumask_attr_group = common dso_local global i32 0, align 4
@IMC_CPUMASK_ATTR = common dso_local global i64 0, align 8
@core_imc_event_init = common dso_local global i32 0, align 4
@thread_imc_event_init = common dso_local global i32 0, align 4
@thread_imc_event_add = common dso_local global i32 0, align 4
@thread_imc_event_del = common dso_local global i8* null, align 8
@thread_imc_pmu_start_txn = common dso_local global i32 0, align 4
@thread_imc_pmu_cancel_txn = common dso_local global i32 0, align 4
@thread_imc_pmu_commit_txn = common dso_local global i32 0, align 4
@trace_imc_event_init = common dso_local global i32 0, align 4
@trace_imc_event_add = common dso_local global i32 0, align 4
@trace_imc_event_del = common dso_local global i8* null, align 8
@trace_imc_event_start = common dso_local global i32 0, align 4
@trace_imc_event_stop = common dso_local global i8* null, align 8
@trace_imc_event_read = common dso_local global i32 0, align 4
@trace_imc_format_group = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.imc_pmu*)* @update_pmu_ops to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @update_pmu_ops(%struct.imc_pmu* %0) #0 {
  %2 = alloca %struct.imc_pmu*, align 8
  store %struct.imc_pmu* %0, %struct.imc_pmu** %2, align 8
  %3 = load i32, i32* @perf_invalid_context, align 4
  %4 = load %struct.imc_pmu*, %struct.imc_pmu** %2, align 8
  %5 = getelementptr inbounds %struct.imc_pmu, %struct.imc_pmu* %4, i32 0, i32 2
  %6 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %5, i32 0, i32 11
  store i32 %3, i32* %6, align 8
  %7 = load i32, i32* @imc_event_add, align 4
  %8 = load %struct.imc_pmu*, %struct.imc_pmu** %2, align 8
  %9 = getelementptr inbounds %struct.imc_pmu, %struct.imc_pmu* %8, i32 0, i32 2
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 4
  store i32 %7, i32* %10, align 8
  %11 = load i8*, i8** @imc_event_stop, align 8
  %12 = load %struct.imc_pmu*, %struct.imc_pmu** %2, align 8
  %13 = getelementptr inbounds %struct.imc_pmu, %struct.imc_pmu* %12, i32 0, i32 2
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 3
  store i8* %11, i8** %14, align 8
  %15 = load i32, i32* @imc_event_start, align 4
  %16 = load %struct.imc_pmu*, %struct.imc_pmu** %2, align 8
  %17 = getelementptr inbounds %struct.imc_pmu, %struct.imc_pmu* %16, i32 0, i32 2
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 2
  store i32 %15, i32* %18, align 8
  %19 = load i8*, i8** @imc_event_stop, align 8
  %20 = load %struct.imc_pmu*, %struct.imc_pmu** %2, align 8
  %21 = getelementptr inbounds %struct.imc_pmu, %struct.imc_pmu* %20, i32 0, i32 2
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 1
  store i8* %19, i8** %22, align 8
  %23 = load i32, i32* @imc_event_update, align 4
  %24 = load %struct.imc_pmu*, %struct.imc_pmu** %2, align 8
  %25 = getelementptr inbounds %struct.imc_pmu, %struct.imc_pmu* %24, i32 0, i32 2
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 0
  store i32 %23, i32* %26, align 8
  %27 = load %struct.imc_pmu*, %struct.imc_pmu** %2, align 8
  %28 = getelementptr inbounds %struct.imc_pmu, %struct.imc_pmu* %27, i32 0, i32 1
  %29 = load i32**, i32*** %28, align 8
  %30 = load %struct.imc_pmu*, %struct.imc_pmu** %2, align 8
  %31 = getelementptr inbounds %struct.imc_pmu, %struct.imc_pmu* %30, i32 0, i32 2
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 10
  store i32** %29, i32*** %32, align 8
  %33 = load i32, i32* @PERF_PMU_CAP_NO_EXCLUDE, align 4
  %34 = load %struct.imc_pmu*, %struct.imc_pmu** %2, align 8
  %35 = getelementptr inbounds %struct.imc_pmu, %struct.imc_pmu* %34, i32 0, i32 2
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 9
  store i32 %33, i32* %36, align 4
  %37 = load %struct.imc_pmu*, %struct.imc_pmu** %2, align 8
  %38 = getelementptr inbounds %struct.imc_pmu, %struct.imc_pmu* %37, i32 0, i32 1
  %39 = load i32**, i32*** %38, align 8
  %40 = load i64, i64* @IMC_FORMAT_ATTR, align 8
  %41 = getelementptr inbounds i32*, i32** %39, i64 %40
  store i32* @imc_format_group, i32** %41, align 8
  %42 = load %struct.imc_pmu*, %struct.imc_pmu** %2, align 8
  %43 = getelementptr inbounds %struct.imc_pmu, %struct.imc_pmu* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  switch i32 %44, label %120 [
    i32 130, label %45
    i32 131, label %55
    i32 129, label %65
    i32 128, label %90
  ]

45:                                               ; preds = %1
  %46 = load i32, i32* @nest_imc_event_init, align 4
  %47 = load %struct.imc_pmu*, %struct.imc_pmu** %2, align 8
  %48 = getelementptr inbounds %struct.imc_pmu, %struct.imc_pmu* %47, i32 0, i32 2
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %48, i32 0, i32 5
  store i32 %46, i32* %49, align 4
  %50 = load %struct.imc_pmu*, %struct.imc_pmu** %2, align 8
  %51 = getelementptr inbounds %struct.imc_pmu, %struct.imc_pmu* %50, i32 0, i32 1
  %52 = load i32**, i32*** %51, align 8
  %53 = load i64, i64* @IMC_CPUMASK_ATTR, align 8
  %54 = getelementptr inbounds i32*, i32** %52, i64 %53
  store i32* @imc_pmu_cpumask_attr_group, i32** %54, align 8
  br label %121

55:                                               ; preds = %1
  %56 = load i32, i32* @core_imc_event_init, align 4
  %57 = load %struct.imc_pmu*, %struct.imc_pmu** %2, align 8
  %58 = getelementptr inbounds %struct.imc_pmu, %struct.imc_pmu* %57, i32 0, i32 2
  %59 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %58, i32 0, i32 5
  store i32 %56, i32* %59, align 4
  %60 = load %struct.imc_pmu*, %struct.imc_pmu** %2, align 8
  %61 = getelementptr inbounds %struct.imc_pmu, %struct.imc_pmu* %60, i32 0, i32 1
  %62 = load i32**, i32*** %61, align 8
  %63 = load i64, i64* @IMC_CPUMASK_ATTR, align 8
  %64 = getelementptr inbounds i32*, i32** %62, i64 %63
  store i32* @imc_pmu_cpumask_attr_group, i32** %64, align 8
  br label %121

65:                                               ; preds = %1
  %66 = load i32, i32* @thread_imc_event_init, align 4
  %67 = load %struct.imc_pmu*, %struct.imc_pmu** %2, align 8
  %68 = getelementptr inbounds %struct.imc_pmu, %struct.imc_pmu* %67, i32 0, i32 2
  %69 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %68, i32 0, i32 5
  store i32 %66, i32* %69, align 4
  %70 = load i32, i32* @thread_imc_event_add, align 4
  %71 = load %struct.imc_pmu*, %struct.imc_pmu** %2, align 8
  %72 = getelementptr inbounds %struct.imc_pmu, %struct.imc_pmu* %71, i32 0, i32 2
  %73 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %72, i32 0, i32 4
  store i32 %70, i32* %73, align 8
  %74 = load i8*, i8** @thread_imc_event_del, align 8
  %75 = load %struct.imc_pmu*, %struct.imc_pmu** %2, align 8
  %76 = getelementptr inbounds %struct.imc_pmu, %struct.imc_pmu* %75, i32 0, i32 2
  %77 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %76, i32 0, i32 3
  store i8* %74, i8** %77, align 8
  %78 = load i32, i32* @thread_imc_pmu_start_txn, align 4
  %79 = load %struct.imc_pmu*, %struct.imc_pmu** %2, align 8
  %80 = getelementptr inbounds %struct.imc_pmu, %struct.imc_pmu* %79, i32 0, i32 2
  %81 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %80, i32 0, i32 8
  store i32 %78, i32* %81, align 8
  %82 = load i32, i32* @thread_imc_pmu_cancel_txn, align 4
  %83 = load %struct.imc_pmu*, %struct.imc_pmu** %2, align 8
  %84 = getelementptr inbounds %struct.imc_pmu, %struct.imc_pmu* %83, i32 0, i32 2
  %85 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %84, i32 0, i32 7
  store i32 %82, i32* %85, align 4
  %86 = load i32, i32* @thread_imc_pmu_commit_txn, align 4
  %87 = load %struct.imc_pmu*, %struct.imc_pmu** %2, align 8
  %88 = getelementptr inbounds %struct.imc_pmu, %struct.imc_pmu* %87, i32 0, i32 2
  %89 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %88, i32 0, i32 6
  store i32 %86, i32* %89, align 8
  br label %121

90:                                               ; preds = %1
  %91 = load i32, i32* @trace_imc_event_init, align 4
  %92 = load %struct.imc_pmu*, %struct.imc_pmu** %2, align 8
  %93 = getelementptr inbounds %struct.imc_pmu, %struct.imc_pmu* %92, i32 0, i32 2
  %94 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %93, i32 0, i32 5
  store i32 %91, i32* %94, align 4
  %95 = load i32, i32* @trace_imc_event_add, align 4
  %96 = load %struct.imc_pmu*, %struct.imc_pmu** %2, align 8
  %97 = getelementptr inbounds %struct.imc_pmu, %struct.imc_pmu* %96, i32 0, i32 2
  %98 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %97, i32 0, i32 4
  store i32 %95, i32* %98, align 8
  %99 = load i8*, i8** @trace_imc_event_del, align 8
  %100 = load %struct.imc_pmu*, %struct.imc_pmu** %2, align 8
  %101 = getelementptr inbounds %struct.imc_pmu, %struct.imc_pmu* %100, i32 0, i32 2
  %102 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %101, i32 0, i32 3
  store i8* %99, i8** %102, align 8
  %103 = load i32, i32* @trace_imc_event_start, align 4
  %104 = load %struct.imc_pmu*, %struct.imc_pmu** %2, align 8
  %105 = getelementptr inbounds %struct.imc_pmu, %struct.imc_pmu* %104, i32 0, i32 2
  %106 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %105, i32 0, i32 2
  store i32 %103, i32* %106, align 8
  %107 = load i8*, i8** @trace_imc_event_stop, align 8
  %108 = load %struct.imc_pmu*, %struct.imc_pmu** %2, align 8
  %109 = getelementptr inbounds %struct.imc_pmu, %struct.imc_pmu* %108, i32 0, i32 2
  %110 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %109, i32 0, i32 1
  store i8* %107, i8** %110, align 8
  %111 = load i32, i32* @trace_imc_event_read, align 4
  %112 = load %struct.imc_pmu*, %struct.imc_pmu** %2, align 8
  %113 = getelementptr inbounds %struct.imc_pmu, %struct.imc_pmu* %112, i32 0, i32 2
  %114 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %113, i32 0, i32 0
  store i32 %111, i32* %114, align 8
  %115 = load %struct.imc_pmu*, %struct.imc_pmu** %2, align 8
  %116 = getelementptr inbounds %struct.imc_pmu, %struct.imc_pmu* %115, i32 0, i32 1
  %117 = load i32**, i32*** %116, align 8
  %118 = load i64, i64* @IMC_FORMAT_ATTR, align 8
  %119 = getelementptr inbounds i32*, i32** %117, i64 %118
  store i32* @trace_imc_format_group, i32** %119, align 8
  br label %120

120:                                              ; preds = %1, %90
  br label %121

121:                                              ; preds = %120, %65, %55, %45
  ret i32 0
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
