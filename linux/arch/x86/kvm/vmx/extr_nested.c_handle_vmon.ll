; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/kvm/vmx/extr_nested.c_handle_vmon.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/kvm/vmx/extr_nested.c_handle_vmon.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvm_vcpu = type { i32 }
%struct.vcpu_vmx = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i64 }

@FEATURE_CONTROL_LOCKED = common dso_local global i32 0, align 4
@FEATURE_CONTROL_VMXON_ENABLED_OUTSIDE_SMX = common dso_local global i32 0, align 4
@X86_CR4_VMXE = common dso_local global i32 0, align 4
@UD_VECTOR = common dso_local global i32 0, align 4
@VMXERR_VMXON_IN_VMX_ROOT_OPERATION = common dso_local global i32 0, align 4
@VMCS12_REVISION = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.kvm_vcpu*)* @handle_vmon to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @handle_vmon(%struct.kvm_vcpu* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.kvm_vcpu*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca %struct.vcpu_vmx*, align 8
  %8 = alloca i32, align 4
  store %struct.kvm_vcpu* %0, %struct.kvm_vcpu** %3, align 8
  %9 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %10 = call %struct.vcpu_vmx* @to_vmx(%struct.kvm_vcpu* %9)
  store %struct.vcpu_vmx* %10, %struct.vcpu_vmx** %7, align 8
  %11 = load i32, i32* @FEATURE_CONTROL_LOCKED, align 4
  %12 = load i32, i32* @FEATURE_CONTROL_VMXON_ENABLED_OUTSIDE_SMX, align 4
  %13 = or i32 %11, %12
  store i32 %13, i32* %8, align 4
  %14 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %15 = load i32, i32* @X86_CR4_VMXE, align 4
  %16 = call i32 @kvm_read_cr4_bits(%struct.kvm_vcpu* %14, i32 %15)
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %22, label %18

18:                                               ; preds = %1
  %19 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %20 = load i32, i32* @UD_VECTOR, align 4
  %21 = call i32 @kvm_queue_exception(%struct.kvm_vcpu* %19, i32 %20)
  store i32 1, i32* %2, align 4
  br label %91

22:                                               ; preds = %1
  %23 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %24 = call i64 @vmx_get_cpl(%struct.kvm_vcpu* %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %29

26:                                               ; preds = %22
  %27 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %28 = call i32 @kvm_inject_gp(%struct.kvm_vcpu* %27, i32 0)
  store i32 1, i32* %2, align 4
  br label %91

29:                                               ; preds = %22
  %30 = load %struct.vcpu_vmx*, %struct.vcpu_vmx** %7, align 8
  %31 = getelementptr inbounds %struct.vcpu_vmx, %struct.vcpu_vmx* %30, i32 0, i32 1
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 1
  %33 = load i64, i64* %32, align 8
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %39

35:                                               ; preds = %29
  %36 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %37 = load i32, i32* @VMXERR_VMXON_IN_VMX_ROOT_OPERATION, align 4
  %38 = call i32 @nested_vmx_failValid(%struct.kvm_vcpu* %36, i32 %37)
  store i32 %38, i32* %2, align 4
  br label %91

39:                                               ; preds = %29
  %40 = load %struct.vcpu_vmx*, %struct.vcpu_vmx** %7, align 8
  %41 = getelementptr inbounds %struct.vcpu_vmx, %struct.vcpu_vmx* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = load i32, i32* %8, align 4
  %44 = and i32 %42, %43
  %45 = load i32, i32* %8, align 4
  %46 = icmp ne i32 %44, %45
  br i1 %46, label %47, label %50

47:                                               ; preds = %39
  %48 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %49 = call i32 @kvm_inject_gp(%struct.kvm_vcpu* %48, i32 0)
  store i32 1, i32* %2, align 4
  br label %91

50:                                               ; preds = %39
  %51 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %52 = call i64 @nested_vmx_get_vmptr(%struct.kvm_vcpu* %51, i32* %5)
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %55

54:                                               ; preds = %50
  store i32 1, i32* %2, align 4
  br label %91

55:                                               ; preds = %50
  %56 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %57 = load i32, i32* %5, align 4
  %58 = call i32 @page_address_valid(%struct.kvm_vcpu* %56, i32 %57)
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %63, label %60

60:                                               ; preds = %55
  %61 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %62 = call i32 @nested_vmx_failInvalid(%struct.kvm_vcpu* %61)
  store i32 %62, i32* %2, align 4
  br label %91

63:                                               ; preds = %55
  %64 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %65 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = load i32, i32* %5, align 4
  %68 = call i64 @kvm_read_guest(i32 %66, i32 %67, i64* %6, i32 8)
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %74, label %70

70:                                               ; preds = %63
  %71 = load i64, i64* %6, align 8
  %72 = load i64, i64* @VMCS12_REVISION, align 8
  %73 = icmp ne i64 %71, %72
  br i1 %73, label %74, label %77

74:                                               ; preds = %70, %63
  %75 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %76 = call i32 @nested_vmx_failInvalid(%struct.kvm_vcpu* %75)
  store i32 %76, i32* %2, align 4
  br label %91

77:                                               ; preds = %70
  %78 = load i32, i32* %5, align 4
  %79 = load %struct.vcpu_vmx*, %struct.vcpu_vmx** %7, align 8
  %80 = getelementptr inbounds %struct.vcpu_vmx, %struct.vcpu_vmx* %79, i32 0, i32 1
  %81 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %80, i32 0, i32 0
  store i32 %78, i32* %81, align 8
  %82 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %83 = call i32 @enter_vmx_operation(%struct.kvm_vcpu* %82)
  store i32 %83, i32* %4, align 4
  %84 = load i32, i32* %4, align 4
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %86, label %88

86:                                               ; preds = %77
  %87 = load i32, i32* %4, align 4
  store i32 %87, i32* %2, align 4
  br label %91

88:                                               ; preds = %77
  %89 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %90 = call i32 @nested_vmx_succeed(%struct.kvm_vcpu* %89)
  store i32 %90, i32* %2, align 4
  br label %91

91:                                               ; preds = %88, %86, %74, %60, %54, %47, %35, %26, %18
  %92 = load i32, i32* %2, align 4
  ret i32 %92
}

declare dso_local %struct.vcpu_vmx* @to_vmx(%struct.kvm_vcpu*) #1

declare dso_local i32 @kvm_read_cr4_bits(%struct.kvm_vcpu*, i32) #1

declare dso_local i32 @kvm_queue_exception(%struct.kvm_vcpu*, i32) #1

declare dso_local i64 @vmx_get_cpl(%struct.kvm_vcpu*) #1

declare dso_local i32 @kvm_inject_gp(%struct.kvm_vcpu*, i32) #1

declare dso_local i32 @nested_vmx_failValid(%struct.kvm_vcpu*, i32) #1

declare dso_local i64 @nested_vmx_get_vmptr(%struct.kvm_vcpu*, i32*) #1

declare dso_local i32 @page_address_valid(%struct.kvm_vcpu*, i32) #1

declare dso_local i32 @nested_vmx_failInvalid(%struct.kvm_vcpu*) #1

declare dso_local i64 @kvm_read_guest(i32, i32, i64*, i32) #1

declare dso_local i32 @enter_vmx_operation(%struct.kvm_vcpu*) #1

declare dso_local i32 @nested_vmx_succeed(%struct.kvm_vcpu*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
