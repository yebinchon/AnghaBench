; ModuleID = '/home/carl/AnghaBench/linux/arch/s390/kvm/extr_kvm-s390.c_kvm_arch_vcpu_load.c'
source_filename = "/home/carl/AnghaBench/linux/arch/s390/kvm/extr_kvm-s390.c_kvm_arch_vcpu_load.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvm_vcpu = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64, i32 }

@CPUSTAT_RUNNING = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @kvm_arch_vcpu_load(%struct.kvm_vcpu* %0, i32 %1) #0 {
  %3 = alloca %struct.kvm_vcpu*, align 8
  %4 = alloca i32, align 4
  store %struct.kvm_vcpu* %0, %struct.kvm_vcpu** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %6 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %5, i32 0, i32 1
  %7 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %6, i32 0, i32 1
  %8 = load i32, i32* %7, align 8
  %9 = call i32 @gmap_enable(i32 %8)
  %10 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %11 = load i32, i32* @CPUSTAT_RUNNING, align 4
  %12 = call i32 @kvm_s390_set_cpuflags(%struct.kvm_vcpu* %10, i32 %11)
  %13 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %14 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %13, i32 0, i32 1
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %25

18:                                               ; preds = %2
  %19 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %20 = call i32 @is_vcpu_idle(%struct.kvm_vcpu* %19)
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %25, label %22

22:                                               ; preds = %18
  %23 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %24 = call i32 @__start_cpu_timer_accounting(%struct.kvm_vcpu* %23)
  br label %25

25:                                               ; preds = %22, %18, %2
  %26 = load i32, i32* %4, align 4
  %27 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %28 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %27, i32 0, i32 0
  store i32 %26, i32* %28, align 8
  ret void
}

declare dso_local i32 @gmap_enable(i32) #1

declare dso_local i32 @kvm_s390_set_cpuflags(%struct.kvm_vcpu*, i32) #1

declare dso_local i32 @is_vcpu_idle(%struct.kvm_vcpu*) #1

declare dso_local i32 @__start_cpu_timer_accounting(%struct.kvm_vcpu*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
