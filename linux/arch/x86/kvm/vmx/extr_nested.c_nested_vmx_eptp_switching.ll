; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/kvm/vmx/extr_nested.c_nested_vmx_eptp_switching.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/kvm/vmx/extr_nested.c_nested_vmx_eptp_switching.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvm_vcpu = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.kvm_mmu* }
%struct.kvm_mmu = type { i32, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.vmcs12 = type { i32, i32 }

@VMFUNC_EPTP_ENTRIES = common dso_local global i32 0, align 4
@PAGE_SHIFT = common dso_local global i32 0, align 4
@VMX_EPTP_AD_ENABLE_BIT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.kvm_vcpu*, %struct.vmcs12*)* @nested_vmx_eptp_switching to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nested_vmx_eptp_switching(%struct.kvm_vcpu* %0, %struct.vmcs12* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.kvm_vcpu*, align 8
  %5 = alloca %struct.vmcs12*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.kvm_mmu*, align 8
  store %struct.kvm_vcpu* %0, %struct.kvm_vcpu** %4, align 8
  store %struct.vmcs12* %1, %struct.vmcs12** %5, align 8
  %10 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %4, align 8
  %11 = call i32 @kvm_rcx_read(%struct.kvm_vcpu* %10)
  store i32 %11, i32* %6, align 4
  %12 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %4, align 8
  %13 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %13, i32 0, i32 0
  %15 = load %struct.kvm_mmu*, %struct.kvm_mmu** %14, align 8
  store %struct.kvm_mmu* %15, %struct.kvm_mmu** %9, align 8
  %16 = load %struct.vmcs12*, %struct.vmcs12** %5, align 8
  %17 = call i32 @nested_cpu_has_eptp_switching(%struct.vmcs12* %16)
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %23

19:                                               ; preds = %2
  %20 = load %struct.vmcs12*, %struct.vmcs12** %5, align 8
  %21 = call i32 @nested_cpu_has_ept(%struct.vmcs12* %20)
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %24, label %23

23:                                               ; preds = %19, %2
  store i32 1, i32* %3, align 4
  br label %80

24:                                               ; preds = %19
  %25 = load i32, i32* %6, align 4
  %26 = load i32, i32* @VMFUNC_EPTP_ENTRIES, align 4
  %27 = icmp sge i32 %25, %26
  br i1 %27, label %28, label %29

28:                                               ; preds = %24
  store i32 1, i32* %3, align 4
  br label %80

29:                                               ; preds = %24
  %30 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %4, align 8
  %31 = load %struct.vmcs12*, %struct.vmcs12** %5, align 8
  %32 = getelementptr inbounds %struct.vmcs12, %struct.vmcs12* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = load i32, i32* @PAGE_SHIFT, align 4
  %35 = ashr i32 %33, %34
  %36 = load i32, i32* %6, align 4
  %37 = mul nsw i32 %36, 8
  %38 = call i64 @kvm_vcpu_read_guest_page(%struct.kvm_vcpu* %30, i32 %35, i32* %7, i32 %37, i32 8)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %41

40:                                               ; preds = %29
  store i32 1, i32* %3, align 4
  br label %80

41:                                               ; preds = %29
  %42 = load i32, i32* %7, align 4
  %43 = load i32, i32* @VMX_EPTP_AD_ENABLE_BIT, align 4
  %44 = and i32 %42, %43
  %45 = icmp ne i32 %44, 0
  %46 = xor i1 %45, true
  %47 = xor i1 %46, true
  %48 = zext i1 %47 to i32
  store i32 %48, i32* %8, align 4
  %49 = load %struct.vmcs12*, %struct.vmcs12** %5, align 8
  %50 = getelementptr inbounds %struct.vmcs12, %struct.vmcs12* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
  %52 = load i32, i32* %7, align 4
  %53 = icmp ne i32 %51, %52
  br i1 %53, label %54, label %79

54:                                               ; preds = %41
  %55 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %4, align 8
  %56 = load i32, i32* %7, align 4
  %57 = call i32 @valid_ept_address(%struct.kvm_vcpu* %55, i32 %56)
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %60, label %59

59:                                               ; preds = %54
  store i32 1, i32* %3, align 4
  br label %80

60:                                               ; preds = %54
  %61 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %4, align 8
  %62 = call i32 @kvm_mmu_unload(%struct.kvm_vcpu* %61)
  %63 = load i32, i32* %8, align 4
  %64 = load %struct.kvm_mmu*, %struct.kvm_mmu** %9, align 8
  %65 = getelementptr inbounds %struct.kvm_mmu, %struct.kvm_mmu* %64, i32 0, i32 0
  store i32 %63, i32* %65, align 4
  %66 = load i32, i32* %8, align 4
  %67 = icmp ne i32 %66, 0
  %68 = xor i1 %67, true
  %69 = zext i1 %68 to i32
  %70 = load %struct.kvm_mmu*, %struct.kvm_mmu** %9, align 8
  %71 = getelementptr inbounds %struct.kvm_mmu, %struct.kvm_mmu* %70, i32 0, i32 1
  %72 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %71, i32 0, i32 0
  %73 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %72, i32 0, i32 0
  store i32 %69, i32* %73, align 4
  %74 = load i32, i32* %7, align 4
  %75 = load %struct.vmcs12*, %struct.vmcs12** %5, align 8
  %76 = getelementptr inbounds %struct.vmcs12, %struct.vmcs12* %75, i32 0, i32 1
  store i32 %74, i32* %76, align 4
  %77 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %4, align 8
  %78 = call i32 @kvm_mmu_reload(%struct.kvm_vcpu* %77)
  br label %79

79:                                               ; preds = %60, %41
  store i32 0, i32* %3, align 4
  br label %80

80:                                               ; preds = %79, %59, %40, %28, %23
  %81 = load i32, i32* %3, align 4
  ret i32 %81
}

declare dso_local i32 @kvm_rcx_read(%struct.kvm_vcpu*) #1

declare dso_local i32 @nested_cpu_has_eptp_switching(%struct.vmcs12*) #1

declare dso_local i32 @nested_cpu_has_ept(%struct.vmcs12*) #1

declare dso_local i64 @kvm_vcpu_read_guest_page(%struct.kvm_vcpu*, i32, i32*, i32, i32) #1

declare dso_local i32 @valid_ept_address(%struct.kvm_vcpu*, i32) #1

declare dso_local i32 @kvm_mmu_unload(%struct.kvm_vcpu*) #1

declare dso_local i32 @kvm_mmu_reload(%struct.kvm_vcpu*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
