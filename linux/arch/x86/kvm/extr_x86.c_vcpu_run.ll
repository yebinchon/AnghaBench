; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/kvm/extr_x86.c_vcpu_run.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/kvm/extr_x86.c_vcpu_run.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvm_vcpu = type { i8*, %struct.TYPE_6__, %struct.TYPE_5__*, %struct.TYPE_4__, %struct.kvm* }
%struct.TYPE_6__ = type { i32, i32 }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_4__ = type { i32 }
%struct.kvm = type { i32 }

@KVM_REQ_PENDING_TIMER = common dso_local global i32 0, align 4
@KVM_EXIT_IRQ_WINDOW_OPEN = common dso_local global i32 0, align 4
@current = common dso_local global i32 0, align 4
@EINTR = common dso_local global i32 0, align 4
@KVM_EXIT_INTR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.kvm_vcpu*)* @vcpu_run to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vcpu_run(%struct.kvm_vcpu* %0) #0 {
  %2 = alloca %struct.kvm_vcpu*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.kvm*, align 8
  store %struct.kvm_vcpu* %0, %struct.kvm_vcpu** %2, align 8
  %5 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %2, align 8
  %6 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %5, i32 0, i32 4
  %7 = load %struct.kvm*, %struct.kvm** %6, align 8
  store %struct.kvm* %7, %struct.kvm** %4, align 8
  %8 = load %struct.kvm*, %struct.kvm** %4, align 8
  %9 = getelementptr inbounds %struct.kvm, %struct.kvm* %8, i32 0, i32 0
  %10 = call i8* @srcu_read_lock(i32* %9)
  %11 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %2, align 8
  %12 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %11, i32 0, i32 0
  store i8* %10, i8** %12, align 8
  %13 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %2, align 8
  %14 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %13, i32 0, i32 3
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 0
  store i32 1, i32* %15, align 8
  br label %16

16:                                               ; preds = %95, %1
  %17 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %2, align 8
  %18 = call i64 @kvm_vcpu_running(%struct.kvm_vcpu* %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %23

20:                                               ; preds = %16
  %21 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %2, align 8
  %22 = call i32 @vcpu_enter_guest(%struct.kvm_vcpu* %21)
  store i32 %22, i32* %3, align 4
  br label %27

23:                                               ; preds = %16
  %24 = load %struct.kvm*, %struct.kvm** %4, align 8
  %25 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %2, align 8
  %26 = call i32 @vcpu_block(%struct.kvm* %24, %struct.kvm_vcpu* %25)
  store i32 %26, i32* %3, align 4
  br label %27

27:                                               ; preds = %23, %20
  %28 = load i32, i32* %3, align 4
  %29 = icmp sle i32 %28, 0
  br i1 %29, label %30, label %31

30:                                               ; preds = %27
  br label %96

31:                                               ; preds = %27
  %32 = load i32, i32* @KVM_REQ_PENDING_TIMER, align 4
  %33 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %2, align 8
  %34 = call i32 @kvm_clear_request(i32 %32, %struct.kvm_vcpu* %33)
  %35 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %2, align 8
  %36 = call i64 @kvm_cpu_has_pending_timer(%struct.kvm_vcpu* %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %41

38:                                               ; preds = %31
  %39 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %2, align 8
  %40 = call i32 @kvm_inject_pending_timer_irqs(%struct.kvm_vcpu* %39)
  br label %41

41:                                               ; preds = %38, %31
  %42 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %2, align 8
  %43 = call i64 @dm_request_for_irq_injection(%struct.kvm_vcpu* %42)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %60

45:                                               ; preds = %41
  %46 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %2, align 8
  %47 = call i64 @kvm_vcpu_ready_for_interrupt_injection(%struct.kvm_vcpu* %46)
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %60

49:                                               ; preds = %45
  store i32 0, i32* %3, align 4
  %50 = load i32, i32* @KVM_EXIT_IRQ_WINDOW_OPEN, align 4
  %51 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %2, align 8
  %52 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %51, i32 0, i32 2
  %53 = load %struct.TYPE_5__*, %struct.TYPE_5__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %53, i32 0, i32 0
  store i32 %50, i32* %54, align 4
  %55 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %2, align 8
  %56 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %55, i32 0, i32 1
  %57 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 4
  %59 = add nsw i32 %58, 1
  store i32 %59, i32* %57, align 4
  br label %96

60:                                               ; preds = %45, %41
  %61 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %2, align 8
  %62 = call i32 @kvm_check_async_pf_completion(%struct.kvm_vcpu* %61)
  %63 = load i32, i32* @current, align 4
  %64 = call i64 @signal_pending(i32 %63)
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %79

66:                                               ; preds = %60
  %67 = load i32, i32* @EINTR, align 4
  %68 = sub nsw i32 0, %67
  store i32 %68, i32* %3, align 4
  %69 = load i32, i32* @KVM_EXIT_INTR, align 4
  %70 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %2, align 8
  %71 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %70, i32 0, i32 2
  %72 = load %struct.TYPE_5__*, %struct.TYPE_5__** %71, align 8
  %73 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %72, i32 0, i32 0
  store i32 %69, i32* %73, align 4
  %74 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %2, align 8
  %75 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %74, i32 0, i32 1
  %76 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 8
  %78 = add nsw i32 %77, 1
  store i32 %78, i32* %76, align 8
  br label %96

79:                                               ; preds = %60
  %80 = call i64 (...) @need_resched()
  %81 = icmp ne i64 %80, 0
  br i1 %81, label %82, label %95

82:                                               ; preds = %79
  %83 = load %struct.kvm*, %struct.kvm** %4, align 8
  %84 = getelementptr inbounds %struct.kvm, %struct.kvm* %83, i32 0, i32 0
  %85 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %2, align 8
  %86 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %85, i32 0, i32 0
  %87 = load i8*, i8** %86, align 8
  %88 = call i32 @srcu_read_unlock(i32* %84, i8* %87)
  %89 = call i32 (...) @cond_resched()
  %90 = load %struct.kvm*, %struct.kvm** %4, align 8
  %91 = getelementptr inbounds %struct.kvm, %struct.kvm* %90, i32 0, i32 0
  %92 = call i8* @srcu_read_lock(i32* %91)
  %93 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %2, align 8
  %94 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %93, i32 0, i32 0
  store i8* %92, i8** %94, align 8
  br label %95

95:                                               ; preds = %82, %79
  br label %16

96:                                               ; preds = %66, %49, %30
  %97 = load %struct.kvm*, %struct.kvm** %4, align 8
  %98 = getelementptr inbounds %struct.kvm, %struct.kvm* %97, i32 0, i32 0
  %99 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %2, align 8
  %100 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %99, i32 0, i32 0
  %101 = load i8*, i8** %100, align 8
  %102 = call i32 @srcu_read_unlock(i32* %98, i8* %101)
  %103 = load i32, i32* %3, align 4
  ret i32 %103
}

declare dso_local i8* @srcu_read_lock(i32*) #1

declare dso_local i64 @kvm_vcpu_running(%struct.kvm_vcpu*) #1

declare dso_local i32 @vcpu_enter_guest(%struct.kvm_vcpu*) #1

declare dso_local i32 @vcpu_block(%struct.kvm*, %struct.kvm_vcpu*) #1

declare dso_local i32 @kvm_clear_request(i32, %struct.kvm_vcpu*) #1

declare dso_local i64 @kvm_cpu_has_pending_timer(%struct.kvm_vcpu*) #1

declare dso_local i32 @kvm_inject_pending_timer_irqs(%struct.kvm_vcpu*) #1

declare dso_local i64 @dm_request_for_irq_injection(%struct.kvm_vcpu*) #1

declare dso_local i64 @kvm_vcpu_ready_for_interrupt_injection(%struct.kvm_vcpu*) #1

declare dso_local i32 @kvm_check_async_pf_completion(%struct.kvm_vcpu*) #1

declare dso_local i64 @signal_pending(i32) #1

declare dso_local i64 @need_resched(...) #1

declare dso_local i32 @srcu_read_unlock(i32*, i8*) #1

declare dso_local i32 @cond_resched(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
