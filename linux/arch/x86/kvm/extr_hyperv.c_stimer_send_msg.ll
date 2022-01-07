; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/kvm/extr_hyperv.c_stimer_send_msg.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/kvm/extr_hyperv.c_stimer_send_msg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvm_vcpu_hv_stimer = type { %struct.TYPE_4__, i32, %struct.hv_message }
%struct.TYPE_4__ = type { i32, i32 }
%struct.hv_message = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.kvm_vcpu = type { i32 }
%struct.hv_timer_message_payload = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.kvm_vcpu_hv_stimer*)* @stimer_send_msg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @stimer_send_msg(%struct.kvm_vcpu_hv_stimer* %0) #0 {
  %2 = alloca %struct.kvm_vcpu_hv_stimer*, align 8
  %3 = alloca %struct.kvm_vcpu*, align 8
  %4 = alloca %struct.hv_message*, align 8
  %5 = alloca %struct.hv_timer_message_payload*, align 8
  %6 = alloca i32, align 4
  store %struct.kvm_vcpu_hv_stimer* %0, %struct.kvm_vcpu_hv_stimer** %2, align 8
  %7 = load %struct.kvm_vcpu_hv_stimer*, %struct.kvm_vcpu_hv_stimer** %2, align 8
  %8 = call %struct.kvm_vcpu* @stimer_to_vcpu(%struct.kvm_vcpu_hv_stimer* %7)
  store %struct.kvm_vcpu* %8, %struct.kvm_vcpu** %3, align 8
  %9 = load %struct.kvm_vcpu_hv_stimer*, %struct.kvm_vcpu_hv_stimer** %2, align 8
  %10 = getelementptr inbounds %struct.kvm_vcpu_hv_stimer, %struct.kvm_vcpu_hv_stimer* %9, i32 0, i32 2
  store %struct.hv_message* %10, %struct.hv_message** %4, align 8
  %11 = load %struct.hv_message*, %struct.hv_message** %4, align 8
  %12 = getelementptr inbounds %struct.hv_message, %struct.hv_message* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 0
  %14 = bitcast i32* %13 to %struct.hv_timer_message_payload*
  store %struct.hv_timer_message_payload* %14, %struct.hv_timer_message_payload** %5, align 8
  %15 = load %struct.kvm_vcpu_hv_stimer*, %struct.kvm_vcpu_hv_stimer** %2, align 8
  %16 = getelementptr inbounds %struct.kvm_vcpu_hv_stimer, %struct.kvm_vcpu_hv_stimer* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  store i32 %18, i32* %6, align 4
  %19 = load %struct.kvm_vcpu_hv_stimer*, %struct.kvm_vcpu_hv_stimer** %2, align 8
  %20 = getelementptr inbounds %struct.kvm_vcpu_hv_stimer, %struct.kvm_vcpu_hv_stimer* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = load %struct.hv_timer_message_payload*, %struct.hv_timer_message_payload** %5, align 8
  %23 = getelementptr inbounds %struct.hv_timer_message_payload, %struct.hv_timer_message_payload* %22, i32 0, i32 1
  store i32 %21, i32* %23, align 4
  %24 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %25 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @get_time_ref_counter(i32 %26)
  %28 = load %struct.hv_timer_message_payload*, %struct.hv_timer_message_payload** %5, align 8
  %29 = getelementptr inbounds %struct.hv_timer_message_payload, %struct.hv_timer_message_payload* %28, i32 0, i32 0
  store i32 %27, i32* %29, align 4
  %30 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %31 = call i32 @vcpu_to_synic(%struct.kvm_vcpu* %30)
  %32 = load %struct.kvm_vcpu_hv_stimer*, %struct.kvm_vcpu_hv_stimer** %2, align 8
  %33 = getelementptr inbounds %struct.kvm_vcpu_hv_stimer, %struct.kvm_vcpu_hv_stimer* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = load %struct.hv_message*, %struct.hv_message** %4, align 8
  %37 = load i32, i32* %6, align 4
  %38 = call i32 @synic_deliver_msg(i32 %31, i32 %35, %struct.hv_message* %36, i32 %37)
  ret i32 %38
}

declare dso_local %struct.kvm_vcpu* @stimer_to_vcpu(%struct.kvm_vcpu_hv_stimer*) #1

declare dso_local i32 @get_time_ref_counter(i32) #1

declare dso_local i32 @synic_deliver_msg(i32, i32, %struct.hv_message*, i32) #1

declare dso_local i32 @vcpu_to_synic(%struct.kvm_vcpu*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
