; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/kvm/vmx/extr_pmu_intel.c_intel_msr_idx_to_pmc.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/kvm/vmx/extr_pmu_intel.c_intel_msr_idx_to_pmc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvm_pmc = type { i32 }
%struct.kvm_vcpu = type { i32 }
%struct.kvm_pmu = type { i32, i32, i32*, %struct.kvm_pmc*, %struct.kvm_pmc* }

@KVM_PMC_FIXED = common dso_local global i64 0, align 8
@KVM_PMC_GP = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.kvm_pmc* (%struct.kvm_vcpu*, i32, i32*)* @intel_msr_idx_to_pmc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.kvm_pmc* @intel_msr_idx_to_pmc(%struct.kvm_vcpu* %0, i32 %1, i32* %2) #0 {
  %4 = alloca %struct.kvm_pmc*, align 8
  %5 = alloca %struct.kvm_vcpu*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca %struct.kvm_pmu*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.kvm_pmc*, align 8
  store %struct.kvm_vcpu* %0, %struct.kvm_vcpu** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32* %2, i32** %7, align 8
  %11 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %5, align 8
  %12 = call %struct.kvm_pmu* @vcpu_to_pmu(%struct.kvm_vcpu* %11)
  store %struct.kvm_pmu* %12, %struct.kvm_pmu** %8, align 8
  %13 = load i32, i32* %6, align 4
  %14 = and i32 %13, 1073741824
  store i32 %14, i32* %9, align 4
  %15 = load i32, i32* %6, align 4
  %16 = and i32 %15, 1073741823
  store i32 %16, i32* %6, align 4
  %17 = load i32, i32* %9, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %26, label %19

19:                                               ; preds = %3
  %20 = load i32, i32* %6, align 4
  %21 = load %struct.kvm_pmu*, %struct.kvm_pmu** %8, align 8
  %22 = getelementptr inbounds %struct.kvm_pmu, %struct.kvm_pmu* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = icmp uge i32 %20, %23
  br i1 %24, label %25, label %26

25:                                               ; preds = %19
  store %struct.kvm_pmc* null, %struct.kvm_pmc** %4, align 8
  br label %69

26:                                               ; preds = %19, %3
  %27 = load i32, i32* %9, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %36

29:                                               ; preds = %26
  %30 = load i32, i32* %6, align 4
  %31 = load %struct.kvm_pmu*, %struct.kvm_pmu** %8, align 8
  %32 = getelementptr inbounds %struct.kvm_pmu, %struct.kvm_pmu* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = icmp uge i32 %30, %33
  br i1 %34, label %35, label %36

35:                                               ; preds = %29
  store %struct.kvm_pmc* null, %struct.kvm_pmc** %4, align 8
  br label %69

36:                                               ; preds = %29, %26
  %37 = load i32, i32* %9, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %43

39:                                               ; preds = %36
  %40 = load %struct.kvm_pmu*, %struct.kvm_pmu** %8, align 8
  %41 = getelementptr inbounds %struct.kvm_pmu, %struct.kvm_pmu* %40, i32 0, i32 4
  %42 = load %struct.kvm_pmc*, %struct.kvm_pmc** %41, align 8
  br label %47

43:                                               ; preds = %36
  %44 = load %struct.kvm_pmu*, %struct.kvm_pmu** %8, align 8
  %45 = getelementptr inbounds %struct.kvm_pmu, %struct.kvm_pmu* %44, i32 0, i32 3
  %46 = load %struct.kvm_pmc*, %struct.kvm_pmc** %45, align 8
  br label %47

47:                                               ; preds = %43, %39
  %48 = phi %struct.kvm_pmc* [ %42, %39 ], [ %46, %43 ]
  store %struct.kvm_pmc* %48, %struct.kvm_pmc** %10, align 8
  %49 = load %struct.kvm_pmu*, %struct.kvm_pmu** %8, align 8
  %50 = getelementptr inbounds %struct.kvm_pmu, %struct.kvm_pmu* %49, i32 0, i32 2
  %51 = load i32*, i32** %50, align 8
  %52 = load i32, i32* %9, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %56

54:                                               ; preds = %47
  %55 = load i64, i64* @KVM_PMC_FIXED, align 8
  br label %58

56:                                               ; preds = %47
  %57 = load i64, i64* @KVM_PMC_GP, align 8
  br label %58

58:                                               ; preds = %56, %54
  %59 = phi i64 [ %55, %54 ], [ %57, %56 ]
  %60 = getelementptr inbounds i32, i32* %51, i64 %59
  %61 = load i32, i32* %60, align 4
  %62 = load i32*, i32** %7, align 8
  %63 = load i32, i32* %62, align 4
  %64 = and i32 %63, %61
  store i32 %64, i32* %62, align 4
  %65 = load %struct.kvm_pmc*, %struct.kvm_pmc** %10, align 8
  %66 = load i32, i32* %6, align 4
  %67 = zext i32 %66 to i64
  %68 = getelementptr inbounds %struct.kvm_pmc, %struct.kvm_pmc* %65, i64 %67
  store %struct.kvm_pmc* %68, %struct.kvm_pmc** %4, align 8
  br label %69

69:                                               ; preds = %58, %35, %25
  %70 = load %struct.kvm_pmc*, %struct.kvm_pmc** %4, align 8
  ret %struct.kvm_pmc* %70
}

declare dso_local %struct.kvm_pmu* @vcpu_to_pmu(%struct.kvm_vcpu*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
