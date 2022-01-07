; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/kvm/vmx/extr_vmx.c___vmx_complete_interrupts.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/kvm/vmx/extr_vmx.c___vmx_complete_interrupts.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvm_vcpu = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i8* }

@VECTORING_INFO_VALID_MASK = common dso_local global i32 0, align 4
@KVM_REQ_EVENT = common dso_local global i32 0, align 4
@VECTORING_INFO_VECTOR_MASK = common dso_local global i32 0, align 4
@VECTORING_INFO_TYPE_MASK = common dso_local global i32 0, align 4
@VECTORING_INFO_DELIVER_CODE_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.kvm_vcpu*, i32, i32, i32)* @__vmx_complete_interrupts to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @__vmx_complete_interrupts(%struct.kvm_vcpu* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.kvm_vcpu*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.kvm_vcpu* %0, %struct.kvm_vcpu** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %13 = load i32, i32* %6, align 4
  %14 = load i32, i32* @VECTORING_INFO_VALID_MASK, align 4
  %15 = and i32 %13, %14
  store i32 %15, i32* %11, align 4
  %16 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %5, align 8
  %17 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  store i32 0, i32* %18, align 8
  %19 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %5, align 8
  %20 = call i32 @kvm_clear_exception_queue(%struct.kvm_vcpu* %19)
  %21 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %5, align 8
  %22 = call i32 @kvm_clear_interrupt_queue(%struct.kvm_vcpu* %21)
  %23 = load i32, i32* %11, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %26, label %25

25:                                               ; preds = %4
  br label %81

26:                                               ; preds = %4
  %27 = load i32, i32* @KVM_REQ_EVENT, align 4
  %28 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %5, align 8
  %29 = call i32 @kvm_make_request(i32 %27, %struct.kvm_vcpu* %28)
  %30 = load i32, i32* %6, align 4
  %31 = load i32, i32* @VECTORING_INFO_VECTOR_MASK, align 4
  %32 = and i32 %30, %31
  store i32 %32, i32* %9, align 4
  %33 = load i32, i32* %6, align 4
  %34 = load i32, i32* @VECTORING_INFO_TYPE_MASK, align 4
  %35 = and i32 %33, %34
  store i32 %35, i32* %10, align 4
  %36 = load i32, i32* %10, align 4
  switch i32 %36, label %80 [
    i32 130, label %37
    i32 129, label %43
    i32 131, label %49
    i32 128, label %67
    i32 132, label %73
  ]

37:                                               ; preds = %26
  %38 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %5, align 8
  %39 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 0
  store i32 1, i32* %40, align 8
  %41 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %5, align 8
  %42 = call i32 @vmx_set_nmi_mask(%struct.kvm_vcpu* %41, i32 0)
  br label %81

43:                                               ; preds = %26
  %44 = load i32, i32* %7, align 4
  %45 = call i8* @vmcs_read32(i32 %44)
  %46 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %5, align 8
  %47 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %47, i32 0, i32 1
  store i8* %45, i8** %48, align 8
  br label %49

49:                                               ; preds = %26, %43
  %50 = load i32, i32* %6, align 4
  %51 = load i32, i32* @VECTORING_INFO_DELIVER_CODE_MASK, align 4
  %52 = and i32 %50, %51
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %62

54:                                               ; preds = %49
  %55 = load i32, i32* %8, align 4
  %56 = call i8* @vmcs_read32(i32 %55)
  %57 = ptrtoint i8* %56 to i32
  store i32 %57, i32* %12, align 4
  %58 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %5, align 8
  %59 = load i32, i32* %9, align 4
  %60 = load i32, i32* %12, align 4
  %61 = call i32 @kvm_requeue_exception_e(%struct.kvm_vcpu* %58, i32 %59, i32 %60)
  br label %66

62:                                               ; preds = %49
  %63 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %5, align 8
  %64 = load i32, i32* %9, align 4
  %65 = call i32 @kvm_requeue_exception(%struct.kvm_vcpu* %63, i32 %64)
  br label %66

66:                                               ; preds = %62, %54
  br label %81

67:                                               ; preds = %26
  %68 = load i32, i32* %7, align 4
  %69 = call i8* @vmcs_read32(i32 %68)
  %70 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %5, align 8
  %71 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %70, i32 0, i32 0
  %72 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %71, i32 0, i32 1
  store i8* %69, i8** %72, align 8
  br label %73

73:                                               ; preds = %26, %67
  %74 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %5, align 8
  %75 = load i32, i32* %9, align 4
  %76 = load i32, i32* %10, align 4
  %77 = icmp eq i32 %76, 128
  %78 = zext i1 %77 to i32
  %79 = call i32 @kvm_queue_interrupt(%struct.kvm_vcpu* %74, i32 %75, i32 %78)
  br label %81

80:                                               ; preds = %26
  br label %81

81:                                               ; preds = %25, %80, %73, %66, %37
  ret void
}

declare dso_local i32 @kvm_clear_exception_queue(%struct.kvm_vcpu*) #1

declare dso_local i32 @kvm_clear_interrupt_queue(%struct.kvm_vcpu*) #1

declare dso_local i32 @kvm_make_request(i32, %struct.kvm_vcpu*) #1

declare dso_local i32 @vmx_set_nmi_mask(%struct.kvm_vcpu*, i32) #1

declare dso_local i8* @vmcs_read32(i32) #1

declare dso_local i32 @kvm_requeue_exception_e(%struct.kvm_vcpu*, i32, i32) #1

declare dso_local i32 @kvm_requeue_exception(%struct.kvm_vcpu*, i32) #1

declare dso_local i32 @kvm_queue_interrupt(%struct.kvm_vcpu*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
