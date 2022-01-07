; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/perf/extr_imc-pmu.c_thread_imc_event_init.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/perf/extr_imc-pmu.c_thread_imc_event_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.perf_event = type { %struct.TYPE_6__*, %struct.TYPE_4__, %struct.TYPE_5__ }
%struct.TYPE_6__ = type { i64, i32 }
%struct.TYPE_4__ = type { i32, %struct.task_struct*, i64 }
%struct.task_struct = type { i32 }
%struct.TYPE_5__ = type { i32, i64 }
%struct.imc_pmu = type { i32 }

@ENOENT = common dso_local global i32 0, align 4
@CAP_SYS_ADMIN = common dso_local global i32 0, align 4
@EACCES = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@IMC_EVENT_OFFSET_MASK = common dso_local global i32 0, align 4
@perf_sw_context = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.perf_event*)* @thread_imc_event_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @thread_imc_event_init(%struct.perf_event* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.perf_event*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.task_struct*, align 8
  %6 = alloca %struct.imc_pmu*, align 8
  store %struct.perf_event* %0, %struct.perf_event** %3, align 8
  %7 = load %struct.perf_event*, %struct.perf_event** %3, align 8
  %8 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %7, i32 0, i32 2
  %9 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  store i32 %10, i32* %4, align 4
  %11 = load %struct.perf_event*, %struct.perf_event** %3, align 8
  %12 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %11, i32 0, i32 2
  %13 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %12, i32 0, i32 1
  %14 = load i64, i64* %13, align 8
  %15 = load %struct.perf_event*, %struct.perf_event** %3, align 8
  %16 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %15, i32 0, i32 0
  %17 = load %struct.TYPE_6__*, %struct.TYPE_6__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = icmp ne i64 %14, %19
  br i1 %20, label %21, label %24

21:                                               ; preds = %1
  %22 = load i32, i32* @ENOENT, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %2, align 4
  br label %72

24:                                               ; preds = %1
  %25 = load i32, i32* @CAP_SYS_ADMIN, align 4
  %26 = call i32 @capable(i32 %25)
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %31, label %28

28:                                               ; preds = %24
  %29 = load i32, i32* @EACCES, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %2, align 4
  br label %72

31:                                               ; preds = %24
  %32 = load %struct.perf_event*, %struct.perf_event** %3, align 8
  %33 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %32, i32 0, i32 1
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 2
  %35 = load i64, i64* %34, align 8
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %40

37:                                               ; preds = %31
  %38 = load i32, i32* @EINVAL, align 4
  %39 = sub nsw i32 0, %38
  store i32 %39, i32* %2, align 4
  br label %72

40:                                               ; preds = %31
  %41 = load %struct.perf_event*, %struct.perf_event** %3, align 8
  %42 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %41, i32 0, i32 1
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i32 0, i32 0
  store i32 -1, i32* %43, align 8
  %44 = load %struct.perf_event*, %struct.perf_event** %3, align 8
  %45 = call %struct.imc_pmu* @imc_event_to_pmu(%struct.perf_event* %44)
  store %struct.imc_pmu* %45, %struct.imc_pmu** %6, align 8
  %46 = load i32, i32* %4, align 4
  %47 = load i32, i32* @IMC_EVENT_OFFSET_MASK, align 4
  %48 = and i32 %46, %47
  %49 = load %struct.imc_pmu*, %struct.imc_pmu** %6, align 8
  %50 = getelementptr inbounds %struct.imc_pmu, %struct.imc_pmu* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = icmp sgt i32 %48, %51
  br i1 %52, label %53, label %56

53:                                               ; preds = %40
  %54 = load i32, i32* @EINVAL, align 4
  %55 = sub nsw i32 0, %54
  store i32 %55, i32* %2, align 4
  br label %72

56:                                               ; preds = %40
  %57 = load %struct.perf_event*, %struct.perf_event** %3, align 8
  %58 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %57, i32 0, i32 1
  %59 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %58, i32 0, i32 1
  %60 = load %struct.task_struct*, %struct.task_struct** %59, align 8
  store %struct.task_struct* %60, %struct.task_struct** %5, align 8
  %61 = load %struct.task_struct*, %struct.task_struct** %5, align 8
  %62 = icmp ne %struct.task_struct* %61, null
  br i1 %62, label %66, label %63

63:                                               ; preds = %56
  %64 = load i32, i32* @EINVAL, align 4
  %65 = sub nsw i32 0, %64
  store i32 %65, i32* %2, align 4
  br label %72

66:                                               ; preds = %56
  %67 = load i32, i32* @perf_sw_context, align 4
  %68 = load %struct.perf_event*, %struct.perf_event** %3, align 8
  %69 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %68, i32 0, i32 0
  %70 = load %struct.TYPE_6__*, %struct.TYPE_6__** %69, align 8
  %71 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %70, i32 0, i32 1
  store i32 %67, i32* %71, align 8
  store i32 0, i32* %2, align 4
  br label %72

72:                                               ; preds = %66, %63, %53, %37, %28, %21
  %73 = load i32, i32* %2, align 4
  ret i32 %73
}

declare dso_local i32 @capable(i32) #1

declare dso_local %struct.imc_pmu* @imc_event_to_pmu(%struct.perf_event*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
