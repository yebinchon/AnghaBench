; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/kvm/vmx/extr_vmx.c_vmx_set_virtual_apic_mode.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/kvm/vmx/extr_vmx.c_vmx_set_virtual_apic_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvm_vcpu = type { i32 }
%struct.vcpu_vmx = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@flexpriority_enabled = common dso_local global i64 0, align 8
@SECONDARY_EXEC_VIRTUALIZE_APIC_ACCESSES = common dso_local global i32 0, align 4
@SECONDARY_EXEC_VIRTUALIZE_X2APIC_MODE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"Invalid local APIC state\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @vmx_set_virtual_apic_mode(%struct.kvm_vcpu* %0) #0 {
  %2 = alloca %struct.kvm_vcpu*, align 8
  %3 = alloca %struct.vcpu_vmx*, align 8
  %4 = alloca i32, align 4
  store %struct.kvm_vcpu* %0, %struct.kvm_vcpu** %2, align 8
  %5 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %2, align 8
  %6 = call %struct.vcpu_vmx* @to_vmx(%struct.kvm_vcpu* %5)
  store %struct.vcpu_vmx* %6, %struct.vcpu_vmx** %3, align 8
  %7 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %2, align 8
  %8 = call i32 @lapic_in_kernel(%struct.kvm_vcpu* %7)
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %11, label %10

10:                                               ; preds = %1
  br label %64

11:                                               ; preds = %1
  %12 = load i64, i64* @flexpriority_enabled, align 8
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %18, label %14

14:                                               ; preds = %11
  %15 = call i64 (...) @cpu_has_vmx_virtualize_x2apic_mode()
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %18, label %17

17:                                               ; preds = %14
  br label %64

18:                                               ; preds = %14, %11
  %19 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %2, align 8
  %20 = call i64 @is_guest_mode(%struct.kvm_vcpu* %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %26

22:                                               ; preds = %18
  %23 = load %struct.vcpu_vmx*, %struct.vcpu_vmx** %3, align 8
  %24 = getelementptr inbounds %struct.vcpu_vmx, %struct.vcpu_vmx* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 0
  store i32 1, i32* %25, align 4
  br label %64

26:                                               ; preds = %18
  %27 = load %struct.vcpu_vmx*, %struct.vcpu_vmx** %3, align 8
  %28 = call i32 @secondary_exec_controls_get(%struct.vcpu_vmx* %27)
  store i32 %28, i32* %4, align 4
  %29 = load i32, i32* @SECONDARY_EXEC_VIRTUALIZE_APIC_ACCESSES, align 4
  %30 = load i32, i32* @SECONDARY_EXEC_VIRTUALIZE_X2APIC_MODE, align 4
  %31 = or i32 %29, %30
  %32 = xor i32 %31, -1
  %33 = load i32, i32* %4, align 4
  %34 = and i32 %33, %32
  store i32 %34, i32* %4, align 4
  %35 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %2, align 8
  %36 = call i32 @kvm_get_apic_mode(%struct.kvm_vcpu* %35)
  switch i32 %36, label %58 [
    i32 130, label %37
    i32 131, label %39
    i32 128, label %40
    i32 129, label %50
  ]

37:                                               ; preds = %26
  %38 = call i32 @WARN_ONCE(i32 1, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  br label %39

39:                                               ; preds = %26, %37
  br label %58

40:                                               ; preds = %26
  %41 = load i64, i64* @flexpriority_enabled, align 8
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %49

43:                                               ; preds = %40
  %44 = load i32, i32* @SECONDARY_EXEC_VIRTUALIZE_APIC_ACCESSES, align 4
  %45 = load i32, i32* %4, align 4
  %46 = or i32 %45, %44
  store i32 %46, i32* %4, align 4
  %47 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %2, align 8
  %48 = call i32 @vmx_flush_tlb(%struct.kvm_vcpu* %47, i32 1)
  br label %49

49:                                               ; preds = %43, %40
  br label %58

50:                                               ; preds = %26
  %51 = call i64 (...) @cpu_has_vmx_virtualize_x2apic_mode()
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %57

53:                                               ; preds = %50
  %54 = load i32, i32* @SECONDARY_EXEC_VIRTUALIZE_X2APIC_MODE, align 4
  %55 = load i32, i32* %4, align 4
  %56 = or i32 %55, %54
  store i32 %56, i32* %4, align 4
  br label %57

57:                                               ; preds = %53, %50
  br label %58

58:                                               ; preds = %26, %57, %49, %39
  %59 = load %struct.vcpu_vmx*, %struct.vcpu_vmx** %3, align 8
  %60 = load i32, i32* %4, align 4
  %61 = call i32 @secondary_exec_controls_set(%struct.vcpu_vmx* %59, i32 %60)
  %62 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %2, align 8
  %63 = call i32 @vmx_update_msr_bitmap(%struct.kvm_vcpu* %62)
  br label %64

64:                                               ; preds = %58, %22, %17, %10
  ret void
}

declare dso_local %struct.vcpu_vmx* @to_vmx(%struct.kvm_vcpu*) #1

declare dso_local i32 @lapic_in_kernel(%struct.kvm_vcpu*) #1

declare dso_local i64 @cpu_has_vmx_virtualize_x2apic_mode(...) #1

declare dso_local i64 @is_guest_mode(%struct.kvm_vcpu*) #1

declare dso_local i32 @secondary_exec_controls_get(%struct.vcpu_vmx*) #1

declare dso_local i32 @kvm_get_apic_mode(%struct.kvm_vcpu*) #1

declare dso_local i32 @WARN_ONCE(i32, i8*) #1

declare dso_local i32 @vmx_flush_tlb(%struct.kvm_vcpu*, i32) #1

declare dso_local i32 @secondary_exec_controls_set(%struct.vcpu_vmx*, i32) #1

declare dso_local i32 @vmx_update_msr_bitmap(%struct.kvm_vcpu*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
