; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/kvm/extr_pmu.c_kvm_perf_overflow_intr.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/kvm/extr_pmu.c_kvm_perf_overflow_intr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.perf_event = type { %struct.kvm_pmc* }
%struct.kvm_pmc = type { i32, i32 }
%struct.perf_sample_data = type { i32 }
%struct.pt_regs = type { i32 }
%struct.kvm_pmu = type { i32, i32, i32 }

@KVM_REQ_PMU = common dso_local global i32 0, align 4
@KVM_REQ_PMI = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.perf_event*, %struct.perf_sample_data*, %struct.pt_regs*)* @kvm_perf_overflow_intr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @kvm_perf_overflow_intr(%struct.perf_event* %0, %struct.perf_sample_data* %1, %struct.pt_regs* %2) #0 {
  %4 = alloca %struct.perf_event*, align 8
  %5 = alloca %struct.perf_sample_data*, align 8
  %6 = alloca %struct.pt_regs*, align 8
  %7 = alloca %struct.kvm_pmc*, align 8
  %8 = alloca %struct.kvm_pmu*, align 8
  store %struct.perf_event* %0, %struct.perf_event** %4, align 8
  store %struct.perf_sample_data* %1, %struct.perf_sample_data** %5, align 8
  store %struct.pt_regs* %2, %struct.pt_regs** %6, align 8
  %9 = load %struct.perf_event*, %struct.perf_event** %4, align 8
  %10 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %9, i32 0, i32 0
  %11 = load %struct.kvm_pmc*, %struct.kvm_pmc** %10, align 8
  store %struct.kvm_pmc* %11, %struct.kvm_pmc** %7, align 8
  %12 = load %struct.kvm_pmc*, %struct.kvm_pmc** %7, align 8
  %13 = call %struct.kvm_pmu* @pmc_to_pmu(%struct.kvm_pmc* %12)
  store %struct.kvm_pmu* %13, %struct.kvm_pmu** %8, align 8
  %14 = load %struct.kvm_pmc*, %struct.kvm_pmc** %7, align 8
  %15 = getelementptr inbounds %struct.kvm_pmc, %struct.kvm_pmc* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  %17 = load %struct.kvm_pmu*, %struct.kvm_pmu** %8, align 8
  %18 = getelementptr inbounds %struct.kvm_pmu, %struct.kvm_pmu* %17, i32 0, i32 2
  %19 = bitcast i32* %18 to i64*
  %20 = call i32 @test_and_set_bit(i32 %16, i64* %19)
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %49, label %22

22:                                               ; preds = %3
  %23 = load %struct.kvm_pmc*, %struct.kvm_pmc** %7, align 8
  %24 = getelementptr inbounds %struct.kvm_pmc, %struct.kvm_pmc* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = load %struct.kvm_pmu*, %struct.kvm_pmu** %8, align 8
  %27 = getelementptr inbounds %struct.kvm_pmu, %struct.kvm_pmu* %26, i32 0, i32 1
  %28 = bitcast i32* %27 to i64*
  %29 = call i32 @__set_bit(i32 %25, i64* %28)
  %30 = load i32, i32* @KVM_REQ_PMU, align 4
  %31 = load %struct.kvm_pmc*, %struct.kvm_pmc** %7, align 8
  %32 = getelementptr inbounds %struct.kvm_pmc, %struct.kvm_pmc* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @kvm_make_request(i32 %30, i32 %33)
  %35 = call i32 (...) @kvm_is_in_guest()
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %42, label %37

37:                                               ; preds = %22
  %38 = load %struct.kvm_pmc*, %struct.kvm_pmc** %7, align 8
  %39 = call %struct.kvm_pmu* @pmc_to_pmu(%struct.kvm_pmc* %38)
  %40 = getelementptr inbounds %struct.kvm_pmu, %struct.kvm_pmu* %39, i32 0, i32 0
  %41 = call i32 @irq_work_queue(i32* %40)
  br label %48

42:                                               ; preds = %22
  %43 = load i32, i32* @KVM_REQ_PMI, align 4
  %44 = load %struct.kvm_pmc*, %struct.kvm_pmc** %7, align 8
  %45 = getelementptr inbounds %struct.kvm_pmc, %struct.kvm_pmc* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = call i32 @kvm_make_request(i32 %43, i32 %46)
  br label %48

48:                                               ; preds = %42, %37
  br label %49

49:                                               ; preds = %48, %3
  ret void
}

declare dso_local %struct.kvm_pmu* @pmc_to_pmu(%struct.kvm_pmc*) #1

declare dso_local i32 @test_and_set_bit(i32, i64*) #1

declare dso_local i32 @__set_bit(i32, i64*) #1

declare dso_local i32 @kvm_make_request(i32, i32) #1

declare dso_local i32 @kvm_is_in_guest(...) #1

declare dso_local i32 @irq_work_queue(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
