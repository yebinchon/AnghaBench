; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/kvm/vmx/extr_nested.c_nested_vmx_prepare_msr_bitmap.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/kvm/vmx/extr_nested.c_nested_vmx_prepare_msr_bitmap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvm_vcpu = type { i32 }
%struct.vmcs12 = type { i32 }
%struct.kvm_host_map = type { i64 }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.kvm_host_map, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64* }

@CPU_BASED_USE_MSR_BITMAPS = common dso_local global i32 0, align 4
@BITS_PER_LONG = common dso_local global i32 0, align 4
@APIC_TASKPRI = common dso_local global i32 0, align 4
@MSR_TYPE_R = common dso_local global i32 0, align 4
@MSR_TYPE_W = common dso_local global i32 0, align 4
@APIC_EOI = common dso_local global i32 0, align 4
@APIC_SELF_IPI = common dso_local global i32 0, align 4
@MSR_FS_BASE = common dso_local global i32 0, align 4
@MSR_TYPE_RW = common dso_local global i32 0, align 4
@MSR_GS_BASE = common dso_local global i32 0, align 4
@MSR_KERNEL_GS_BASE = common dso_local global i32 0, align 4
@MSR_IA32_SPEC_CTRL = common dso_local global i32 0, align 4
@MSR_IA32_PRED_CMD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.kvm_vcpu*, %struct.vmcs12*)* @nested_vmx_prepare_msr_bitmap to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nested_vmx_prepare_msr_bitmap(%struct.kvm_vcpu* %0, %struct.vmcs12* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.kvm_vcpu*, align 8
  %5 = alloca %struct.vmcs12*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64*, align 8
  %8 = alloca i64*, align 8
  %9 = alloca %struct.kvm_host_map*, align 8
  %10 = alloca i32, align 4
  store %struct.kvm_vcpu* %0, %struct.kvm_vcpu** %4, align 8
  store %struct.vmcs12* %1, %struct.vmcs12** %5, align 8
  %11 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %4, align 8
  %12 = call %struct.TYPE_6__* @to_vmx(%struct.kvm_vcpu* %11)
  %13 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %13, i32 0, i32 1
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 0
  %16 = load i64*, i64** %15, align 8
  store i64* %16, i64** %8, align 8
  %17 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %4, align 8
  %18 = call %struct.TYPE_6__* @to_vmx(%struct.kvm_vcpu* %17)
  %19 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %19, i32 0, i32 0
  store %struct.kvm_host_map* %20, %struct.kvm_host_map** %9, align 8
  %21 = call i32 (...) @cpu_has_vmx_msr_bitmap()
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %28

23:                                               ; preds = %2
  %24 = load %struct.vmcs12*, %struct.vmcs12** %5, align 8
  %25 = load i32, i32* @CPU_BASED_USE_MSR_BITMAPS, align 4
  %26 = call i32 @nested_cpu_has(%struct.vmcs12* %24, i32 %25)
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %29, label %28

28:                                               ; preds = %23, %2
  store i32 0, i32* %3, align 4
  br label %147

29:                                               ; preds = %23
  %30 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %4, align 8
  %31 = load %struct.vmcs12*, %struct.vmcs12** %5, align 8
  %32 = getelementptr inbounds %struct.vmcs12, %struct.vmcs12* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @gpa_to_gfn(i32 %33)
  %35 = load %struct.kvm_host_map*, %struct.kvm_host_map** %9, align 8
  %36 = call i64 @kvm_vcpu_map(%struct.kvm_vcpu* %30, i32 %34, %struct.kvm_host_map* %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %39

38:                                               ; preds = %29
  store i32 0, i32* %3, align 4
  br label %147

39:                                               ; preds = %29
  %40 = load %struct.kvm_host_map*, %struct.kvm_host_map** %9, align 8
  %41 = getelementptr inbounds %struct.kvm_host_map, %struct.kvm_host_map* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = inttoptr i64 %42 to i64*
  store i64* %43, i64** %7, align 8
  %44 = load i64*, i64** %8, align 8
  %45 = call i32 @enable_x2apic_msr_intercepts(i64* %44)
  %46 = load %struct.vmcs12*, %struct.vmcs12** %5, align 8
  %47 = call i64 @nested_cpu_has_virt_x2apic_mode(%struct.vmcs12* %46)
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %101

49:                                               ; preds = %39
  %50 = load %struct.vmcs12*, %struct.vmcs12** %5, align 8
  %51 = call i64 @nested_cpu_has_apic_reg_virt(%struct.vmcs12* %50)
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %75

53:                                               ; preds = %49
  store i32 2048, i32* %6, align 4
  br label %54

54:                                               ; preds = %70, %53
  %55 = load i32, i32* %6, align 4
  %56 = icmp sle i32 %55, 2303
  br i1 %56, label %57, label %74

57:                                               ; preds = %54
  %58 = load i32, i32* %6, align 4
  %59 = load i32, i32* @BITS_PER_LONG, align 4
  %60 = sdiv i32 %58, %59
  store i32 %60, i32* %10, align 4
  %61 = load i64*, i64** %7, align 8
  %62 = load i32, i32* %10, align 4
  %63 = zext i32 %62 to i64
  %64 = getelementptr inbounds i64, i64* %61, i64 %63
  %65 = load i64, i64* %64, align 8
  %66 = load i64*, i64** %8, align 8
  %67 = load i32, i32* %10, align 4
  %68 = zext i32 %67 to i64
  %69 = getelementptr inbounds i64, i64* %66, i64 %68
  store i64 %65, i64* %69, align 8
  br label %70

70:                                               ; preds = %57
  %71 = load i32, i32* @BITS_PER_LONG, align 4
  %72 = load i32, i32* %6, align 4
  %73 = add nsw i32 %72, %71
  store i32 %73, i32* %6, align 4
  br label %54

74:                                               ; preds = %54
  br label %75

75:                                               ; preds = %74, %49
  %76 = load i64*, i64** %7, align 8
  %77 = load i64*, i64** %8, align 8
  %78 = load i32, i32* @APIC_TASKPRI, align 4
  %79 = call i32 @X2APIC_MSR(i32 %78)
  %80 = load i32, i32* @MSR_TYPE_R, align 4
  %81 = load i32, i32* @MSR_TYPE_W, align 4
  %82 = or i32 %80, %81
  %83 = call i32 @nested_vmx_disable_intercept_for_msr(i64* %76, i64* %77, i32 %79, i32 %82)
  %84 = load %struct.vmcs12*, %struct.vmcs12** %5, align 8
  %85 = call i64 @nested_cpu_has_vid(%struct.vmcs12* %84)
  %86 = icmp ne i64 %85, 0
  br i1 %86, label %87, label %100

87:                                               ; preds = %75
  %88 = load i64*, i64** %7, align 8
  %89 = load i64*, i64** %8, align 8
  %90 = load i32, i32* @APIC_EOI, align 4
  %91 = call i32 @X2APIC_MSR(i32 %90)
  %92 = load i32, i32* @MSR_TYPE_W, align 4
  %93 = call i32 @nested_vmx_disable_intercept_for_msr(i64* %88, i64* %89, i32 %91, i32 %92)
  %94 = load i64*, i64** %7, align 8
  %95 = load i64*, i64** %8, align 8
  %96 = load i32, i32* @APIC_SELF_IPI, align 4
  %97 = call i32 @X2APIC_MSR(i32 %96)
  %98 = load i32, i32* @MSR_TYPE_W, align 4
  %99 = call i32 @nested_vmx_disable_intercept_for_msr(i64* %94, i64* %95, i32 %97, i32 %98)
  br label %100

100:                                              ; preds = %87, %75
  br label %101

101:                                              ; preds = %100, %39
  %102 = load i64*, i64** %7, align 8
  %103 = load i64*, i64** %8, align 8
  %104 = load i32, i32* @MSR_FS_BASE, align 4
  %105 = load i32, i32* @MSR_TYPE_RW, align 4
  %106 = call i32 @nested_vmx_disable_intercept_for_msr(i64* %102, i64* %103, i32 %104, i32 %105)
  %107 = load i64*, i64** %7, align 8
  %108 = load i64*, i64** %8, align 8
  %109 = load i32, i32* @MSR_GS_BASE, align 4
  %110 = load i32, i32* @MSR_TYPE_RW, align 4
  %111 = call i32 @nested_vmx_disable_intercept_for_msr(i64* %107, i64* %108, i32 %109, i32 %110)
  %112 = load i64*, i64** %7, align 8
  %113 = load i64*, i64** %8, align 8
  %114 = load i32, i32* @MSR_KERNEL_GS_BASE, align 4
  %115 = load i32, i32* @MSR_TYPE_RW, align 4
  %116 = call i32 @nested_vmx_disable_intercept_for_msr(i64* %112, i64* %113, i32 %114, i32 %115)
  %117 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %4, align 8
  %118 = load i32, i32* @MSR_IA32_SPEC_CTRL, align 4
  %119 = call i32 @msr_write_intercepted_l01(%struct.kvm_vcpu* %117, i32 %118)
  %120 = icmp ne i32 %119, 0
  br i1 %120, label %129, label %121

121:                                              ; preds = %101
  %122 = load i64*, i64** %7, align 8
  %123 = load i64*, i64** %8, align 8
  %124 = load i32, i32* @MSR_IA32_SPEC_CTRL, align 4
  %125 = load i32, i32* @MSR_TYPE_R, align 4
  %126 = load i32, i32* @MSR_TYPE_W, align 4
  %127 = or i32 %125, %126
  %128 = call i32 @nested_vmx_disable_intercept_for_msr(i64* %122, i64* %123, i32 %124, i32 %127)
  br label %129

129:                                              ; preds = %121, %101
  %130 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %4, align 8
  %131 = load i32, i32* @MSR_IA32_PRED_CMD, align 4
  %132 = call i32 @msr_write_intercepted_l01(%struct.kvm_vcpu* %130, i32 %131)
  %133 = icmp ne i32 %132, 0
  br i1 %133, label %140, label %134

134:                                              ; preds = %129
  %135 = load i64*, i64** %7, align 8
  %136 = load i64*, i64** %8, align 8
  %137 = load i32, i32* @MSR_IA32_PRED_CMD, align 4
  %138 = load i32, i32* @MSR_TYPE_W, align 4
  %139 = call i32 @nested_vmx_disable_intercept_for_msr(i64* %135, i64* %136, i32 %137, i32 %138)
  br label %140

140:                                              ; preds = %134, %129
  %141 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %4, align 8
  %142 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %4, align 8
  %143 = call %struct.TYPE_6__* @to_vmx(%struct.kvm_vcpu* %142)
  %144 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %143, i32 0, i32 0
  %145 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %144, i32 0, i32 0
  %146 = call i32 @kvm_vcpu_unmap(%struct.kvm_vcpu* %141, %struct.kvm_host_map* %145, i32 0)
  store i32 1, i32* %3, align 4
  br label %147

147:                                              ; preds = %140, %38, %28
  %148 = load i32, i32* %3, align 4
  ret i32 %148
}

declare dso_local %struct.TYPE_6__* @to_vmx(%struct.kvm_vcpu*) #1

declare dso_local i32 @cpu_has_vmx_msr_bitmap(...) #1

declare dso_local i32 @nested_cpu_has(%struct.vmcs12*, i32) #1

declare dso_local i64 @kvm_vcpu_map(%struct.kvm_vcpu*, i32, %struct.kvm_host_map*) #1

declare dso_local i32 @gpa_to_gfn(i32) #1

declare dso_local i32 @enable_x2apic_msr_intercepts(i64*) #1

declare dso_local i64 @nested_cpu_has_virt_x2apic_mode(%struct.vmcs12*) #1

declare dso_local i64 @nested_cpu_has_apic_reg_virt(%struct.vmcs12*) #1

declare dso_local i32 @nested_vmx_disable_intercept_for_msr(i64*, i64*, i32, i32) #1

declare dso_local i32 @X2APIC_MSR(i32) #1

declare dso_local i64 @nested_cpu_has_vid(%struct.vmcs12*) #1

declare dso_local i32 @msr_write_intercepted_l01(%struct.kvm_vcpu*, i32) #1

declare dso_local i32 @kvm_vcpu_unmap(%struct.kvm_vcpu*, %struct.kvm_host_map*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
