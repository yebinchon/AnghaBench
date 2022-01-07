; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/kvm/extr_hyperv.c_stimer_init.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/kvm/extr_hyperv.c_stimer_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvm_vcpu_hv_stimer = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@CLOCK_MONOTONIC = common dso_local global i32 0, align 4
@HRTIMER_MODE_ABS = common dso_local global i32 0, align 4
@stimer_timer_callback = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.kvm_vcpu_hv_stimer*, i32)* @stimer_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @stimer_init(%struct.kvm_vcpu_hv_stimer* %0, i32 %1) #0 {
  %3 = alloca %struct.kvm_vcpu_hv_stimer*, align 8
  %4 = alloca i32, align 4
  store %struct.kvm_vcpu_hv_stimer* %0, %struct.kvm_vcpu_hv_stimer** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load %struct.kvm_vcpu_hv_stimer*, %struct.kvm_vcpu_hv_stimer** %3, align 8
  %6 = call i32 @memset(%struct.kvm_vcpu_hv_stimer* %5, i32 0, i32 8)
  %7 = load i32, i32* %4, align 4
  %8 = load %struct.kvm_vcpu_hv_stimer*, %struct.kvm_vcpu_hv_stimer** %3, align 8
  %9 = getelementptr inbounds %struct.kvm_vcpu_hv_stimer, %struct.kvm_vcpu_hv_stimer* %8, i32 0, i32 0
  store i32 %7, i32* %9, align 4
  %10 = load %struct.kvm_vcpu_hv_stimer*, %struct.kvm_vcpu_hv_stimer** %3, align 8
  %11 = getelementptr inbounds %struct.kvm_vcpu_hv_stimer, %struct.kvm_vcpu_hv_stimer* %10, i32 0, i32 1
  %12 = load i32, i32* @CLOCK_MONOTONIC, align 4
  %13 = load i32, i32* @HRTIMER_MODE_ABS, align 4
  %14 = call i32 @hrtimer_init(%struct.TYPE_2__* %11, i32 %12, i32 %13)
  %15 = load i32, i32* @stimer_timer_callback, align 4
  %16 = load %struct.kvm_vcpu_hv_stimer*, %struct.kvm_vcpu_hv_stimer** %3, align 8
  %17 = getelementptr inbounds %struct.kvm_vcpu_hv_stimer, %struct.kvm_vcpu_hv_stimer* %16, i32 0, i32 1
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  store i32 %15, i32* %18, align 4
  %19 = load %struct.kvm_vcpu_hv_stimer*, %struct.kvm_vcpu_hv_stimer** %3, align 8
  %20 = call i32 @stimer_prepare_msg(%struct.kvm_vcpu_hv_stimer* %19)
  ret void
}

declare dso_local i32 @memset(%struct.kvm_vcpu_hv_stimer*, i32, i32) #1

declare dso_local i32 @hrtimer_init(%struct.TYPE_2__*, i32, i32) #1

declare dso_local i32 @stimer_prepare_msg(%struct.kvm_vcpu_hv_stimer*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
