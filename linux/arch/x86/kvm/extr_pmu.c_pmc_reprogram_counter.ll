; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/kvm/extr_pmu.c_pmc_reprogram_counter.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/kvm/extr_pmu.c_pmc_reprogram_counter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvm_pmc = type { i32, i32, %struct.perf_event* }
%struct.perf_event = type { i32 }
%struct.perf_event_attr = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_2__ = type { i32 }

@HSW_IN_TX = common dso_local global i32 0, align 4
@HSW_IN_TX_CHECKPOINTED = common dso_local global i32 0, align 4
@current = common dso_local global i32 0, align 4
@kvm_perf_overflow_intr = common dso_local global i32 0, align 4
@kvm_perf_overflow = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [54 x i8] c"kvm_pmu: event creation failed %ld for pmc->idx = %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.kvm_pmc*, i32, i32, i32, i32, i32, i32, i32)* @pmc_reprogram_counter to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pmc_reprogram_counter(%struct.kvm_pmc* %0, i32 %1, i32 %2, i32 %3, i32 %4, i32 %5, i32 %6, i32 %7) #0 {
  %9 = alloca %struct.kvm_pmc*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca %struct.perf_event*, align 8
  %18 = alloca %struct.perf_event_attr, align 4
  store %struct.kvm_pmc* %0, %struct.kvm_pmc** %9, align 8
  store i32 %1, i32* %10, align 4
  store i32 %2, i32* %11, align 4
  store i32 %3, i32* %12, align 4
  store i32 %4, i32* %13, align 4
  store i32 %5, i32* %14, align 4
  store i32 %6, i32* %15, align 4
  store i32 %7, i32* %16, align 4
  %19 = getelementptr inbounds %struct.perf_event_attr, %struct.perf_event_attr* %18, i32 0, i32 0
  store i32 36, i32* %19, align 4
  %20 = getelementptr inbounds %struct.perf_event_attr, %struct.perf_event_attr* %18, i32 0, i32 1
  store i32 1, i32* %20, align 4
  %21 = getelementptr inbounds %struct.perf_event_attr, %struct.perf_event_attr* %18, i32 0, i32 2
  store i32 1, i32* %21, align 4
  %22 = getelementptr inbounds %struct.perf_event_attr, %struct.perf_event_attr* %18, i32 0, i32 3
  store i32 1, i32* %22, align 4
  %23 = getelementptr inbounds %struct.perf_event_attr, %struct.perf_event_attr* %18, i32 0, i32 4
  %24 = load i32, i32* %12, align 4
  store i32 %24, i32* %23, align 4
  %25 = getelementptr inbounds %struct.perf_event_attr, %struct.perf_event_attr* %18, i32 0, i32 5
  %26 = load i32, i32* %13, align 4
  store i32 %26, i32* %25, align 4
  %27 = getelementptr inbounds %struct.perf_event_attr, %struct.perf_event_attr* %18, i32 0, i32 6
  %28 = load i32, i32* %11, align 4
  store i32 %28, i32* %27, align 4
  %29 = getelementptr inbounds %struct.perf_event_attr, %struct.perf_event_attr* %18, i32 0, i32 7
  store i32 0, i32* %29, align 4
  %30 = getelementptr inbounds %struct.perf_event_attr, %struct.perf_event_attr* %18, i32 0, i32 8
  %31 = load i32, i32* %10, align 4
  store i32 %31, i32* %30, align 4
  %32 = load %struct.kvm_pmc*, %struct.kvm_pmc** %9, align 8
  %33 = getelementptr inbounds %struct.kvm_pmc, %struct.kvm_pmc* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = sub nsw i32 0, %34
  %36 = load %struct.kvm_pmc*, %struct.kvm_pmc** %9, align 8
  %37 = call i32 @pmc_bitmask(%struct.kvm_pmc* %36)
  %38 = and i32 %35, %37
  %39 = getelementptr inbounds %struct.perf_event_attr, %struct.perf_event_attr* %18, i32 0, i32 7
  store i32 %38, i32* %39, align 4
  %40 = load i32, i32* %15, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %47

42:                                               ; preds = %8
  %43 = load i32, i32* @HSW_IN_TX, align 4
  %44 = getelementptr inbounds %struct.perf_event_attr, %struct.perf_event_attr* %18, i32 0, i32 6
  %45 = load i32, i32* %44, align 4
  %46 = or i32 %45, %43
  store i32 %46, i32* %44, align 4
  br label %47

47:                                               ; preds = %42, %8
  %48 = load i32, i32* %16, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %56

50:                                               ; preds = %47
  %51 = getelementptr inbounds %struct.perf_event_attr, %struct.perf_event_attr* %18, i32 0, i32 7
  store i32 0, i32* %51, align 4
  %52 = load i32, i32* @HSW_IN_TX_CHECKPOINTED, align 4
  %53 = getelementptr inbounds %struct.perf_event_attr, %struct.perf_event_attr* %18, i32 0, i32 6
  %54 = load i32, i32* %53, align 4
  %55 = or i32 %54, %52
  store i32 %55, i32* %53, align 4
  br label %56

56:                                               ; preds = %50, %47
  %57 = load i32, i32* @current, align 4
  %58 = load i32, i32* %14, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %62

60:                                               ; preds = %56
  %61 = load i32, i32* @kvm_perf_overflow_intr, align 4
  br label %64

62:                                               ; preds = %56
  %63 = load i32, i32* @kvm_perf_overflow, align 4
  br label %64

64:                                               ; preds = %62, %60
  %65 = phi i32 [ %61, %60 ], [ %63, %62 ]
  %66 = load %struct.kvm_pmc*, %struct.kvm_pmc** %9, align 8
  %67 = call %struct.perf_event* @perf_event_create_kernel_counter(%struct.perf_event_attr* %18, i32 -1, i32 %57, i32 %65, %struct.kvm_pmc* %66)
  store %struct.perf_event* %67, %struct.perf_event** %17, align 8
  %68 = load %struct.perf_event*, %struct.perf_event** %17, align 8
  %69 = call i64 @IS_ERR(%struct.perf_event* %68)
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %78

71:                                               ; preds = %64
  %72 = load %struct.perf_event*, %struct.perf_event** %17, align 8
  %73 = call i32 @PTR_ERR(%struct.perf_event* %72)
  %74 = load %struct.kvm_pmc*, %struct.kvm_pmc** %9, align 8
  %75 = getelementptr inbounds %struct.kvm_pmc, %struct.kvm_pmc* %74, i32 0, i32 1
  %76 = load i32, i32* %75, align 4
  %77 = call i32 @pr_debug_ratelimited(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str, i64 0, i64 0), i32 %73, i32 %76)
  br label %90

78:                                               ; preds = %64
  %79 = load %struct.perf_event*, %struct.perf_event** %17, align 8
  %80 = load %struct.kvm_pmc*, %struct.kvm_pmc** %9, align 8
  %81 = getelementptr inbounds %struct.kvm_pmc, %struct.kvm_pmc* %80, i32 0, i32 2
  store %struct.perf_event* %79, %struct.perf_event** %81, align 8
  %82 = load %struct.kvm_pmc*, %struct.kvm_pmc** %9, align 8
  %83 = getelementptr inbounds %struct.kvm_pmc, %struct.kvm_pmc* %82, i32 0, i32 1
  %84 = load i32, i32* %83, align 4
  %85 = load %struct.kvm_pmc*, %struct.kvm_pmc** %9, align 8
  %86 = call %struct.TYPE_2__* @pmc_to_pmu(%struct.kvm_pmc* %85)
  %87 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %86, i32 0, i32 0
  %88 = bitcast i32* %87 to i64*
  %89 = call i32 @clear_bit(i32 %84, i64* %88)
  br label %90

90:                                               ; preds = %78, %71
  ret void
}

declare dso_local i32 @pmc_bitmask(%struct.kvm_pmc*) #1

declare dso_local %struct.perf_event* @perf_event_create_kernel_counter(%struct.perf_event_attr*, i32, i32, i32, %struct.kvm_pmc*) #1

declare dso_local i64 @IS_ERR(%struct.perf_event*) #1

declare dso_local i32 @pr_debug_ratelimited(i8*, i32, i32) #1

declare dso_local i32 @PTR_ERR(%struct.perf_event*) #1

declare dso_local i32 @clear_bit(i32, i64*) #1

declare dso_local %struct.TYPE_2__* @pmc_to_pmu(%struct.kvm_pmc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
