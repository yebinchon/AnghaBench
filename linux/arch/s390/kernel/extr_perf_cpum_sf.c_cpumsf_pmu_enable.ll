; ModuleID = '/home/carl/AnghaBench/linux/arch/s390/kernel/extr_perf_cpum_sf.c_cpumsf_pmu_enable.c'
source_filename = "/home/carl/AnghaBench/linux/arch/s390/kernel/extr_perf_cpum_sf.c_cpumsf_pmu_enable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32 }
%struct.pmu = type { i32 }
%struct.cpu_hw_sf = type { i32, %struct.TYPE_5__, %struct.TYPE_4__*, i32 }
%struct.TYPE_5__ = type { i64, i64, i32, i32, i32, i32, i32 }
%struct.TYPE_4__ = type { %struct.hw_perf_event }
%struct.hw_perf_event = type { i32 }

@cpu_hw_sf = common dso_local global i32 0, align 4
@PMU_F_ENABLED = common dso_local global i32 0, align 4
@PMU_F_ERR_MASK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [48 x i8] c"Loading sampling controls failed: op=%i err=%i\0A\00", align 1
@S390_lowcore = common dso_local global %struct.TYPE_6__ zeroinitializer, align 4
@sfdbg = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [66 x i8] c"pmu_enable: es=%i cs=%i ed=%i cd=%i interval:%lx tear=%p dear=%p\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pmu*)* @cpumsf_pmu_enable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cpumsf_pmu_enable(%struct.pmu* %0) #0 {
  %2 = alloca %struct.pmu*, align 8
  %3 = alloca %struct.cpu_hw_sf*, align 8
  %4 = alloca %struct.hw_perf_event*, align 8
  %5 = alloca i32, align 4
  store %struct.pmu* %0, %struct.pmu** %2, align 8
  %6 = call %struct.cpu_hw_sf* @this_cpu_ptr(i32* @cpu_hw_sf)
  store %struct.cpu_hw_sf* %6, %struct.cpu_hw_sf** %3, align 8
  %7 = load %struct.cpu_hw_sf*, %struct.cpu_hw_sf** %3, align 8
  %8 = getelementptr inbounds %struct.cpu_hw_sf, %struct.cpu_hw_sf* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 8
  %10 = load i32, i32* @PMU_F_ENABLED, align 4
  %11 = and i32 %9, %10
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %14

13:                                               ; preds = %1
  br label %114

14:                                               ; preds = %1
  %15 = load %struct.cpu_hw_sf*, %struct.cpu_hw_sf** %3, align 8
  %16 = getelementptr inbounds %struct.cpu_hw_sf, %struct.cpu_hw_sf* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = load i32, i32* @PMU_F_ERR_MASK, align 4
  %19 = and i32 %17, %18
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %14
  br label %114

22:                                               ; preds = %14
  %23 = load %struct.cpu_hw_sf*, %struct.cpu_hw_sf** %3, align 8
  %24 = getelementptr inbounds %struct.cpu_hw_sf, %struct.cpu_hw_sf* %23, i32 0, i32 2
  %25 = load %struct.TYPE_4__*, %struct.TYPE_4__** %24, align 8
  %26 = icmp ne %struct.TYPE_4__* %25, null
  br i1 %26, label %27, label %59

27:                                               ; preds = %22
  %28 = load %struct.cpu_hw_sf*, %struct.cpu_hw_sf** %3, align 8
  %29 = getelementptr inbounds %struct.cpu_hw_sf, %struct.cpu_hw_sf* %28, i32 0, i32 2
  %30 = load %struct.TYPE_4__*, %struct.TYPE_4__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 0
  store %struct.hw_perf_event* %31, %struct.hw_perf_event** %4, align 8
  %32 = load %struct.hw_perf_event*, %struct.hw_perf_event** %4, align 8
  %33 = call i32 @SAMPL_DIAG_MODE(%struct.hw_perf_event* %32)
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %50, label %35

35:                                               ; preds = %27
  %36 = load %struct.cpu_hw_sf*, %struct.cpu_hw_sf** %3, align 8
  %37 = load %struct.hw_perf_event*, %struct.hw_perf_event** %4, align 8
  %38 = call i32 @sfb_account_overflows(%struct.cpu_hw_sf* %36, %struct.hw_perf_event* %37)
  %39 = load %struct.cpu_hw_sf*, %struct.cpu_hw_sf** %3, align 8
  %40 = getelementptr inbounds %struct.cpu_hw_sf, %struct.cpu_hw_sf* %39, i32 0, i32 3
  %41 = load %struct.hw_perf_event*, %struct.hw_perf_event** %4, align 8
  %42 = call i64 @sfb_has_pending_allocs(i32* %40, %struct.hw_perf_event* %41)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %49

44:                                               ; preds = %35
  %45 = load %struct.cpu_hw_sf*, %struct.cpu_hw_sf** %3, align 8
  %46 = getelementptr inbounds %struct.cpu_hw_sf, %struct.cpu_hw_sf* %45, i32 0, i32 3
  %47 = load %struct.hw_perf_event*, %struct.hw_perf_event** %4, align 8
  %48 = call i32 @extend_sampling_buffer(i32* %46, %struct.hw_perf_event* %47)
  br label %49

49:                                               ; preds = %44, %35
  br label %50

50:                                               ; preds = %49, %27
  %51 = load %struct.cpu_hw_sf*, %struct.cpu_hw_sf** %3, align 8
  %52 = getelementptr inbounds %struct.cpu_hw_sf, %struct.cpu_hw_sf* %51, i32 0, i32 2
  %53 = load %struct.TYPE_4__*, %struct.TYPE_4__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %53, i32 0, i32 0
  %55 = call i32 @SAMPL_RATE(%struct.hw_perf_event* %54)
  %56 = load %struct.cpu_hw_sf*, %struct.cpu_hw_sf** %3, align 8
  %57 = getelementptr inbounds %struct.cpu_hw_sf, %struct.cpu_hw_sf* %56, i32 0, i32 1
  %58 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %57, i32 0, i32 2
  store i32 %55, i32* %58, align 8
  br label %59

59:                                               ; preds = %50, %22
  %60 = load i32, i32* @PMU_F_ENABLED, align 4
  %61 = load %struct.cpu_hw_sf*, %struct.cpu_hw_sf** %3, align 8
  %62 = getelementptr inbounds %struct.cpu_hw_sf, %struct.cpu_hw_sf* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 8
  %64 = or i32 %63, %60
  store i32 %64, i32* %62, align 8
  %65 = call i32 (...) @barrier()
  %66 = load %struct.cpu_hw_sf*, %struct.cpu_hw_sf** %3, align 8
  %67 = getelementptr inbounds %struct.cpu_hw_sf, %struct.cpu_hw_sf* %66, i32 0, i32 1
  %68 = call i32 @lsctl(%struct.TYPE_5__* %67)
  store i32 %68, i32* %5, align 4
  %69 = load i32, i32* %5, align 4
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %80

71:                                               ; preds = %59
  %72 = load i32, i32* @PMU_F_ENABLED, align 4
  %73 = xor i32 %72, -1
  %74 = load %struct.cpu_hw_sf*, %struct.cpu_hw_sf** %3, align 8
  %75 = getelementptr inbounds %struct.cpu_hw_sf, %struct.cpu_hw_sf* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 8
  %77 = and i32 %76, %73
  store i32 %77, i32* %75, align 8
  %78 = load i32, i32* %5, align 4
  %79 = call i32 @pr_err(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str, i64 0, i64 0), i32 1, i32 %78)
  br label %114

80:                                               ; preds = %59
  %81 = call i32 @lpp(i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @S390_lowcore, i32 0, i32 0))
  %82 = load i32, i32* @sfdbg, align 4
  %83 = load %struct.cpu_hw_sf*, %struct.cpu_hw_sf** %3, align 8
  %84 = getelementptr inbounds %struct.cpu_hw_sf, %struct.cpu_hw_sf* %83, i32 0, i32 1
  %85 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %84, i32 0, i32 6
  %86 = load i32, i32* %85, align 8
  %87 = load %struct.cpu_hw_sf*, %struct.cpu_hw_sf** %3, align 8
  %88 = getelementptr inbounds %struct.cpu_hw_sf, %struct.cpu_hw_sf* %87, i32 0, i32 1
  %89 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %88, i32 0, i32 5
  %90 = load i32, i32* %89, align 4
  %91 = load %struct.cpu_hw_sf*, %struct.cpu_hw_sf** %3, align 8
  %92 = getelementptr inbounds %struct.cpu_hw_sf, %struct.cpu_hw_sf* %91, i32 0, i32 1
  %93 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %92, i32 0, i32 4
  %94 = load i32, i32* %93, align 8
  %95 = load %struct.cpu_hw_sf*, %struct.cpu_hw_sf** %3, align 8
  %96 = getelementptr inbounds %struct.cpu_hw_sf, %struct.cpu_hw_sf* %95, i32 0, i32 1
  %97 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %96, i32 0, i32 3
  %98 = load i32, i32* %97, align 4
  %99 = load %struct.cpu_hw_sf*, %struct.cpu_hw_sf** %3, align 8
  %100 = getelementptr inbounds %struct.cpu_hw_sf, %struct.cpu_hw_sf* %99, i32 0, i32 1
  %101 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %100, i32 0, i32 2
  %102 = load i32, i32* %101, align 8
  %103 = load %struct.cpu_hw_sf*, %struct.cpu_hw_sf** %3, align 8
  %104 = getelementptr inbounds %struct.cpu_hw_sf, %struct.cpu_hw_sf* %103, i32 0, i32 1
  %105 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %104, i32 0, i32 1
  %106 = load i64, i64* %105, align 8
  %107 = inttoptr i64 %106 to i8*
  %108 = load %struct.cpu_hw_sf*, %struct.cpu_hw_sf** %3, align 8
  %109 = getelementptr inbounds %struct.cpu_hw_sf, %struct.cpu_hw_sf* %108, i32 0, i32 1
  %110 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %109, i32 0, i32 0
  %111 = load i64, i64* %110, align 8
  %112 = inttoptr i64 %111 to i8*
  %113 = call i32 @debug_sprintf_event(i32 %82, i32 6, i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str.1, i64 0, i64 0), i32 %86, i32 %90, i32 %94, i32 %98, i32 %102, i8* %107, i8* %112)
  br label %114

114:                                              ; preds = %80, %71, %21, %13
  ret void
}

declare dso_local %struct.cpu_hw_sf* @this_cpu_ptr(i32*) #1

declare dso_local i32 @SAMPL_DIAG_MODE(%struct.hw_perf_event*) #1

declare dso_local i32 @sfb_account_overflows(%struct.cpu_hw_sf*, %struct.hw_perf_event*) #1

declare dso_local i64 @sfb_has_pending_allocs(i32*, %struct.hw_perf_event*) #1

declare dso_local i32 @extend_sampling_buffer(i32*, %struct.hw_perf_event*) #1

declare dso_local i32 @SAMPL_RATE(%struct.hw_perf_event*) #1

declare dso_local i32 @barrier(...) #1

declare dso_local i32 @lsctl(%struct.TYPE_5__*) #1

declare dso_local i32 @pr_err(i8*, i32, i32) #1

declare dso_local i32 @lpp(i32*) #1

declare dso_local i32 @debug_sprintf_event(i32, i32, i8*, i32, i32, i32, i32, i32, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
