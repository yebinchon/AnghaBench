; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/kvm/extr_powerpc.c_kvmppc_prepare_to_enter.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/kvm/extr_powerpc.c_kvmppc_prepare_to_enter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvm_vcpu = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@current = common dso_local global i32 0, align 4
@SIGNAL_EXITS = common dso_local global i32 0, align 4
@KVM_EXIT_INTR = common dso_local global i32 0, align 4
@EINTR = common dso_local global i32 0, align 4
@IN_GUEST_MODE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @kvmppc_prepare_to_enter(%struct.kvm_vcpu* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.kvm_vcpu*, align 8
  %4 = alloca i32, align 4
  store %struct.kvm_vcpu* %0, %struct.kvm_vcpu** %3, align 8
  %5 = call i32 (...) @irqs_disabled()
  %6 = call i32 @WARN_ON(i32 %5)
  %7 = call i32 (...) @hard_irq_disable()
  br label %8

8:                                                ; preds = %1, %11, %47, %53
  %9 = call i64 (...) @need_resched()
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %15

11:                                               ; preds = %8
  %12 = call i32 (...) @local_irq_enable()
  %13 = call i32 (...) @cond_resched()
  %14 = call i32 (...) @hard_irq_disable()
  br label %8

15:                                               ; preds = %8
  %16 = load i32, i32* @current, align 4
  %17 = call i64 @signal_pending(i32 %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %30

19:                                               ; preds = %15
  %20 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %21 = load i32, i32* @SIGNAL_EXITS, align 4
  %22 = call i32 @kvmppc_account_exit(%struct.kvm_vcpu* %20, i32 %21)
  %23 = load i32, i32* @KVM_EXIT_INTR, align 4
  %24 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %25 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %24, i32 0, i32 1
  %26 = load %struct.TYPE_2__*, %struct.TYPE_2__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 0
  store i32 %23, i32* %27, align 4
  %28 = load i32, i32* @EINTR, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %4, align 4
  br label %56

30:                                               ; preds = %15
  %31 = load i32, i32* @IN_GUEST_MODE, align 4
  %32 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %33 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %32, i32 0, i32 0
  store i32 %31, i32* %33, align 8
  %34 = call i32 (...) @smp_mb()
  %35 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %36 = call i64 @kvm_request_pending(%struct.kvm_vcpu* %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %49

38:                                               ; preds = %30
  %39 = call i32 (...) @local_irq_enable()
  %40 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %41 = call i32 @trace_kvm_check_requests(%struct.kvm_vcpu* %40)
  %42 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %43 = call i32 @kvmppc_core_check_requests(%struct.kvm_vcpu* %42)
  store i32 %43, i32* %4, align 4
  %44 = call i32 (...) @hard_irq_disable()
  %45 = load i32, i32* %4, align 4
  %46 = icmp sgt i32 %45, 0
  br i1 %46, label %47, label %48

47:                                               ; preds = %38
  br label %8

48:                                               ; preds = %38
  br label %56

49:                                               ; preds = %30
  %50 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %51 = call i64 @kvmppc_core_prepare_to_enter(%struct.kvm_vcpu* %50)
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %54

53:                                               ; preds = %49
  br label %8

54:                                               ; preds = %49
  %55 = call i32 (...) @guest_enter_irqoff()
  store i32 1, i32* %2, align 4
  br label %59

56:                                               ; preds = %48, %19
  %57 = call i32 (...) @local_irq_enable()
  %58 = load i32, i32* %4, align 4
  store i32 %58, i32* %2, align 4
  br label %59

59:                                               ; preds = %56, %54
  %60 = load i32, i32* %2, align 4
  ret i32 %60
}

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @irqs_disabled(...) #1

declare dso_local i32 @hard_irq_disable(...) #1

declare dso_local i64 @need_resched(...) #1

declare dso_local i32 @local_irq_enable(...) #1

declare dso_local i32 @cond_resched(...) #1

declare dso_local i64 @signal_pending(i32) #1

declare dso_local i32 @kvmppc_account_exit(%struct.kvm_vcpu*, i32) #1

declare dso_local i32 @smp_mb(...) #1

declare dso_local i64 @kvm_request_pending(%struct.kvm_vcpu*) #1

declare dso_local i32 @trace_kvm_check_requests(%struct.kvm_vcpu*) #1

declare dso_local i32 @kvmppc_core_check_requests(%struct.kvm_vcpu*) #1

declare dso_local i64 @kvmppc_core_prepare_to_enter(%struct.kvm_vcpu*) #1

declare dso_local i32 @guest_enter_irqoff(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
