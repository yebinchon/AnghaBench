; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/kvm/vmx/extr_nested.c_nested_vmx_check_apicv_controls.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/kvm/vmx/extr_nested.c_nested_vmx_check_apicv_controls.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvm_vcpu = type { i32 }
%struct.vmcs12 = type { i32, i32 }

@SECONDARY_EXEC_VIRTUALIZE_APIC_ACCESSES = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@CPU_BASED_TPR_SHADOW = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.kvm_vcpu*, %struct.vmcs12*)* @nested_vmx_check_apicv_controls to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nested_vmx_check_apicv_controls(%struct.kvm_vcpu* %0, %struct.vmcs12* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.kvm_vcpu*, align 8
  %5 = alloca %struct.vmcs12*, align 8
  store %struct.kvm_vcpu* %0, %struct.kvm_vcpu** %4, align 8
  store %struct.vmcs12* %1, %struct.vmcs12** %5, align 8
  %6 = load %struct.vmcs12*, %struct.vmcs12** %5, align 8
  %7 = call i64 @nested_cpu_has_virt_x2apic_mode(%struct.vmcs12* %6)
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %22, label %9

9:                                                ; preds = %2
  %10 = load %struct.vmcs12*, %struct.vmcs12** %5, align 8
  %11 = call i32 @nested_cpu_has_apic_reg_virt(%struct.vmcs12* %10)
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %22, label %13

13:                                               ; preds = %9
  %14 = load %struct.vmcs12*, %struct.vmcs12** %5, align 8
  %15 = call i64 @nested_cpu_has_vid(%struct.vmcs12* %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %22, label %17

17:                                               ; preds = %13
  %18 = load %struct.vmcs12*, %struct.vmcs12** %5, align 8
  %19 = call i64 @nested_cpu_has_posted_intr(%struct.vmcs12* %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %22, label %21

21:                                               ; preds = %17
  store i32 0, i32* %3, align 4
  br label %115

22:                                               ; preds = %17, %13, %9, %2
  %23 = load %struct.vmcs12*, %struct.vmcs12** %5, align 8
  %24 = call i64 @nested_cpu_has_virt_x2apic_mode(%struct.vmcs12* %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %31

26:                                               ; preds = %22
  %27 = load %struct.vmcs12*, %struct.vmcs12** %5, align 8
  %28 = load i32, i32* @SECONDARY_EXEC_VIRTUALIZE_APIC_ACCESSES, align 4
  %29 = call i64 @nested_cpu_has2(%struct.vmcs12* %27, i32 %28)
  %30 = icmp ne i64 %29, 0
  br label %31

31:                                               ; preds = %26, %22
  %32 = phi i1 [ false, %22 ], [ %30, %26 ]
  %33 = zext i1 %32 to i32
  %34 = call i64 @CC(i32 %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %39

36:                                               ; preds = %31
  %37 = load i32, i32* @EINVAL, align 4
  %38 = sub nsw i32 0, %37
  store i32 %38, i32* %3, align 4
  br label %115

39:                                               ; preds = %31
  %40 = load %struct.vmcs12*, %struct.vmcs12** %5, align 8
  %41 = call i64 @nested_cpu_has_vid(%struct.vmcs12* %40)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %48

43:                                               ; preds = %39
  %44 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %4, align 8
  %45 = call i32 @nested_exit_on_intr(%struct.kvm_vcpu* %44)
  %46 = icmp ne i32 %45, 0
  %47 = xor i1 %46, true
  br label %48

48:                                               ; preds = %43, %39
  %49 = phi i1 [ false, %39 ], [ %47, %43 ]
  %50 = zext i1 %49 to i32
  %51 = call i64 @CC(i32 %50)
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %56

53:                                               ; preds = %48
  %54 = load i32, i32* @EINVAL, align 4
  %55 = sub nsw i32 0, %54
  store i32 %55, i32* %3, align 4
  br label %115

56:                                               ; preds = %48
  %57 = load %struct.vmcs12*, %struct.vmcs12** %5, align 8
  %58 = call i64 @nested_cpu_has_posted_intr(%struct.vmcs12* %57)
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %102

60:                                               ; preds = %56
  %61 = load %struct.vmcs12*, %struct.vmcs12** %5, align 8
  %62 = call i64 @nested_cpu_has_vid(%struct.vmcs12* %61)
  %63 = icmp ne i64 %62, 0
  %64 = xor i1 %63, true
  %65 = zext i1 %64 to i32
  %66 = call i64 @CC(i32 %65)
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %99, label %68

68:                                               ; preds = %60
  %69 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %4, align 8
  %70 = call i32 @nested_exit_intr_ack_set(%struct.kvm_vcpu* %69)
  %71 = icmp ne i32 %70, 0
  %72 = xor i1 %71, true
  %73 = zext i1 %72 to i32
  %74 = call i64 @CC(i32 %73)
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %99, label %76

76:                                               ; preds = %68
  %77 = load %struct.vmcs12*, %struct.vmcs12** %5, align 8
  %78 = getelementptr inbounds %struct.vmcs12, %struct.vmcs12* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 4
  %80 = and i32 %79, 65280
  %81 = call i64 @CC(i32 %80)
  %82 = icmp ne i64 %81, 0
  br i1 %82, label %99, label %83

83:                                               ; preds = %76
  %84 = load %struct.vmcs12*, %struct.vmcs12** %5, align 8
  %85 = getelementptr inbounds %struct.vmcs12, %struct.vmcs12* %84, i32 0, i32 1
  %86 = load i32, i32* %85, align 4
  %87 = and i32 %86, 63
  %88 = call i64 @CC(i32 %87)
  %89 = icmp ne i64 %88, 0
  br i1 %89, label %99, label %90

90:                                               ; preds = %83
  %91 = load %struct.vmcs12*, %struct.vmcs12** %5, align 8
  %92 = getelementptr inbounds %struct.vmcs12, %struct.vmcs12* %91, i32 0, i32 1
  %93 = load i32, i32* %92, align 4
  %94 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %4, align 8
  %95 = call i32 @cpuid_maxphyaddr(%struct.kvm_vcpu* %94)
  %96 = ashr i32 %93, %95
  %97 = call i64 @CC(i32 %96)
  %98 = icmp ne i64 %97, 0
  br i1 %98, label %99, label %102

99:                                               ; preds = %90, %83, %76, %68, %60
  %100 = load i32, i32* @EINVAL, align 4
  %101 = sub nsw i32 0, %100
  store i32 %101, i32* %3, align 4
  br label %115

102:                                              ; preds = %90, %56
  %103 = load %struct.vmcs12*, %struct.vmcs12** %5, align 8
  %104 = load i32, i32* @CPU_BASED_TPR_SHADOW, align 4
  %105 = call i32 @nested_cpu_has(%struct.vmcs12* %103, i32 %104)
  %106 = icmp ne i32 %105, 0
  %107 = xor i1 %106, true
  %108 = zext i1 %107 to i32
  %109 = call i64 @CC(i32 %108)
  %110 = icmp ne i64 %109, 0
  br i1 %110, label %111, label %114

111:                                              ; preds = %102
  %112 = load i32, i32* @EINVAL, align 4
  %113 = sub nsw i32 0, %112
  store i32 %113, i32* %3, align 4
  br label %115

114:                                              ; preds = %102
  store i32 0, i32* %3, align 4
  br label %115

115:                                              ; preds = %114, %111, %99, %53, %36, %21
  %116 = load i32, i32* %3, align 4
  ret i32 %116
}

declare dso_local i64 @nested_cpu_has_virt_x2apic_mode(%struct.vmcs12*) #1

declare dso_local i32 @nested_cpu_has_apic_reg_virt(%struct.vmcs12*) #1

declare dso_local i64 @nested_cpu_has_vid(%struct.vmcs12*) #1

declare dso_local i64 @nested_cpu_has_posted_intr(%struct.vmcs12*) #1

declare dso_local i64 @CC(i32) #1

declare dso_local i64 @nested_cpu_has2(%struct.vmcs12*, i32) #1

declare dso_local i32 @nested_exit_on_intr(%struct.kvm_vcpu*) #1

declare dso_local i32 @nested_exit_intr_ack_set(%struct.kvm_vcpu*) #1

declare dso_local i32 @cpuid_maxphyaddr(%struct.kvm_vcpu*) #1

declare dso_local i32 @nested_cpu_has(%struct.vmcs12*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
