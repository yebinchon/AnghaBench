; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/events/extr_core.c_x86_pmu_event_mapped.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/events/extr_core.c_x86_pmu_event_mapped.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.perf_event = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.mm_struct = type { %struct.TYPE_4__, i32 }
%struct.TYPE_4__ = type { i32 }

@PERF_X86_EVENT_RDPMC_ALLOWED = common dso_local global i32 0, align 4
@refresh_pce = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.perf_event*, %struct.mm_struct*)* @x86_pmu_event_mapped to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @x86_pmu_event_mapped(%struct.perf_event* %0, %struct.mm_struct* %1) #0 {
  %3 = alloca %struct.perf_event*, align 8
  %4 = alloca %struct.mm_struct*, align 8
  store %struct.perf_event* %0, %struct.perf_event** %3, align 8
  store %struct.mm_struct* %1, %struct.mm_struct** %4, align 8
  %5 = load %struct.perf_event*, %struct.perf_event** %3, align 8
  %6 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %5, i32 0, i32 0
  %7 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = load i32, i32* @PERF_X86_EVENT_RDPMC_ALLOWED, align 4
  %10 = and i32 %8, %9
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %13, label %12

12:                                               ; preds = %2
  br label %27

13:                                               ; preds = %2
  %14 = load %struct.mm_struct*, %struct.mm_struct** %4, align 8
  %15 = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %14, i32 0, i32 1
  %16 = call i32 @lockdep_assert_held_write(i32* %15)
  %17 = load %struct.mm_struct*, %struct.mm_struct** %4, align 8
  %18 = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 0
  %20 = call i32 @atomic_inc_return(i32* %19)
  %21 = icmp eq i32 %20, 1
  br i1 %21, label %22, label %27

22:                                               ; preds = %13
  %23 = load %struct.mm_struct*, %struct.mm_struct** %4, align 8
  %24 = call i32 @mm_cpumask(%struct.mm_struct* %23)
  %25 = load i32, i32* @refresh_pce, align 4
  %26 = call i32 @on_each_cpu_mask(i32 %24, i32 %25, i32* null, i32 1)
  br label %27

27:                                               ; preds = %12, %22, %13
  ret void
}

declare dso_local i32 @lockdep_assert_held_write(i32*) #1

declare dso_local i32 @atomic_inc_return(i32*) #1

declare dso_local i32 @on_each_cpu_mask(i32, i32, i32*, i32) #1

declare dso_local i32 @mm_cpumask(%struct.mm_struct*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
