; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/kvm/extr_pmu_amd.c_amd_msr_idx_to_pmc.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/kvm/extr_pmu_amd.c_amd_msr_idx_to_pmc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvm_pmc = type { i32 }
%struct.kvm_vcpu = type { i32 }
%struct.kvm_pmu = type { i32, %struct.kvm_pmc* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.kvm_pmc* (%struct.kvm_vcpu*, i32, i32*)* @amd_msr_idx_to_pmc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.kvm_pmc* @amd_msr_idx_to_pmc(%struct.kvm_vcpu* %0, i32 %1, i32* %2) #0 {
  %4 = alloca %struct.kvm_pmc*, align 8
  %5 = alloca %struct.kvm_vcpu*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca %struct.kvm_pmu*, align 8
  %9 = alloca %struct.kvm_pmc*, align 8
  store %struct.kvm_vcpu* %0, %struct.kvm_vcpu** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32* %2, i32** %7, align 8
  %10 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %5, align 8
  %11 = call %struct.kvm_pmu* @vcpu_to_pmu(%struct.kvm_vcpu* %10)
  store %struct.kvm_pmu* %11, %struct.kvm_pmu** %8, align 8
  %12 = load i32, i32* %6, align 4
  %13 = and i32 %12, 1073741823
  store i32 %13, i32* %6, align 4
  %14 = load i32, i32* %6, align 4
  %15 = load %struct.kvm_pmu*, %struct.kvm_pmu** %8, align 8
  %16 = getelementptr inbounds %struct.kvm_pmu, %struct.kvm_pmu* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = icmp uge i32 %14, %17
  br i1 %18, label %19, label %20

19:                                               ; preds = %3
  store %struct.kvm_pmc* null, %struct.kvm_pmc** %4, align 8
  br label %28

20:                                               ; preds = %3
  %21 = load %struct.kvm_pmu*, %struct.kvm_pmu** %8, align 8
  %22 = getelementptr inbounds %struct.kvm_pmu, %struct.kvm_pmu* %21, i32 0, i32 1
  %23 = load %struct.kvm_pmc*, %struct.kvm_pmc** %22, align 8
  store %struct.kvm_pmc* %23, %struct.kvm_pmc** %9, align 8
  %24 = load %struct.kvm_pmc*, %struct.kvm_pmc** %9, align 8
  %25 = load i32, i32* %6, align 4
  %26 = zext i32 %25 to i64
  %27 = getelementptr inbounds %struct.kvm_pmc, %struct.kvm_pmc* %24, i64 %26
  store %struct.kvm_pmc* %27, %struct.kvm_pmc** %4, align 8
  br label %28

28:                                               ; preds = %20, %19
  %29 = load %struct.kvm_pmc*, %struct.kvm_pmc** %4, align 8
  ret %struct.kvm_pmc* %29
}

declare dso_local %struct.kvm_pmu* @vcpu_to_pmu(%struct.kvm_vcpu*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
