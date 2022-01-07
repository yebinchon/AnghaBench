; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/kvm/vmx/extr_vmx.c_handle_exception_nmi_irqoff.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/kvm/vmx/extr_vmx.c_handle_exception_nmi_irqoff.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vcpu_vmx = type { %struct.TYPE_7__, i32 }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }

@VM_EXIT_INTR_INFO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.vcpu_vmx*)* @handle_exception_nmi_irqoff to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @handle_exception_nmi_irqoff(%struct.vcpu_vmx* %0) #0 {
  %2 = alloca %struct.vcpu_vmx*, align 8
  store %struct.vcpu_vmx* %0, %struct.vcpu_vmx** %2, align 8
  %3 = load i32, i32* @VM_EXIT_INTR_INFO, align 4
  %4 = call i32 @vmcs_read32(i32 %3)
  %5 = load %struct.vcpu_vmx*, %struct.vcpu_vmx** %2, align 8
  %6 = getelementptr inbounds %struct.vcpu_vmx, %struct.vcpu_vmx* %5, i32 0, i32 1
  store i32 %4, i32* %6, align 4
  %7 = load %struct.vcpu_vmx*, %struct.vcpu_vmx** %2, align 8
  %8 = getelementptr inbounds %struct.vcpu_vmx, %struct.vcpu_vmx* %7, i32 0, i32 1
  %9 = load i32, i32* %8, align 4
  %10 = call i64 @is_page_fault(i32 %9)
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %19

12:                                               ; preds = %1
  %13 = call i32 (...) @kvm_read_and_reset_pf_reason()
  %14 = load %struct.vcpu_vmx*, %struct.vcpu_vmx** %2, align 8
  %15 = getelementptr inbounds %struct.vcpu_vmx, %struct.vcpu_vmx* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %17, i32 0, i32 0
  store i32 %13, i32* %18, align 4
  br label %19

19:                                               ; preds = %12, %1
  %20 = load %struct.vcpu_vmx*, %struct.vcpu_vmx** %2, align 8
  %21 = getelementptr inbounds %struct.vcpu_vmx, %struct.vcpu_vmx* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = call i64 @is_machine_check(i32 %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %19
  %26 = call i32 (...) @kvm_machine_check()
  br label %27

27:                                               ; preds = %25, %19
  %28 = load %struct.vcpu_vmx*, %struct.vcpu_vmx** %2, align 8
  %29 = getelementptr inbounds %struct.vcpu_vmx, %struct.vcpu_vmx* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = call i64 @is_nmi(i32 %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %40

33:                                               ; preds = %27
  %34 = load %struct.vcpu_vmx*, %struct.vcpu_vmx** %2, align 8
  %35 = getelementptr inbounds %struct.vcpu_vmx, %struct.vcpu_vmx* %34, i32 0, i32 0
  %36 = call i32 @kvm_before_interrupt(%struct.TYPE_7__* %35)
  call void asm sideeffect "int $$2", "~{dirflag},~{fpsr},~{flags}"() #2, !srcloc !2
  %37 = load %struct.vcpu_vmx*, %struct.vcpu_vmx** %2, align 8
  %38 = getelementptr inbounds %struct.vcpu_vmx, %struct.vcpu_vmx* %37, i32 0, i32 0
  %39 = call i32 @kvm_after_interrupt(%struct.TYPE_7__* %38)
  br label %40

40:                                               ; preds = %33, %27
  ret void
}

declare dso_local i32 @vmcs_read32(i32) #1

declare dso_local i64 @is_page_fault(i32) #1

declare dso_local i32 @kvm_read_and_reset_pf_reason(...) #1

declare dso_local i64 @is_machine_check(i32) #1

declare dso_local i32 @kvm_machine_check(...) #1

declare dso_local i64 @is_nmi(i32) #1

declare dso_local i32 @kvm_before_interrupt(%struct.TYPE_7__*) #1

declare dso_local i32 @kvm_after_interrupt(%struct.TYPE_7__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
!2 = !{i32 1118}
