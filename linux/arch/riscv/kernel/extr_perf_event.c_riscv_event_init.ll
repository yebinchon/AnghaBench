; ModuleID = '/home/carl/AnghaBench/linux/arch/riscv/kernel/extr_perf_event.c_riscv_event_init.c'
source_filename = "/home/carl/AnghaBench/linux/arch/riscv/kernel/extr_perf_event.c_riscv_event_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 (i32)*, i32 (i32)* }
%struct.perf_event = type { {}*, %struct.perf_event_attr, %struct.hw_perf_event }
%struct.perf_event_attr = type { i32, i32 }
%struct.hw_perf_event = type { i32, i32 }

@riscv_active_events = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"PMC hardware not available\0A\00", align 1
@EBUSY = common dso_local global i32 0, align 4
@riscv_pmu = common dso_local global %struct.TYPE_2__* null, align 8
@EOPNOTSUPP = common dso_local global i32 0, align 4
@ENOENT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.perf_event*)* @riscv_event_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @riscv_event_init(%struct.perf_event* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.perf_event*, align 8
  %4 = alloca %struct.perf_event_attr*, align 8
  %5 = alloca %struct.hw_perf_event*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.perf_event* %0, %struct.perf_event** %3, align 8
  %8 = load %struct.perf_event*, %struct.perf_event** %3, align 8
  %9 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %8, i32 0, i32 1
  store %struct.perf_event_attr* %9, %struct.perf_event_attr** %4, align 8
  %10 = load %struct.perf_event*, %struct.perf_event** %3, align 8
  %11 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %10, i32 0, i32 2
  store %struct.hw_perf_event* %11, %struct.hw_perf_event** %5, align 8
  %12 = call i32 @atomic_inc_return(i32* @riscv_active_events)
  %13 = icmp eq i32 %12, 1
  br i1 %13, label %14, label %24

14:                                               ; preds = %1
  %15 = call i32 (...) @reserve_pmc_hardware()
  store i32 %15, i32* %6, align 4
  %16 = load i32, i32* %6, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %23

18:                                               ; preds = %14
  %19 = call i32 @pr_warn(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  %20 = call i32 @atomic_dec(i32* @riscv_active_events)
  %21 = load i32, i32* @EBUSY, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %2, align 4
  br label %71

23:                                               ; preds = %14
  br label %24

24:                                               ; preds = %23, %1
  %25 = load %struct.perf_event*, %struct.perf_event** %3, align 8
  %26 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %25, i32 0, i32 1
  %27 = getelementptr inbounds %struct.perf_event_attr, %struct.perf_event_attr* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  switch i32 %28, label %48 [
    i32 130, label %29
    i32 129, label %37
    i32 128, label %45
  ]

29:                                               ; preds = %24
  %30 = load %struct.TYPE_2__*, %struct.TYPE_2__** @riscv_pmu, align 8
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 0
  %32 = load i32 (i32)*, i32 (i32)** %31, align 8
  %33 = load %struct.perf_event_attr*, %struct.perf_event_attr** %4, align 8
  %34 = getelementptr inbounds %struct.perf_event_attr, %struct.perf_event_attr* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = call i32 %32(i32 %35)
  store i32 %36, i32* %7, align 4
  br label %51

37:                                               ; preds = %24
  %38 = load %struct.TYPE_2__*, %struct.TYPE_2__** @riscv_pmu, align 8
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 1
  %40 = load i32 (i32)*, i32 (i32)** %39, align 8
  %41 = load %struct.perf_event_attr*, %struct.perf_event_attr** %4, align 8
  %42 = getelementptr inbounds %struct.perf_event_attr, %struct.perf_event_attr* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = call i32 %40(i32 %43)
  store i32 %44, i32* %7, align 4
  br label %51

45:                                               ; preds = %24
  %46 = load i32, i32* @EOPNOTSUPP, align 4
  %47 = sub nsw i32 0, %46
  store i32 %47, i32* %2, align 4
  br label %71

48:                                               ; preds = %24
  %49 = load i32, i32* @ENOENT, align 4
  %50 = sub nsw i32 0, %49
  store i32 %50, i32* %2, align 4
  br label %71

51:                                               ; preds = %37, %29
  %52 = load %struct.perf_event*, %struct.perf_event** %3, align 8
  %53 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %52, i32 0, i32 0
  %54 = bitcast {}** %53 to i32 (%struct.perf_event*)**
  store i32 (%struct.perf_event*)* @riscv_event_destroy, i32 (%struct.perf_event*)** %54, align 8
  %55 = load i32, i32* %7, align 4
  %56 = icmp slt i32 %55, 0
  br i1 %56, label %57, label %65

57:                                               ; preds = %51
  %58 = load %struct.perf_event*, %struct.perf_event** %3, align 8
  %59 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %58, i32 0, i32 0
  %60 = bitcast {}** %59 to i32 (%struct.perf_event*)**
  %61 = load i32 (%struct.perf_event*)*, i32 (%struct.perf_event*)** %60, align 8
  %62 = load %struct.perf_event*, %struct.perf_event** %3, align 8
  %63 = call i32 %61(%struct.perf_event* %62)
  %64 = load i32, i32* %7, align 4
  store i32 %64, i32* %2, align 4
  br label %71

65:                                               ; preds = %51
  %66 = load i32, i32* %7, align 4
  %67 = load %struct.hw_perf_event*, %struct.hw_perf_event** %5, align 8
  %68 = getelementptr inbounds %struct.hw_perf_event, %struct.hw_perf_event* %67, i32 0, i32 0
  store i32 %66, i32* %68, align 4
  %69 = load %struct.hw_perf_event*, %struct.hw_perf_event** %5, align 8
  %70 = getelementptr inbounds %struct.hw_perf_event, %struct.hw_perf_event* %69, i32 0, i32 1
  store i32 -1, i32* %70, align 4
  store i32 0, i32* %2, align 4
  br label %71

71:                                               ; preds = %65, %57, %48, %45, %18
  %72 = load i32, i32* %2, align 4
  ret i32 %72
}

declare dso_local i32 @atomic_inc_return(i32*) #1

declare dso_local i32 @reserve_pmc_hardware(...) #1

declare dso_local i32 @pr_warn(i8*) #1

declare dso_local i32 @atomic_dec(i32*) #1

declare dso_local i32 @riscv_event_destroy(%struct.perf_event*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
