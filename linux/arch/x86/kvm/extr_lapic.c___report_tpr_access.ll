; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/kvm/extr_lapic.c___report_tpr_access.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/kvm/extr_lapic.c___report_tpr_access.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvm_lapic = type { %struct.kvm_vcpu* }
%struct.kvm_vcpu = type { %struct.kvm_run* }
%struct.kvm_run = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32 }

@KVM_REQ_REPORT_TPR_ACCESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.kvm_lapic*, i32)* @__report_tpr_access to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @__report_tpr_access(%struct.kvm_lapic* %0, i32 %1) #0 {
  %3 = alloca %struct.kvm_lapic*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.kvm_vcpu*, align 8
  %6 = alloca %struct.kvm_run*, align 8
  store %struct.kvm_lapic* %0, %struct.kvm_lapic** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.kvm_lapic*, %struct.kvm_lapic** %3, align 8
  %8 = getelementptr inbounds %struct.kvm_lapic, %struct.kvm_lapic* %7, i32 0, i32 0
  %9 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %8, align 8
  store %struct.kvm_vcpu* %9, %struct.kvm_vcpu** %5, align 8
  %10 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %5, align 8
  %11 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %10, i32 0, i32 0
  %12 = load %struct.kvm_run*, %struct.kvm_run** %11, align 8
  store %struct.kvm_run* %12, %struct.kvm_run** %6, align 8
  %13 = load i32, i32* @KVM_REQ_REPORT_TPR_ACCESS, align 4
  %14 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %5, align 8
  %15 = call i32 @kvm_make_request(i32 %13, %struct.kvm_vcpu* %14)
  %16 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %5, align 8
  %17 = call i32 @kvm_rip_read(%struct.kvm_vcpu* %16)
  %18 = load %struct.kvm_run*, %struct.kvm_run** %6, align 8
  %19 = getelementptr inbounds %struct.kvm_run, %struct.kvm_run* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 1
  store i32 %17, i32* %20, align 4
  %21 = load i32, i32* %4, align 4
  %22 = load %struct.kvm_run*, %struct.kvm_run** %6, align 8
  %23 = getelementptr inbounds %struct.kvm_run, %struct.kvm_run* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  store i32 %21, i32* %24, align 4
  ret void
}

declare dso_local i32 @kvm_make_request(i32, %struct.kvm_vcpu*) #1

declare dso_local i32 @kvm_rip_read(%struct.kvm_vcpu*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
