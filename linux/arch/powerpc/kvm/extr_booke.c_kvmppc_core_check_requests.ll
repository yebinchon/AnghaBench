; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/kvm/extr_booke.c_kvmppc_core_check_requests.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/kvm/extr_booke.c_kvmppc_core_check_requests.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvm_vcpu = type { %struct.TYPE_6__*, %struct.TYPE_5__ }
%struct.TYPE_6__ = type { i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64 }
%struct.TYPE_5__ = type { i32 }

@KVM_REQ_PENDING_TIMER = common dso_local global i32 0, align 4
@KVM_REQ_WATCHDOG = common dso_local global i32 0, align 4
@KVM_EXIT_WATCHDOG = common dso_local global i32 0, align 4
@KVM_REQ_EPR_EXIT = common dso_local global i32 0, align 4
@KVM_EXIT_EPR = common dso_local global i32 0, align 4
@KVM_REQ_TLB_FLUSH = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @kvmppc_core_check_requests(%struct.kvm_vcpu* %0) #0 {
  %2 = alloca %struct.kvm_vcpu*, align 8
  %3 = alloca i32, align 4
  store %struct.kvm_vcpu* %0, %struct.kvm_vcpu** %2, align 8
  store i32 1, i32* %3, align 4
  %4 = load i32, i32* @KVM_REQ_PENDING_TIMER, align 4
  %5 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %2, align 8
  %6 = call i64 @kvm_check_request(i32 %4, %struct.kvm_vcpu* %5)
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %8, label %11

8:                                                ; preds = %1
  %9 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %2, align 8
  %10 = call i32 @update_timer_ints(%struct.kvm_vcpu* %9)
  br label %11

11:                                               ; preds = %8, %1
  %12 = load i32, i32* @KVM_REQ_WATCHDOG, align 4
  %13 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %2, align 8
  %14 = call i64 @kvm_check_request(i32 %12, %struct.kvm_vcpu* %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %22

16:                                               ; preds = %11
  %17 = load i32, i32* @KVM_EXIT_WATCHDOG, align 4
  %18 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %2, align 8
  %19 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %18, i32 0, i32 0
  %20 = load %struct.TYPE_6__*, %struct.TYPE_6__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %20, i32 0, i32 0
  store i32 %17, i32* %21, align 8
  store i32 0, i32* %3, align 4
  br label %22

22:                                               ; preds = %16, %11
  %23 = load i32, i32* @KVM_REQ_EPR_EXIT, align 4
  %24 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %2, align 8
  %25 = call i64 @kvm_check_request(i32 %23, %struct.kvm_vcpu* %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %41

27:                                               ; preds = %22
  %28 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %2, align 8
  %29 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %28, i32 0, i32 0
  %30 = load %struct.TYPE_6__*, %struct.TYPE_6__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %30, i32 0, i32 1
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 0
  store i64 0, i64* %32, align 8
  %33 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %2, align 8
  %34 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %33, i32 0, i32 1
  %35 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %34, i32 0, i32 0
  store i32 1, i32* %35, align 8
  %36 = load i32, i32* @KVM_EXIT_EPR, align 4
  %37 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %2, align 8
  %38 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %37, i32 0, i32 0
  %39 = load %struct.TYPE_6__*, %struct.TYPE_6__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %39, i32 0, i32 0
  store i32 %36, i32* %40, align 8
  store i32 0, i32* %3, align 4
  br label %41

41:                                               ; preds = %27, %22
  %42 = load i32, i32* %3, align 4
  ret i32 %42
}

declare dso_local i64 @kvm_check_request(i32, %struct.kvm_vcpu*) #1

declare dso_local i32 @update_timer_ints(%struct.kvm_vcpu*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
