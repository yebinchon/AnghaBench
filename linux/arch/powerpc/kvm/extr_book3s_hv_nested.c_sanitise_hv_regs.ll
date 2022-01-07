; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/kvm/extr_book3s_hv_nested.c_sanitise_hv_regs.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/kvm/extr_book3s_hv_nested.c_sanitise_hv_regs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvm_vcpu = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.hv_guest_state = type { i32, i32, i32 }

@HFSCR_INTR_CAUSE = common dso_local global i32 0, align 4
@DAWRX_HYP = common dso_local global i32 0, align 4
@CIABR_PRIV = common dso_local global i32 0, align 4
@CIABR_PRIV_HYPER = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.kvm_vcpu*, %struct.hv_guest_state*)* @sanitise_hv_regs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sanitise_hv_regs(%struct.kvm_vcpu* %0, %struct.hv_guest_state* %1) #0 {
  %3 = alloca %struct.kvm_vcpu*, align 8
  %4 = alloca %struct.hv_guest_state*, align 8
  store %struct.kvm_vcpu* %0, %struct.kvm_vcpu** %3, align 8
  store %struct.hv_guest_state* %1, %struct.hv_guest_state** %4, align 8
  %5 = load i32, i32* @HFSCR_INTR_CAUSE, align 4
  %6 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %7 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %6, i32 0, i32 0
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = or i32 %5, %9
  %11 = load %struct.hv_guest_state*, %struct.hv_guest_state** %4, align 8
  %12 = getelementptr inbounds %struct.hv_guest_state, %struct.hv_guest_state* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = and i32 %13, %10
  store i32 %14, i32* %12, align 4
  %15 = load i32, i32* @DAWRX_HYP, align 4
  %16 = xor i32 %15, -1
  %17 = load %struct.hv_guest_state*, %struct.hv_guest_state** %4, align 8
  %18 = getelementptr inbounds %struct.hv_guest_state, %struct.hv_guest_state* %17, i32 0, i32 2
  %19 = load i32, i32* %18, align 4
  %20 = and i32 %19, %16
  store i32 %20, i32* %18, align 4
  %21 = load %struct.hv_guest_state*, %struct.hv_guest_state** %4, align 8
  %22 = getelementptr inbounds %struct.hv_guest_state, %struct.hv_guest_state* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = load i32, i32* @CIABR_PRIV, align 4
  %25 = and i32 %23, %24
  %26 = load i32, i32* @CIABR_PRIV_HYPER, align 4
  %27 = icmp eq i32 %25, %26
  br i1 %27, label %28, label %35

28:                                               ; preds = %2
  %29 = load i32, i32* @CIABR_PRIV, align 4
  %30 = xor i32 %29, -1
  %31 = load %struct.hv_guest_state*, %struct.hv_guest_state** %4, align 8
  %32 = getelementptr inbounds %struct.hv_guest_state, %struct.hv_guest_state* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = and i32 %33, %30
  store i32 %34, i32* %32, align 4
  br label %35

35:                                               ; preds = %28, %2
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
