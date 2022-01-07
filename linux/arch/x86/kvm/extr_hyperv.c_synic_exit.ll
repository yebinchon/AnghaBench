; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/kvm/extr_hyperv.c_synic_exit.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/kvm/extr_hyperv.c_synic_exit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvm_vcpu_hv_synic = type { i32, i32, i32 }
%struct.kvm_vcpu = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.kvm_vcpu_hv }
%struct.kvm_vcpu_hv = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { %struct.TYPE_7__, i32 }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32, i32, i32, i32 }

@KVM_EXIT_HYPERV_SYNIC = common dso_local global i32 0, align 4
@KVM_REQ_HV_EXIT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.kvm_vcpu_hv_synic*, i32)* @synic_exit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @synic_exit(%struct.kvm_vcpu_hv_synic* %0, i32 %1) #0 {
  %3 = alloca %struct.kvm_vcpu_hv_synic*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.kvm_vcpu*, align 8
  %6 = alloca %struct.kvm_vcpu_hv*, align 8
  store %struct.kvm_vcpu_hv_synic* %0, %struct.kvm_vcpu_hv_synic** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.kvm_vcpu_hv_synic*, %struct.kvm_vcpu_hv_synic** %3, align 8
  %8 = call %struct.kvm_vcpu* @synic_to_vcpu(%struct.kvm_vcpu_hv_synic* %7)
  store %struct.kvm_vcpu* %8, %struct.kvm_vcpu** %5, align 8
  %9 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %5, align 8
  %10 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %10, i32 0, i32 0
  store %struct.kvm_vcpu_hv* %11, %struct.kvm_vcpu_hv** %6, align 8
  %12 = load i32, i32* @KVM_EXIT_HYPERV_SYNIC, align 4
  %13 = load %struct.kvm_vcpu_hv*, %struct.kvm_vcpu_hv** %6, align 8
  %14 = getelementptr inbounds %struct.kvm_vcpu_hv, %struct.kvm_vcpu_hv* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %14, i32 0, i32 1
  store i32 %12, i32* %15, align 4
  %16 = load i32, i32* %4, align 4
  %17 = load %struct.kvm_vcpu_hv*, %struct.kvm_vcpu_hv** %6, align 8
  %18 = getelementptr inbounds %struct.kvm_vcpu_hv, %struct.kvm_vcpu_hv* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %20, i32 0, i32 3
  store i32 %16, i32* %21, align 4
  %22 = load %struct.kvm_vcpu_hv_synic*, %struct.kvm_vcpu_hv_synic** %3, align 8
  %23 = getelementptr inbounds %struct.kvm_vcpu_hv_synic, %struct.kvm_vcpu_hv_synic* %22, i32 0, i32 2
  %24 = load i32, i32* %23, align 4
  %25 = load %struct.kvm_vcpu_hv*, %struct.kvm_vcpu_hv** %6, align 8
  %26 = getelementptr inbounds %struct.kvm_vcpu_hv, %struct.kvm_vcpu_hv* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %28, i32 0, i32 2
  store i32 %24, i32* %29, align 4
  %30 = load %struct.kvm_vcpu_hv_synic*, %struct.kvm_vcpu_hv_synic** %3, align 8
  %31 = getelementptr inbounds %struct.kvm_vcpu_hv_synic, %struct.kvm_vcpu_hv_synic* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = load %struct.kvm_vcpu_hv*, %struct.kvm_vcpu_hv** %6, align 8
  %34 = getelementptr inbounds %struct.kvm_vcpu_hv, %struct.kvm_vcpu_hv* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %36, i32 0, i32 1
  store i32 %32, i32* %37, align 4
  %38 = load %struct.kvm_vcpu_hv_synic*, %struct.kvm_vcpu_hv_synic** %3, align 8
  %39 = getelementptr inbounds %struct.kvm_vcpu_hv_synic, %struct.kvm_vcpu_hv_synic* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = load %struct.kvm_vcpu_hv*, %struct.kvm_vcpu_hv** %6, align 8
  %42 = getelementptr inbounds %struct.kvm_vcpu_hv, %struct.kvm_vcpu_hv* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %44, i32 0, i32 0
  store i32 %40, i32* %45, align 4
  %46 = load i32, i32* @KVM_REQ_HV_EXIT, align 4
  %47 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %5, align 8
  %48 = call i32 @kvm_make_request(i32 %46, %struct.kvm_vcpu* %47)
  ret void
}

declare dso_local %struct.kvm_vcpu* @synic_to_vcpu(%struct.kvm_vcpu_hv_synic*) #1

declare dso_local i32 @kvm_make_request(i32, %struct.kvm_vcpu*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
