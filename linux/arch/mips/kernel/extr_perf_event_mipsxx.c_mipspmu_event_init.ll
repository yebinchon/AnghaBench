; ModuleID = '/home/carl/AnghaBench/linux/arch/mips/kernel/extr_perf_event_mipsxx.c_mipspmu_event_init.c'
source_filename = "/home/carl/AnghaBench/linux/arch/mips/kernel/extr_perf_event_mipsxx.c_mipspmu_event_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.perf_event = type { i64, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@EOPNOTSUPP = common dso_local global i32 0, align 4
@ENOENT = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@active_events = common dso_local global i32 0, align 4
@pmu_reserve_mutex = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.perf_event*)* @mipspmu_event_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mipspmu_event_init(%struct.perf_event* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.perf_event*, align 8
  %4 = alloca i32, align 4
  store %struct.perf_event* %0, %struct.perf_event** %3, align 8
  store i32 0, i32* %4, align 4
  %5 = load %struct.perf_event*, %struct.perf_event** %3, align 8
  %6 = call i64 @has_branch_stack(%struct.perf_event* %5)
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %8, label %11

8:                                                ; preds = %1
  %9 = load i32, i32* @EOPNOTSUPP, align 4
  %10 = sub nsw i32 0, %9
  store i32 %10, i32* %2, align 4
  br label %58

11:                                               ; preds = %1
  %12 = load %struct.perf_event*, %struct.perf_event** %3, align 8
  %13 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %12, i32 0, i32 1
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  switch i32 %15, label %17 [
    i32 128, label %16
    i32 130, label %16
    i32 129, label %16
  ]

16:                                               ; preds = %11, %11, %11
  br label %20

17:                                               ; preds = %11
  %18 = load i32, i32* @ENOENT, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %2, align 4
  br label %58

20:                                               ; preds = %16
  %21 = load %struct.perf_event*, %struct.perf_event** %3, align 8
  %22 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = icmp sge i64 %23, 0
  br i1 %24, label %25, label %34

25:                                               ; preds = %20
  %26 = load %struct.perf_event*, %struct.perf_event** %3, align 8
  %27 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = call i32 @cpu_online(i64 %28)
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %34, label %31

31:                                               ; preds = %25
  %32 = load i32, i32* @ENODEV, align 4
  %33 = sub nsw i32 0, %32
  store i32 %33, i32* %2, align 4
  br label %58

34:                                               ; preds = %25, %20
  %35 = call i32 @atomic_inc_not_zero(i32* @active_events)
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %50, label %37

37:                                               ; preds = %34
  %38 = call i32 @mutex_lock(i32* @pmu_reserve_mutex)
  %39 = call i64 @atomic_read(i32* @active_events)
  %40 = icmp eq i64 %39, 0
  br i1 %40, label %41, label %43

41:                                               ; preds = %37
  %42 = call i32 (...) @mipspmu_get_irq()
  store i32 %42, i32* %4, align 4
  br label %43

43:                                               ; preds = %41, %37
  %44 = load i32, i32* %4, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %48, label %46

46:                                               ; preds = %43
  %47 = call i32 @atomic_inc(i32* @active_events)
  br label %48

48:                                               ; preds = %46, %43
  %49 = call i32 @mutex_unlock(i32* @pmu_reserve_mutex)
  br label %50

50:                                               ; preds = %48, %34
  %51 = load i32, i32* %4, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %55

53:                                               ; preds = %50
  %54 = load i32, i32* %4, align 4
  store i32 %54, i32* %2, align 4
  br label %58

55:                                               ; preds = %50
  %56 = load %struct.perf_event*, %struct.perf_event** %3, align 8
  %57 = call i32 @__hw_perf_event_init(%struct.perf_event* %56)
  store i32 %57, i32* %2, align 4
  br label %58

58:                                               ; preds = %55, %53, %31, %17, %8
  %59 = load i32, i32* %2, align 4
  ret i32 %59
}

declare dso_local i64 @has_branch_stack(%struct.perf_event*) #1

declare dso_local i32 @cpu_online(i64) #1

declare dso_local i32 @atomic_inc_not_zero(i32*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i64 @atomic_read(i32*) #1

declare dso_local i32 @mipspmu_get_irq(...) #1

declare dso_local i32 @atomic_inc(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @__hw_perf_event_init(%struct.perf_event*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
