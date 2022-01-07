; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/kvm/extr_lapic.c_kvm_apic_set_version.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/kvm/extr_lapic.c_kvm_apic_set_version.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvm_vcpu = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.kvm_lapic* }
%struct.kvm_lapic = type { i32 }
%struct.kvm_cpuid_entry2 = type { i32 }

@APIC_VERSION = common dso_local global i32 0, align 4
@X86_FEATURE_X2APIC = common dso_local global i32 0, align 4
@APIC_LVR_DIRECTED_EOI = common dso_local global i32 0, align 4
@APIC_LVR = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @kvm_apic_set_version(%struct.kvm_vcpu* %0) #0 {
  %2 = alloca %struct.kvm_vcpu*, align 8
  %3 = alloca %struct.kvm_lapic*, align 8
  %4 = alloca %struct.kvm_cpuid_entry2*, align 8
  %5 = alloca i32, align 4
  store %struct.kvm_vcpu* %0, %struct.kvm_vcpu** %2, align 8
  %6 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %2, align 8
  %7 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %6, i32 0, i32 1
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 0
  %9 = load %struct.kvm_lapic*, %struct.kvm_lapic** %8, align 8
  store %struct.kvm_lapic* %9, %struct.kvm_lapic** %3, align 8
  %10 = load i32, i32* @APIC_VERSION, align 4
  store i32 %10, i32* %5, align 4
  %11 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %2, align 8
  %12 = call i32 @lapic_in_kernel(%struct.kvm_vcpu* %11)
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %15, label %14

14:                                               ; preds = %1
  br label %46

15:                                               ; preds = %1
  %16 = load %struct.kvm_lapic*, %struct.kvm_lapic** %3, align 8
  %17 = getelementptr inbounds %struct.kvm_lapic, %struct.kvm_lapic* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = call %struct.kvm_cpuid_entry2* @kvm_find_cpuid_entry(i32 %18, i32 1, i32 0)
  store %struct.kvm_cpuid_entry2* %19, %struct.kvm_cpuid_entry2** %4, align 8
  %20 = load %struct.kvm_cpuid_entry2*, %struct.kvm_cpuid_entry2** %4, align 8
  %21 = icmp ne %struct.kvm_cpuid_entry2* %20, null
  br i1 %21, label %22, label %41

22:                                               ; preds = %15
  %23 = load %struct.kvm_cpuid_entry2*, %struct.kvm_cpuid_entry2** %4, align 8
  %24 = getelementptr inbounds %struct.kvm_cpuid_entry2, %struct.kvm_cpuid_entry2* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = load i32, i32* @X86_FEATURE_X2APIC, align 4
  %27 = and i32 %26, 31
  %28 = shl i32 1, %27
  %29 = and i32 %25, %28
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %41

31:                                               ; preds = %22
  %32 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %2, align 8
  %33 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = call i32 @ioapic_in_kernel(i32 %34)
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %41, label %37

37:                                               ; preds = %31
  %38 = load i32, i32* @APIC_LVR_DIRECTED_EOI, align 4
  %39 = load i32, i32* %5, align 4
  %40 = or i32 %39, %38
  store i32 %40, i32* %5, align 4
  br label %41

41:                                               ; preds = %37, %31, %22, %15
  %42 = load %struct.kvm_lapic*, %struct.kvm_lapic** %3, align 8
  %43 = load i32, i32* @APIC_LVR, align 4
  %44 = load i32, i32* %5, align 4
  %45 = call i32 @kvm_lapic_set_reg(%struct.kvm_lapic* %42, i32 %43, i32 %44)
  br label %46

46:                                               ; preds = %41, %14
  ret void
}

declare dso_local i32 @lapic_in_kernel(%struct.kvm_vcpu*) #1

declare dso_local %struct.kvm_cpuid_entry2* @kvm_find_cpuid_entry(i32, i32, i32) #1

declare dso_local i32 @ioapic_in_kernel(i32) #1

declare dso_local i32 @kvm_lapic_set_reg(%struct.kvm_lapic*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
