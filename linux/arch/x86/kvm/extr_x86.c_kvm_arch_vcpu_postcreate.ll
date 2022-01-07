; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/kvm/extr_x86.c_kvm_arch_vcpu_postcreate.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/kvm/extr_x86.c_kvm_arch_vcpu_postcreate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvm_vcpu = type { i32, %struct.TYPE_3__, %struct.kvm* }
%struct.TYPE_3__ = type { i32 }
%struct.kvm = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.msr_data = type { i32, i32, i32 }

@MSR_IA32_TSC = common dso_local global i32 0, align 4
@kvmclock_periodic_sync = common dso_local global i32 0, align 4
@KVMCLOCK_SYNC_PERIOD = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @kvm_arch_vcpu_postcreate(%struct.kvm_vcpu* %0) #0 {
  %2 = alloca %struct.kvm_vcpu*, align 8
  %3 = alloca %struct.msr_data, align 4
  %4 = alloca %struct.kvm*, align 8
  store %struct.kvm_vcpu* %0, %struct.kvm_vcpu** %2, align 8
  %5 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %2, align 8
  %6 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %5, i32 0, i32 2
  %7 = load %struct.kvm*, %struct.kvm** %6, align 8
  store %struct.kvm* %7, %struct.kvm** %4, align 8
  %8 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %2, align 8
  %9 = call i32 @kvm_hv_vcpu_postcreate(%struct.kvm_vcpu* %8)
  %10 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %2, align 8
  %11 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %10, i32 0, i32 0
  %12 = call i64 @mutex_lock_killable(i32* %11)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %15

14:                                               ; preds = %1
  br label %41

15:                                               ; preds = %1
  %16 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %2, align 8
  %17 = call i32 @vcpu_load(%struct.kvm_vcpu* %16)
  %18 = getelementptr inbounds %struct.msr_data, %struct.msr_data* %3, i32 0, i32 0
  store i32 0, i32* %18, align 4
  %19 = load i32, i32* @MSR_IA32_TSC, align 4
  %20 = getelementptr inbounds %struct.msr_data, %struct.msr_data* %3, i32 0, i32 2
  store i32 %19, i32* %20, align 4
  %21 = getelementptr inbounds %struct.msr_data, %struct.msr_data* %3, i32 0, i32 1
  store i32 1, i32* %21, align 4
  %22 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %2, align 8
  %23 = call i32 @kvm_write_tsc(%struct.kvm_vcpu* %22, %struct.msr_data* %3)
  %24 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %2, align 8
  %25 = call i32 @vcpu_put(%struct.kvm_vcpu* %24)
  %26 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %2, align 8
  %27 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %26, i32 0, i32 1
  %28 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %27, i32 0, i32 0
  store i32 1, i32* %28, align 4
  %29 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %2, align 8
  %30 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %29, i32 0, i32 0
  %31 = call i32 @mutex_unlock(i32* %30)
  %32 = load i32, i32* @kvmclock_periodic_sync, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %35, label %34

34:                                               ; preds = %15
  br label %41

35:                                               ; preds = %15
  %36 = load %struct.kvm*, %struct.kvm** %4, align 8
  %37 = getelementptr inbounds %struct.kvm, %struct.kvm* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i32 0, i32 0
  %39 = load i32, i32* @KVMCLOCK_SYNC_PERIOD, align 4
  %40 = call i32 @schedule_delayed_work(i32* %38, i32 %39)
  br label %41

41:                                               ; preds = %35, %34, %14
  ret void
}

declare dso_local i32 @kvm_hv_vcpu_postcreate(%struct.kvm_vcpu*) #1

declare dso_local i64 @mutex_lock_killable(i32*) #1

declare dso_local i32 @vcpu_load(%struct.kvm_vcpu*) #1

declare dso_local i32 @kvm_write_tsc(%struct.kvm_vcpu*, %struct.msr_data*) #1

declare dso_local i32 @vcpu_put(%struct.kvm_vcpu*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @schedule_delayed_work(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
