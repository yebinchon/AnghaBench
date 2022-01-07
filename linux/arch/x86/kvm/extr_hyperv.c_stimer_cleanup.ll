; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/kvm/extr_hyperv.c_stimer_cleanup.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/kvm/extr_hyperv.c_stimer_cleanup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvm_vcpu_hv_stimer = type { i32, i64, i32, i32 }
%struct.kvm_vcpu = type { i32 }
%struct.TYPE_2__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.kvm_vcpu_hv_stimer*)* @stimer_cleanup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @stimer_cleanup(%struct.kvm_vcpu_hv_stimer* %0) #0 {
  %2 = alloca %struct.kvm_vcpu_hv_stimer*, align 8
  %3 = alloca %struct.kvm_vcpu*, align 8
  store %struct.kvm_vcpu_hv_stimer* %0, %struct.kvm_vcpu_hv_stimer** %2, align 8
  %4 = load %struct.kvm_vcpu_hv_stimer*, %struct.kvm_vcpu_hv_stimer** %2, align 8
  %5 = call %struct.kvm_vcpu* @stimer_to_vcpu(%struct.kvm_vcpu_hv_stimer* %4)
  store %struct.kvm_vcpu* %5, %struct.kvm_vcpu** %3, align 8
  %6 = load %struct.kvm_vcpu_hv_stimer*, %struct.kvm_vcpu_hv_stimer** %2, align 8
  %7 = call %struct.kvm_vcpu* @stimer_to_vcpu(%struct.kvm_vcpu_hv_stimer* %6)
  %8 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = load %struct.kvm_vcpu_hv_stimer*, %struct.kvm_vcpu_hv_stimer** %2, align 8
  %11 = getelementptr inbounds %struct.kvm_vcpu_hv_stimer, %struct.kvm_vcpu_hv_stimer* %10, i32 0, i32 2
  %12 = load i32, i32* %11, align 8
  %13 = call i32 @trace_kvm_hv_stimer_cleanup(i32 %9, i32 %12)
  %14 = load %struct.kvm_vcpu_hv_stimer*, %struct.kvm_vcpu_hv_stimer** %2, align 8
  %15 = getelementptr inbounds %struct.kvm_vcpu_hv_stimer, %struct.kvm_vcpu_hv_stimer* %14, i32 0, i32 3
  %16 = call i32 @hrtimer_cancel(i32* %15)
  %17 = load %struct.kvm_vcpu_hv_stimer*, %struct.kvm_vcpu_hv_stimer** %2, align 8
  %18 = getelementptr inbounds %struct.kvm_vcpu_hv_stimer, %struct.kvm_vcpu_hv_stimer* %17, i32 0, i32 2
  %19 = load i32, i32* %18, align 8
  %20 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %21 = call %struct.TYPE_2__* @vcpu_to_hv_vcpu(%struct.kvm_vcpu* %20)
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @clear_bit(i32 %19, i32 %23)
  %25 = load %struct.kvm_vcpu_hv_stimer*, %struct.kvm_vcpu_hv_stimer** %2, align 8
  %26 = getelementptr inbounds %struct.kvm_vcpu_hv_stimer, %struct.kvm_vcpu_hv_stimer* %25, i32 0, i32 0
  store i32 0, i32* %26, align 8
  %27 = load %struct.kvm_vcpu_hv_stimer*, %struct.kvm_vcpu_hv_stimer** %2, align 8
  %28 = getelementptr inbounds %struct.kvm_vcpu_hv_stimer, %struct.kvm_vcpu_hv_stimer* %27, i32 0, i32 1
  store i64 0, i64* %28, align 8
  ret void
}

declare dso_local %struct.kvm_vcpu* @stimer_to_vcpu(%struct.kvm_vcpu_hv_stimer*) #1

declare dso_local i32 @trace_kvm_hv_stimer_cleanup(i32, i32) #1

declare dso_local i32 @hrtimer_cancel(i32*) #1

declare dso_local i32 @clear_bit(i32, i32) #1

declare dso_local %struct.TYPE_2__* @vcpu_to_hv_vcpu(%struct.kvm_vcpu*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
