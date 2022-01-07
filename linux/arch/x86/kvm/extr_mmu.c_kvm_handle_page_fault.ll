; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/kvm/extr_mmu.c_kvm_handle_page_fault.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/kvm/extr_mmu.c_kvm_handle_page_fault.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvm_vcpu = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @kvm_handle_page_fault(%struct.kvm_vcpu* %0, i32 %1, i32 %2, i8* %3, i32 %4) #0 {
  %6 = alloca %struct.kvm_vcpu*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.kvm_vcpu* %0, %struct.kvm_vcpu** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i8* %3, i8** %9, align 8
  store i32 %4, i32* %10, align 4
  store i32 1, i32* %11, align 4
  %12 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %6, align 8
  %13 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 0
  store i32 1, i32* %14, align 4
  %15 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %6, align 8
  %16 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 1
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  switch i32 %19, label %20 [
    i32 129, label %38
    i32 128, label %47
  ]

20:                                               ; preds = %5
  %21 = load i32, i32* %8, align 4
  %22 = load i32, i32* %7, align 4
  %23 = call i32 @trace_kvm_page_fault(i32 %21, i32 %22)
  %24 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %6, align 8
  %25 = call i32 @kvm_event_needs_reinjection(%struct.kvm_vcpu* %24)
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %31

27:                                               ; preds = %20
  %28 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %6, align 8
  %29 = load i32, i32* %8, align 4
  %30 = call i32 @kvm_mmu_unprotect_page_virt(%struct.kvm_vcpu* %28, i32 %29)
  br label %31

31:                                               ; preds = %27, %20
  %32 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %6, align 8
  %33 = load i32, i32* %8, align 4
  %34 = load i32, i32* %7, align 4
  %35 = load i8*, i8** %9, align 8
  %36 = load i32, i32* %10, align 4
  %37 = call i32 @kvm_mmu_page_fault(%struct.kvm_vcpu* %32, i32 %33, i32 %34, i8* %35, i32 %36)
  store i32 %37, i32* %11, align 4
  br label %56

38:                                               ; preds = %5
  %39 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %6, align 8
  %40 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i32 0, i32 1
  %42 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %41, i32 0, i32 0
  store i32 0, i32* %42, align 4
  %43 = call i32 (...) @local_irq_disable()
  %44 = load i32, i32* %8, align 4
  %45 = call i32 @kvm_async_pf_task_wait(i32 %44, i32 0)
  %46 = call i32 (...) @local_irq_enable()
  br label %56

47:                                               ; preds = %5
  %48 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %6, align 8
  %49 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %49, i32 0, i32 1
  %51 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %50, i32 0, i32 0
  store i32 0, i32* %51, align 4
  %52 = call i32 (...) @local_irq_disable()
  %53 = load i32, i32* %8, align 4
  %54 = call i32 @kvm_async_pf_task_wake(i32 %53)
  %55 = call i32 (...) @local_irq_enable()
  br label %56

56:                                               ; preds = %47, %38, %31
  %57 = load i32, i32* %11, align 4
  ret i32 %57
}

declare dso_local i32 @trace_kvm_page_fault(i32, i32) #1

declare dso_local i32 @kvm_event_needs_reinjection(%struct.kvm_vcpu*) #1

declare dso_local i32 @kvm_mmu_unprotect_page_virt(%struct.kvm_vcpu*, i32) #1

declare dso_local i32 @kvm_mmu_page_fault(%struct.kvm_vcpu*, i32, i32, i8*, i32) #1

declare dso_local i32 @local_irq_disable(...) #1

declare dso_local i32 @kvm_async_pf_task_wait(i32, i32) #1

declare dso_local i32 @local_irq_enable(...) #1

declare dso_local i32 @kvm_async_pf_task_wake(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
