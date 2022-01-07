; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/kvm/extr_x86.c_kvm_set_apic_base.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/kvm/extr_x86.c_kvm_set_apic_base.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvm_vcpu = type { i32 }
%struct.msr_data = type { i32, i32 }

@X86_FEATURE_X2APIC = common dso_local global i32 0, align 4
@X2APIC_ENABLE = common dso_local global i64 0, align 8
@LAPIC_MODE_INVALID = common dso_local global i32 0, align 4
@LAPIC_MODE_X2APIC = common dso_local global i32 0, align 4
@LAPIC_MODE_XAPIC = common dso_local global i32 0, align 4
@LAPIC_MODE_DISABLED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @kvm_set_apic_base(%struct.kvm_vcpu* %0, %struct.msr_data* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.kvm_vcpu*, align 8
  %5 = alloca %struct.msr_data*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.kvm_vcpu* %0, %struct.kvm_vcpu** %4, align 8
  store %struct.msr_data* %1, %struct.msr_data** %5, align 8
  %9 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %4, align 8
  %10 = call i32 @kvm_get_apic_mode(%struct.kvm_vcpu* %9)
  store i32 %10, i32* %6, align 4
  %11 = load %struct.msr_data*, %struct.msr_data** %5, align 8
  %12 = getelementptr inbounds %struct.msr_data, %struct.msr_data* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = call i32 @kvm_apic_mode(i32 %13)
  store i32 %14, i32* %7, align 4
  %15 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %4, align 8
  %16 = call i64 @cpuid_maxphyaddr(%struct.kvm_vcpu* %15)
  %17 = shl i64 -1, %16
  %18 = or i64 %17, 767
  %19 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %4, align 8
  %20 = load i32, i32* @X86_FEATURE_X2APIC, align 4
  %21 = call i64 @guest_cpuid_has(%struct.kvm_vcpu* %19, i32 %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %2
  br label %26

24:                                               ; preds = %2
  %25 = load i64, i64* @X2APIC_ENABLE, align 8
  br label %26

26:                                               ; preds = %24, %23
  %27 = phi i64 [ 0, %23 ], [ %25, %24 ]
  %28 = or i64 %18, %27
  %29 = trunc i64 %28 to i32
  store i32 %29, i32* %8, align 4
  %30 = load %struct.msr_data*, %struct.msr_data** %5, align 8
  %31 = getelementptr inbounds %struct.msr_data, %struct.msr_data* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = load i32, i32* %8, align 4
  %34 = and i32 %32, %33
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %40, label %36

36:                                               ; preds = %26
  %37 = load i32, i32* %7, align 4
  %38 = load i32, i32* @LAPIC_MODE_INVALID, align 4
  %39 = icmp eq i32 %37, %38
  br i1 %39, label %40, label %41

40:                                               ; preds = %36, %26
  store i32 1, i32* %3, align 4
  br label %71

41:                                               ; preds = %36
  %42 = load %struct.msr_data*, %struct.msr_data** %5, align 8
  %43 = getelementptr inbounds %struct.msr_data, %struct.msr_data* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %65, label %46

46:                                               ; preds = %41
  %47 = load i32, i32* %6, align 4
  %48 = load i32, i32* @LAPIC_MODE_X2APIC, align 4
  %49 = icmp eq i32 %47, %48
  br i1 %49, label %50, label %55

50:                                               ; preds = %46
  %51 = load i32, i32* %7, align 4
  %52 = load i32, i32* @LAPIC_MODE_XAPIC, align 4
  %53 = icmp eq i32 %51, %52
  br i1 %53, label %54, label %55

54:                                               ; preds = %50
  store i32 1, i32* %3, align 4
  br label %71

55:                                               ; preds = %50, %46
  %56 = load i32, i32* %6, align 4
  %57 = load i32, i32* @LAPIC_MODE_DISABLED, align 4
  %58 = icmp eq i32 %56, %57
  br i1 %58, label %59, label %64

59:                                               ; preds = %55
  %60 = load i32, i32* %7, align 4
  %61 = load i32, i32* @LAPIC_MODE_X2APIC, align 4
  %62 = icmp eq i32 %60, %61
  br i1 %62, label %63, label %64

63:                                               ; preds = %59
  store i32 1, i32* %3, align 4
  br label %71

64:                                               ; preds = %59, %55
  br label %65

65:                                               ; preds = %64, %41
  %66 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %4, align 8
  %67 = load %struct.msr_data*, %struct.msr_data** %5, align 8
  %68 = getelementptr inbounds %struct.msr_data, %struct.msr_data* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = call i32 @kvm_lapic_set_base(%struct.kvm_vcpu* %66, i32 %69)
  store i32 0, i32* %3, align 4
  br label %71

71:                                               ; preds = %65, %63, %54, %40
  %72 = load i32, i32* %3, align 4
  ret i32 %72
}

declare dso_local i32 @kvm_get_apic_mode(%struct.kvm_vcpu*) #1

declare dso_local i32 @kvm_apic_mode(i32) #1

declare dso_local i64 @cpuid_maxphyaddr(%struct.kvm_vcpu*) #1

declare dso_local i64 @guest_cpuid_has(%struct.kvm_vcpu*, i32) #1

declare dso_local i32 @kvm_lapic_set_base(%struct.kvm_vcpu*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
