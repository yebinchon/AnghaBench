; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/kvm/vmx/extr_vmx.c_vmx_handle_exit_irqoff.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/kvm/vmx/extr_vmx.c_vmx_handle_exit_irqoff.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvm_vcpu = type { i32 }
%struct.vcpu_vmx = type { i64 }

@EXIT_REASON_EXTERNAL_INTERRUPT = common dso_local global i64 0, align 8
@EXIT_REASON_EXCEPTION_NMI = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.kvm_vcpu*)* @vmx_handle_exit_irqoff to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vmx_handle_exit_irqoff(%struct.kvm_vcpu* %0) #0 {
  %2 = alloca %struct.kvm_vcpu*, align 8
  %3 = alloca %struct.vcpu_vmx*, align 8
  store %struct.kvm_vcpu* %0, %struct.kvm_vcpu** %2, align 8
  %4 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %2, align 8
  %5 = call %struct.vcpu_vmx* @to_vmx(%struct.kvm_vcpu* %4)
  store %struct.vcpu_vmx* %5, %struct.vcpu_vmx** %3, align 8
  %6 = load %struct.vcpu_vmx*, %struct.vcpu_vmx** %3, align 8
  %7 = getelementptr inbounds %struct.vcpu_vmx, %struct.vcpu_vmx* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = load i64, i64* @EXIT_REASON_EXTERNAL_INTERRUPT, align 8
  %10 = icmp eq i64 %8, %9
  br i1 %10, label %11, label %14

11:                                               ; preds = %1
  %12 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %2, align 8
  %13 = call i32 @handle_external_interrupt_irqoff(%struct.kvm_vcpu* %12)
  br label %24

14:                                               ; preds = %1
  %15 = load %struct.vcpu_vmx*, %struct.vcpu_vmx** %3, align 8
  %16 = getelementptr inbounds %struct.vcpu_vmx, %struct.vcpu_vmx* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* @EXIT_REASON_EXCEPTION_NMI, align 8
  %19 = icmp eq i64 %17, %18
  br i1 %19, label %20, label %23

20:                                               ; preds = %14
  %21 = load %struct.vcpu_vmx*, %struct.vcpu_vmx** %3, align 8
  %22 = call i32 @handle_exception_nmi_irqoff(%struct.vcpu_vmx* %21)
  br label %23

23:                                               ; preds = %20, %14
  br label %24

24:                                               ; preds = %23, %11
  ret void
}

declare dso_local %struct.vcpu_vmx* @to_vmx(%struct.kvm_vcpu*) #1

declare dso_local i32 @handle_external_interrupt_irqoff(%struct.kvm_vcpu*) #1

declare dso_local i32 @handle_exception_nmi_irqoff(%struct.vcpu_vmx*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
