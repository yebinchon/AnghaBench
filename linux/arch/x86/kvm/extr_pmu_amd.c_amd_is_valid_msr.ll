; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/kvm/extr_pmu_amd.c_amd_is_valid_msr.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/kvm/extr_pmu_amd.c_amd_is_valid_msr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvm_vcpu = type { i32 }
%struct.kvm_pmu = type { i32 }

@PMU_TYPE_COUNTER = common dso_local global i32 0, align 4
@PMU_TYPE_EVNTSEL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.kvm_vcpu*, i32)* @amd_is_valid_msr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @amd_is_valid_msr(%struct.kvm_vcpu* %0, i32 %1) #0 {
  %3 = alloca %struct.kvm_vcpu*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.kvm_pmu*, align 8
  %6 = alloca i32, align 4
  store %struct.kvm_vcpu* %0, %struct.kvm_vcpu** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %8 = call %struct.kvm_pmu* @vcpu_to_pmu(%struct.kvm_vcpu* %7)
  store %struct.kvm_pmu* %8, %struct.kvm_pmu** %5, align 8
  store i32 0, i32* %6, align 4
  %9 = load %struct.kvm_pmu*, %struct.kvm_pmu** %5, align 8
  %10 = load i32, i32* %4, align 4
  %11 = load i32, i32* @PMU_TYPE_COUNTER, align 4
  %12 = call i64 @get_gp_pmc_amd(%struct.kvm_pmu* %9, i32 %10, i32 %11)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %20, label %14

14:                                               ; preds = %2
  %15 = load %struct.kvm_pmu*, %struct.kvm_pmu** %5, align 8
  %16 = load i32, i32* %4, align 4
  %17 = load i32, i32* @PMU_TYPE_EVNTSEL, align 4
  %18 = call i64 @get_gp_pmc_amd(%struct.kvm_pmu* %15, i32 %16, i32 %17)
  %19 = icmp ne i64 %18, 0
  br label %20

20:                                               ; preds = %14, %2
  %21 = phi i1 [ true, %2 ], [ %19, %14 ]
  %22 = zext i1 %21 to i32
  store i32 %22, i32* %6, align 4
  %23 = load i32, i32* %6, align 4
  ret i32 %23
}

declare dso_local %struct.kvm_pmu* @vcpu_to_pmu(%struct.kvm_vcpu*) #1

declare dso_local i64 @get_gp_pmc_amd(%struct.kvm_pmu*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
