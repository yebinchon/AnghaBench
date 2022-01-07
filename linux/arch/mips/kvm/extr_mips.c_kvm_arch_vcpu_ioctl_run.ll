; ModuleID = '/home/carl/AnghaBench/linux/arch/mips/kvm/extr_mips.c_kvm_arch_vcpu_ioctl_run.c'
source_filename = "/home/carl/AnghaBench/linux/arch/mips/kvm/extr_mips.c_kvm_arch_vcpu_ioctl_run.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 (%struct.kvm_run*, %struct.kvm_vcpu*)* }
%struct.kvm_run = type { i64 }
%struct.kvm_vcpu = type { i32, i64, i32 }

@EINTR = common dso_local global i32 0, align 4
@IN_GUEST_MODE = common dso_local global i32 0, align 4
@kvm_mips_callbacks = common dso_local global %struct.TYPE_2__* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @kvm_arch_vcpu_ioctl_run(%struct.kvm_vcpu* %0, %struct.kvm_run* %1) #0 {
  %3 = alloca %struct.kvm_vcpu*, align 8
  %4 = alloca %struct.kvm_run*, align 8
  %5 = alloca i32, align 4
  store %struct.kvm_vcpu* %0, %struct.kvm_vcpu** %3, align 8
  store %struct.kvm_run* %1, %struct.kvm_run** %4, align 8
  %6 = load i32, i32* @EINTR, align 4
  %7 = sub nsw i32 0, %6
  store i32 %7, i32* %5, align 4
  %8 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %9 = call i32 @vcpu_load(%struct.kvm_vcpu* %8)
  %10 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %11 = call i32 @kvm_sigset_activate(%struct.kvm_vcpu* %10)
  %12 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %13 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %12, i32 0, i32 1
  %14 = load i64, i64* %13, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %28

16:                                               ; preds = %2
  %17 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %18 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %17, i32 0, i32 2
  %19 = load i32, i32* %18, align 8
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %25, label %21

21:                                               ; preds = %16
  %22 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %23 = load %struct.kvm_run*, %struct.kvm_run** %4, align 8
  %24 = call i32 @kvm_mips_complete_mmio_load(%struct.kvm_vcpu* %22, %struct.kvm_run* %23)
  br label %25

25:                                               ; preds = %21, %16
  %26 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %27 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %26, i32 0, i32 1
  store i64 0, i64* %27, align 8
  br label %28

28:                                               ; preds = %25, %2
  %29 = load %struct.kvm_run*, %struct.kvm_run** %4, align 8
  %30 = getelementptr inbounds %struct.kvm_run, %struct.kvm_run* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %34

33:                                               ; preds = %28
  br label %55

34:                                               ; preds = %28
  %35 = call i32 @lose_fpu(i32 1)
  %36 = call i32 (...) @local_irq_disable()
  %37 = call i32 (...) @guest_enter_irqoff()
  %38 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %39 = call i32 @trace_kvm_enter(%struct.kvm_vcpu* %38)
  %40 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %41 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = load i32, i32* @IN_GUEST_MODE, align 4
  %44 = call i32 @smp_store_mb(i32 %42, i32 %43)
  %45 = load %struct.TYPE_2__*, %struct.TYPE_2__** @kvm_mips_callbacks, align 8
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i32 0, i32 0
  %47 = load i32 (%struct.kvm_run*, %struct.kvm_vcpu*)*, i32 (%struct.kvm_run*, %struct.kvm_vcpu*)** %46, align 8
  %48 = load %struct.kvm_run*, %struct.kvm_run** %4, align 8
  %49 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %50 = call i32 %47(%struct.kvm_run* %48, %struct.kvm_vcpu* %49)
  store i32 %50, i32* %5, align 4
  %51 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %52 = call i32 @trace_kvm_out(%struct.kvm_vcpu* %51)
  %53 = call i32 (...) @guest_exit_irqoff()
  %54 = call i32 (...) @local_irq_enable()
  br label %55

55:                                               ; preds = %34, %33
  %56 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %57 = call i32 @kvm_sigset_deactivate(%struct.kvm_vcpu* %56)
  %58 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %59 = call i32 @vcpu_put(%struct.kvm_vcpu* %58)
  %60 = load i32, i32* %5, align 4
  ret i32 %60
}

declare dso_local i32 @vcpu_load(%struct.kvm_vcpu*) #1

declare dso_local i32 @kvm_sigset_activate(%struct.kvm_vcpu*) #1

declare dso_local i32 @kvm_mips_complete_mmio_load(%struct.kvm_vcpu*, %struct.kvm_run*) #1

declare dso_local i32 @lose_fpu(i32) #1

declare dso_local i32 @local_irq_disable(...) #1

declare dso_local i32 @guest_enter_irqoff(...) #1

declare dso_local i32 @trace_kvm_enter(%struct.kvm_vcpu*) #1

declare dso_local i32 @smp_store_mb(i32, i32) #1

declare dso_local i32 @trace_kvm_out(%struct.kvm_vcpu*) #1

declare dso_local i32 @guest_exit_irqoff(...) #1

declare dso_local i32 @local_irq_enable(...) #1

declare dso_local i32 @kvm_sigset_deactivate(%struct.kvm_vcpu*) #1

declare dso_local i32 @vcpu_put(%struct.kvm_vcpu*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
