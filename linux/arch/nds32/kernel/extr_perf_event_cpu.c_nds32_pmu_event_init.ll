; ModuleID = '/home/carl/AnghaBench/linux/arch/nds32/kernel/extr_perf_event_cpu.c_nds32_pmu_event_init.c'
source_filename = "/home/carl/AnghaBench/linux/arch/nds32/kernel/extr_perf_event_cpu.c_nds32_pmu_event_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.perf_event = type { i32 }
%struct.nds32_pmu = type { i32 (%struct.perf_event*)*, i32 }

@EOPNOTSUPP = common dso_local global i32 0, align 4
@ENOENT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.perf_event*)* @nds32_pmu_event_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nds32_pmu_event_init(%struct.perf_event* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.perf_event*, align 8
  %4 = alloca %struct.nds32_pmu*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  store %struct.perf_event* %0, %struct.perf_event** %3, align 8
  %7 = load %struct.perf_event*, %struct.perf_event** %3, align 8
  %8 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = call %struct.nds32_pmu* @to_nds32_pmu(i32 %9)
  store %struct.nds32_pmu* %10, %struct.nds32_pmu** %4, align 8
  store i32 0, i32* %5, align 4
  %11 = load %struct.nds32_pmu*, %struct.nds32_pmu** %4, align 8
  %12 = getelementptr inbounds %struct.nds32_pmu, %struct.nds32_pmu* %11, i32 0, i32 1
  store i32* %12, i32** %6, align 8
  %13 = load %struct.perf_event*, %struct.perf_event** %3, align 8
  %14 = call i64 @has_branch_stack(%struct.perf_event* %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %19

16:                                               ; preds = %1
  %17 = load i32, i32* @EOPNOTSUPP, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %2, align 4
  br label %58

19:                                               ; preds = %1
  %20 = load %struct.nds32_pmu*, %struct.nds32_pmu** %4, align 8
  %21 = getelementptr inbounds %struct.nds32_pmu, %struct.nds32_pmu* %20, i32 0, i32 0
  %22 = load i32 (%struct.perf_event*)*, i32 (%struct.perf_event*)** %21, align 8
  %23 = load %struct.perf_event*, %struct.perf_event** %3, align 8
  %24 = call i32 %22(%struct.perf_event* %23)
  %25 = load i32, i32* @ENOENT, align 4
  %26 = sub nsw i32 0, %25
  %27 = icmp eq i32 %24, %26
  br i1 %27, label %28, label %31

28:                                               ; preds = %19
  %29 = load i32, i32* @ENOENT, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %2, align 4
  br label %58

31:                                               ; preds = %19
  %32 = load i32*, i32** %6, align 8
  %33 = call i32 @atomic_inc_not_zero(i32* %32)
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %49, label %35

35:                                               ; preds = %31
  %36 = load i32*, i32** %6, align 8
  %37 = call i64 @atomic_read(i32* %36)
  %38 = icmp eq i64 %37, 0
  br i1 %38, label %39, label %42

39:                                               ; preds = %35
  %40 = load %struct.nds32_pmu*, %struct.nds32_pmu** %4, align 8
  %41 = call i32 @nds32_pmu_reserve_hardware(%struct.nds32_pmu* %40)
  store i32 %41, i32* %5, align 4
  br label %42

42:                                               ; preds = %39, %35
  %43 = load i32, i32* %5, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %48, label %45

45:                                               ; preds = %42
  %46 = load i32*, i32** %6, align 8
  %47 = call i32 @atomic_inc(i32* %46)
  br label %48

48:                                               ; preds = %45, %42
  br label %49

49:                                               ; preds = %48, %31
  %50 = load i32, i32* %5, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %54

52:                                               ; preds = %49
  %53 = load i32, i32* %5, align 4
  store i32 %53, i32* %2, align 4
  br label %58

54:                                               ; preds = %49
  %55 = load %struct.perf_event*, %struct.perf_event** %3, align 8
  %56 = call i32 @__hw_perf_event_init(%struct.perf_event* %55)
  store i32 %56, i32* %5, align 4
  %57 = load i32, i32* %5, align 4
  store i32 %57, i32* %2, align 4
  br label %58

58:                                               ; preds = %54, %52, %28, %16
  %59 = load i32, i32* %2, align 4
  ret i32 %59
}

declare dso_local %struct.nds32_pmu* @to_nds32_pmu(i32) #1

declare dso_local i64 @has_branch_stack(%struct.perf_event*) #1

declare dso_local i32 @atomic_inc_not_zero(i32*) #1

declare dso_local i64 @atomic_read(i32*) #1

declare dso_local i32 @nds32_pmu_reserve_hardware(%struct.nds32_pmu*) #1

declare dso_local i32 @atomic_inc(i32*) #1

declare dso_local i32 @__hw_perf_event_init(%struct.perf_event*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
