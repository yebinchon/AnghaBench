; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/kvm/vmx/extr_nested.c_nested_vmx_inject_exception_vmexit.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/kvm/vmx/extr_nested.c_nested_vmx_inject_exception_vmexit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvm_vcpu = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i32, i64 }
%struct.vmcs12 = type { i32, i32 }

@INTR_INFO_VALID_MASK = common dso_local global i32 0, align 4
@INTR_INFO_DELIVER_CODE_MASK = common dso_local global i32 0, align 4
@INTR_TYPE_SOFT_EXCEPTION = common dso_local global i32 0, align 4
@INTR_TYPE_HARD_EXCEPTION = common dso_local global i32 0, align 4
@VECTORING_INFO_VALID_MASK = common dso_local global i32 0, align 4
@INTR_INFO_UNBLOCK_NMI = common dso_local global i32 0, align 4
@EXIT_REASON_EXCEPTION_NMI = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.kvm_vcpu*, i64)* @nested_vmx_inject_exception_vmexit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nested_vmx_inject_exception_vmexit(%struct.kvm_vcpu* %0, i64 %1) #0 {
  %3 = alloca %struct.kvm_vcpu*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.vmcs12*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.kvm_vcpu* %0, %struct.kvm_vcpu** %3, align 8
  store i64 %1, i64* %4, align 8
  %8 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %9 = call %struct.vmcs12* @get_vmcs12(%struct.kvm_vcpu* %8)
  store %struct.vmcs12* %9, %struct.vmcs12** %5, align 8
  %10 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %11 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  store i32 %14, i32* %6, align 4
  %15 = load i32, i32* %6, align 4
  %16 = load i32, i32* @INTR_INFO_VALID_MASK, align 4
  %17 = or i32 %15, %16
  store i32 %17, i32* %7, align 4
  %18 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %19 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i32 0, i32 2
  %22 = load i64, i64* %21, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %35

24:                                               ; preds = %2
  %25 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %26 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = load %struct.vmcs12*, %struct.vmcs12** %5, align 8
  %31 = getelementptr inbounds %struct.vmcs12, %struct.vmcs12* %30, i32 0, i32 1
  store i32 %29, i32* %31, align 4
  %32 = load i32, i32* @INTR_INFO_DELIVER_CODE_MASK, align 4
  %33 = load i32, i32* %7, align 4
  %34 = or i32 %33, %32
  store i32 %34, i32* %7, align 4
  br label %35

35:                                               ; preds = %24, %2
  %36 = load i32, i32* %6, align 4
  %37 = call i64 @kvm_exception_is_soft(i32 %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %43

39:                                               ; preds = %35
  %40 = load i32, i32* @INTR_TYPE_SOFT_EXCEPTION, align 4
  %41 = load i32, i32* %7, align 4
  %42 = or i32 %41, %40
  store i32 %42, i32* %7, align 4
  br label %47

43:                                               ; preds = %35
  %44 = load i32, i32* @INTR_TYPE_HARD_EXCEPTION, align 4
  %45 = load i32, i32* %7, align 4
  %46 = or i32 %45, %44
  store i32 %46, i32* %7, align 4
  br label %47

47:                                               ; preds = %43, %39
  %48 = load %struct.vmcs12*, %struct.vmcs12** %5, align 8
  %49 = getelementptr inbounds %struct.vmcs12, %struct.vmcs12* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = load i32, i32* @VECTORING_INFO_VALID_MASK, align 4
  %52 = and i32 %50, %51
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %62, label %54

54:                                               ; preds = %47
  %55 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %56 = call i64 @vmx_get_nmi_mask(%struct.kvm_vcpu* %55)
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %62

58:                                               ; preds = %54
  %59 = load i32, i32* @INTR_INFO_UNBLOCK_NMI, align 4
  %60 = load i32, i32* %7, align 4
  %61 = or i32 %60, %59
  store i32 %61, i32* %7, align 4
  br label %62

62:                                               ; preds = %58, %54, %47
  %63 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %64 = load i32, i32* @EXIT_REASON_EXCEPTION_NMI, align 4
  %65 = load i32, i32* %7, align 4
  %66 = load i64, i64* %4, align 8
  %67 = call i32 @nested_vmx_vmexit(%struct.kvm_vcpu* %63, i32 %64, i32 %65, i64 %66)
  ret void
}

declare dso_local %struct.vmcs12* @get_vmcs12(%struct.kvm_vcpu*) #1

declare dso_local i64 @kvm_exception_is_soft(i32) #1

declare dso_local i64 @vmx_get_nmi_mask(%struct.kvm_vcpu*) #1

declare dso_local i32 @nested_vmx_vmexit(%struct.kvm_vcpu*, i32, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
