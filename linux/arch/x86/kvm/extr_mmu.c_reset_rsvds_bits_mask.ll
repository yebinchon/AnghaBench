; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/kvm/extr_mmu.c_reset_rsvds_bits_mask.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/kvm/extr_mmu.c_reset_rsvds_bits_mask.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvm_vcpu = type { i32 }
%struct.kvm_mmu = type { i32, i32, i32 }

@X86_FEATURE_GBPAGES = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.kvm_vcpu*, %struct.kvm_mmu*)* @reset_rsvds_bits_mask to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @reset_rsvds_bits_mask(%struct.kvm_vcpu* %0, %struct.kvm_mmu* %1) #0 {
  %3 = alloca %struct.kvm_vcpu*, align 8
  %4 = alloca %struct.kvm_mmu*, align 8
  store %struct.kvm_vcpu* %0, %struct.kvm_vcpu** %3, align 8
  store %struct.kvm_mmu* %1, %struct.kvm_mmu** %4, align 8
  %5 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %6 = load %struct.kvm_mmu*, %struct.kvm_mmu** %4, align 8
  %7 = getelementptr inbounds %struct.kvm_mmu, %struct.kvm_mmu* %6, i32 0, i32 2
  %8 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %9 = call i32 @cpuid_maxphyaddr(%struct.kvm_vcpu* %8)
  %10 = load %struct.kvm_mmu*, %struct.kvm_mmu** %4, align 8
  %11 = getelementptr inbounds %struct.kvm_mmu, %struct.kvm_mmu* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 4
  %13 = load %struct.kvm_mmu*, %struct.kvm_mmu** %4, align 8
  %14 = getelementptr inbounds %struct.kvm_mmu, %struct.kvm_mmu* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %17 = load i32, i32* @X86_FEATURE_GBPAGES, align 4
  %18 = call i32 @guest_cpuid_has(%struct.kvm_vcpu* %16, i32 %17)
  %19 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %20 = call i32 @is_pse(%struct.kvm_vcpu* %19)
  %21 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %22 = call i32 @guest_cpuid_is_amd(%struct.kvm_vcpu* %21)
  %23 = call i32 @__reset_rsvds_bits_mask(%struct.kvm_vcpu* %5, i32* %7, i32 %9, i32 %12, i32 %15, i32 %18, i32 %20, i32 %22)
  ret void
}

declare dso_local i32 @__reset_rsvds_bits_mask(%struct.kvm_vcpu*, i32*, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @cpuid_maxphyaddr(%struct.kvm_vcpu*) #1

declare dso_local i32 @guest_cpuid_has(%struct.kvm_vcpu*, i32) #1

declare dso_local i32 @is_pse(%struct.kvm_vcpu*) #1

declare dso_local i32 @guest_cpuid_is_amd(%struct.kvm_vcpu*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
