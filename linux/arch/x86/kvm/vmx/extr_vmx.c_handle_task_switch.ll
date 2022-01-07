; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/kvm/vmx/extr_vmx.c_handle_task_switch.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/kvm/vmx/extr_vmx.c_handle_task_switch.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvm_vcpu = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.vcpu_vmx = type { i32 }

@VECTORING_INFO_VALID_MASK = common dso_local global i32 0, align 4
@VECTORING_INFO_VECTOR_MASK = common dso_local global i32 0, align 4
@VECTORING_INFO_TYPE_MASK = common dso_local global i32 0, align 4
@EXIT_QUALIFICATION = common dso_local global i32 0, align 4
@TASK_SWITCH_GATE = common dso_local global i32 0, align 4
@VECTORING_INFO_DELIVER_CODE_MASK = common dso_local global i32 0, align 4
@IDT_VECTORING_ERROR_CODE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.kvm_vcpu*)* @handle_task_switch to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @handle_task_switch(%struct.kvm_vcpu* %0) #0 {
  %2 = alloca %struct.kvm_vcpu*, align 8
  %3 = alloca %struct.vcpu_vmx*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.kvm_vcpu* %0, %struct.kvm_vcpu** %2, align 8
  %12 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %2, align 8
  %13 = call %struct.vcpu_vmx* @to_vmx(%struct.kvm_vcpu* %12)
  store %struct.vcpu_vmx* %13, %struct.vcpu_vmx** %3, align 8
  store i32 0, i32* %5, align 4
  store i32 0, i32* %6, align 4
  %14 = load %struct.vcpu_vmx*, %struct.vcpu_vmx** %3, align 8
  %15 = getelementptr inbounds %struct.vcpu_vmx, %struct.vcpu_vmx* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = load i32, i32* @VECTORING_INFO_VALID_MASK, align 4
  %18 = and i32 %16, %17
  store i32 %18, i32* %10, align 4
  %19 = load %struct.vcpu_vmx*, %struct.vcpu_vmx** %3, align 8
  %20 = getelementptr inbounds %struct.vcpu_vmx, %struct.vcpu_vmx* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = load i32, i32* @VECTORING_INFO_VECTOR_MASK, align 4
  %23 = and i32 %21, %22
  store i32 %23, i32* %11, align 4
  %24 = load %struct.vcpu_vmx*, %struct.vcpu_vmx** %3, align 8
  %25 = getelementptr inbounds %struct.vcpu_vmx, %struct.vcpu_vmx* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = load i32, i32* @VECTORING_INFO_TYPE_MASK, align 4
  %28 = and i32 %26, %27
  store i32 %28, i32* %9, align 4
  %29 = load i32, i32* @EXIT_QUALIFICATION, align 4
  %30 = call i64 @vmcs_readl(i32 %29)
  store i64 %30, i64* %4, align 8
  %31 = load i64, i64* %4, align 8
  %32 = trunc i64 %31 to i32
  %33 = ashr i32 %32, 30
  store i32 %33, i32* %8, align 4
  %34 = load i32, i32* %8, align 4
  %35 = load i32, i32* @TASK_SWITCH_GATE, align 4
  %36 = icmp eq i32 %34, %35
  br i1 %36, label %37, label %67

37:                                               ; preds = %1
  %38 = load i32, i32* %10, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %67

40:                                               ; preds = %37
  %41 = load i32, i32* %9, align 4
  switch i32 %41, label %65 [
    i32 130, label %42
    i32 132, label %48
    i32 128, label %48
    i32 131, label %51
    i32 129, label %62
  ]

42:                                               ; preds = %40
  %43 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %2, align 8
  %44 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i32 0, i32 0
  store i32 0, i32* %45, align 4
  %46 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %2, align 8
  %47 = call i32 @vmx_set_nmi_mask(%struct.kvm_vcpu* %46, i32 1)
  br label %66

48:                                               ; preds = %40, %40
  %49 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %2, align 8
  %50 = call i32 @kvm_clear_interrupt_queue(%struct.kvm_vcpu* %49)
  br label %66

51:                                               ; preds = %40
  %52 = load %struct.vcpu_vmx*, %struct.vcpu_vmx** %3, align 8
  %53 = getelementptr inbounds %struct.vcpu_vmx, %struct.vcpu_vmx* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = load i32, i32* @VECTORING_INFO_DELIVER_CODE_MASK, align 4
  %56 = and i32 %54, %55
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %61

58:                                               ; preds = %51
  store i32 1, i32* %5, align 4
  %59 = load i32, i32* @IDT_VECTORING_ERROR_CODE, align 4
  %60 = call i32 @vmcs_read32(i32 %59)
  store i32 %60, i32* %6, align 4
  br label %61

61:                                               ; preds = %58, %51
  br label %62

62:                                               ; preds = %40, %61
  %63 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %2, align 8
  %64 = call i32 @kvm_clear_exception_queue(%struct.kvm_vcpu* %63)
  br label %66

65:                                               ; preds = %40
  br label %66

66:                                               ; preds = %65, %62, %48, %42
  br label %67

67:                                               ; preds = %66, %37, %1
  %68 = load i64, i64* %4, align 8
  store i64 %68, i64* %7, align 8
  %69 = load i32, i32* %10, align 4
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %80

71:                                               ; preds = %67
  %72 = load i32, i32* %9, align 4
  %73 = icmp ne i32 %72, 131
  br i1 %73, label %74, label %87

74:                                               ; preds = %71
  %75 = load i32, i32* %9, align 4
  %76 = icmp ne i32 %75, 132
  br i1 %76, label %77, label %87

77:                                               ; preds = %74
  %78 = load i32, i32* %9, align 4
  %79 = icmp ne i32 %78, 130
  br i1 %79, label %80, label %87

80:                                               ; preds = %77, %67
  %81 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %2, align 8
  %82 = call i32 @skip_emulated_instruction(%struct.kvm_vcpu* %81)
  %83 = icmp ne i32 %82, 0
  %84 = xor i1 %83, true
  %85 = zext i1 %84 to i32
  %86 = call i32 @WARN_ON(i32 %85)
  br label %87

87:                                               ; preds = %80, %77, %74, %71
  %88 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %2, align 8
  %89 = load i64, i64* %7, align 8
  %90 = load i32, i32* %9, align 4
  %91 = icmp eq i32 %90, 128
  br i1 %91, label %92, label %94

92:                                               ; preds = %87
  %93 = load i32, i32* %11, align 4
  br label %95

94:                                               ; preds = %87
  br label %95

95:                                               ; preds = %94, %92
  %96 = phi i32 [ %93, %92 ], [ -1, %94 ]
  %97 = load i32, i32* %8, align 4
  %98 = load i32, i32* %5, align 4
  %99 = load i32, i32* %6, align 4
  %100 = call i32 @kvm_task_switch(%struct.kvm_vcpu* %88, i64 %89, i32 %96, i32 %97, i32 %98, i32 %99)
  ret i32 %100
}

declare dso_local %struct.vcpu_vmx* @to_vmx(%struct.kvm_vcpu*) #1

declare dso_local i64 @vmcs_readl(i32) #1

declare dso_local i32 @vmx_set_nmi_mask(%struct.kvm_vcpu*, i32) #1

declare dso_local i32 @kvm_clear_interrupt_queue(%struct.kvm_vcpu*) #1

declare dso_local i32 @vmcs_read32(i32) #1

declare dso_local i32 @kvm_clear_exception_queue(%struct.kvm_vcpu*) #1

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @skip_emulated_instruction(%struct.kvm_vcpu*) #1

declare dso_local i32 @kvm_task_switch(%struct.kvm_vcpu*, i64, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
