; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/kvm/vmx/extr_vmx.c_vmx_get_cpl.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/kvm/vmx/extr_vmx.c_vmx_get_cpl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvm_vcpu = type { i32 }
%struct.vcpu_vmx = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@VCPU_SREG_SS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @vmx_get_cpl(%struct.kvm_vcpu* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.kvm_vcpu*, align 8
  %4 = alloca %struct.vcpu_vmx*, align 8
  %5 = alloca i32, align 4
  store %struct.kvm_vcpu* %0, %struct.kvm_vcpu** %3, align 8
  %6 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %7 = call %struct.vcpu_vmx* @to_vmx(%struct.kvm_vcpu* %6)
  store %struct.vcpu_vmx* %7, %struct.vcpu_vmx** %4, align 8
  %8 = load %struct.vcpu_vmx*, %struct.vcpu_vmx** %4, align 8
  %9 = getelementptr inbounds %struct.vcpu_vmx, %struct.vcpu_vmx* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = call i64 @unlikely(i32 %11)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %15

14:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %21

15:                                               ; preds = %1
  %16 = load %struct.vcpu_vmx*, %struct.vcpu_vmx** %4, align 8
  %17 = load i32, i32* @VCPU_SREG_SS, align 4
  %18 = call i32 @vmx_read_guest_seg_ar(%struct.vcpu_vmx* %16, i32 %17)
  store i32 %18, i32* %5, align 4
  %19 = load i32, i32* %5, align 4
  %20 = call i32 @VMX_AR_DPL(i32 %19)
  store i32 %20, i32* %2, align 4
  br label %21

21:                                               ; preds = %15, %14
  %22 = load i32, i32* %2, align 4
  ret i32 %22
}

declare dso_local %struct.vcpu_vmx* @to_vmx(%struct.kvm_vcpu*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @vmx_read_guest_seg_ar(%struct.vcpu_vmx*, i32) #1

declare dso_local i32 @VMX_AR_DPL(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
