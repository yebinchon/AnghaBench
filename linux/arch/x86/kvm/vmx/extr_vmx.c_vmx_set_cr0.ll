; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/kvm/vmx/extr_vmx.c_vmx_set_cr0.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/kvm/vmx/extr_vmx.c_vmx_set_cr0.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvm_vcpu = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i64 }
%struct.vcpu_vmx = type { i32, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64 }

@KVM_VM_CR0_ALWAYS_OFF = common dso_local global i64 0, align 8
@enable_unrestricted_guest = common dso_local global i64 0, align 8
@KVM_VM_CR0_ALWAYS_ON_UNRESTRICTED_GUEST = common dso_local global i64 0, align 8
@KVM_VM_CR0_ALWAYS_ON = common dso_local global i64 0, align 8
@X86_CR0_PE = common dso_local global i64 0, align 8
@enable_ept = common dso_local global i64 0, align 8
@CR0_READ_SHADOW = common dso_local global i32 0, align 4
@GUEST_CR0 = common dso_local global i32 0, align 4
@EFER_LME = common dso_local global i32 0, align 4
@X86_CR0_PG = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @vmx_set_cr0(%struct.kvm_vcpu* %0, i64 %1) #0 {
  %3 = alloca %struct.kvm_vcpu*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.vcpu_vmx*, align 8
  %6 = alloca i64, align 8
  store %struct.kvm_vcpu* %0, %struct.kvm_vcpu** %3, align 8
  store i64 %1, i64* %4, align 8
  %7 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %8 = call %struct.vcpu_vmx* @to_vmx(%struct.kvm_vcpu* %7)
  store %struct.vcpu_vmx* %8, %struct.vcpu_vmx** %5, align 8
  %9 = load i64, i64* %4, align 8
  %10 = load i64, i64* @KVM_VM_CR0_ALWAYS_OFF, align 8
  %11 = xor i64 %10, -1
  %12 = and i64 %9, %11
  store i64 %12, i64* %6, align 8
  %13 = load i64, i64* @enable_unrestricted_guest, align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %19

15:                                               ; preds = %2
  %16 = load i64, i64* @KVM_VM_CR0_ALWAYS_ON_UNRESTRICTED_GUEST, align 8
  %17 = load i64, i64* %6, align 8
  %18 = or i64 %17, %16
  store i64 %18, i64* %6, align 8
  br label %51

19:                                               ; preds = %2
  %20 = load i64, i64* @KVM_VM_CR0_ALWAYS_ON, align 8
  %21 = load i64, i64* %6, align 8
  %22 = or i64 %21, %20
  store i64 %22, i64* %6, align 8
  %23 = load %struct.vcpu_vmx*, %struct.vcpu_vmx** %5, align 8
  %24 = getelementptr inbounds %struct.vcpu_vmx, %struct.vcpu_vmx* %23, i32 0, i32 1
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %36

28:                                               ; preds = %19
  %29 = load i64, i64* %4, align 8
  %30 = load i64, i64* @X86_CR0_PE, align 8
  %31 = and i64 %29, %30
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %36

33:                                               ; preds = %28
  %34 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %35 = call i32 @enter_pmode(%struct.kvm_vcpu* %34)
  br label %36

36:                                               ; preds = %33, %28, %19
  %37 = load %struct.vcpu_vmx*, %struct.vcpu_vmx** %5, align 8
  %38 = getelementptr inbounds %struct.vcpu_vmx, %struct.vcpu_vmx* %37, i32 0, i32 1
  %39 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %50, label %42

42:                                               ; preds = %36
  %43 = load i64, i64* %4, align 8
  %44 = load i64, i64* @X86_CR0_PE, align 8
  %45 = and i64 %43, %44
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %50, label %47

47:                                               ; preds = %42
  %48 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %49 = call i32 @enter_rmode(%struct.kvm_vcpu* %48)
  br label %50

50:                                               ; preds = %47, %42, %36
  br label %51

51:                                               ; preds = %50, %15
  %52 = load i64, i64* @enable_ept, align 8
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %61

54:                                               ; preds = %51
  %55 = load i64, i64* @enable_unrestricted_guest, align 8
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %61, label %57

57:                                               ; preds = %54
  %58 = load i64, i64* %4, align 8
  %59 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %60 = call i32 @ept_update_paging_mode_cr0(i64* %6, i64 %58, %struct.kvm_vcpu* %59)
  br label %61

61:                                               ; preds = %57, %54, %51
  %62 = load i32, i32* @CR0_READ_SHADOW, align 4
  %63 = load i64, i64* %4, align 8
  %64 = call i32 @vmcs_writel(i32 %62, i64 %63)
  %65 = load i32, i32* @GUEST_CR0, align 4
  %66 = load i64, i64* %6, align 8
  %67 = call i32 @vmcs_writel(i32 %65, i64 %66)
  %68 = load i64, i64* %4, align 8
  %69 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %70 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %69, i32 0, i32 0
  %71 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %70, i32 0, i32 1
  store i64 %68, i64* %71, align 8
  %72 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %73 = call i32 @emulation_required(%struct.kvm_vcpu* %72)
  %74 = load %struct.vcpu_vmx*, %struct.vcpu_vmx** %5, align 8
  %75 = getelementptr inbounds %struct.vcpu_vmx, %struct.vcpu_vmx* %74, i32 0, i32 0
  store i32 %73, i32* %75, align 8
  ret void
}

declare dso_local %struct.vcpu_vmx* @to_vmx(%struct.kvm_vcpu*) #1

declare dso_local i32 @enter_pmode(%struct.kvm_vcpu*) #1

declare dso_local i32 @enter_rmode(%struct.kvm_vcpu*) #1

declare dso_local i32 @ept_update_paging_mode_cr0(i64*, i64, %struct.kvm_vcpu*) #1

declare dso_local i32 @vmcs_writel(i32, i64) #1

declare dso_local i32 @emulation_required(%struct.kvm_vcpu*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
