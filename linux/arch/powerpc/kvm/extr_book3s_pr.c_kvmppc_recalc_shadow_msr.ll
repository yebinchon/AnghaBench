; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/kvm/extr_book3s_pr.c_kvmppc_recalc_shadow_msr.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/kvm/extr_book3s_pr.c_kvmppc_recalc_shadow_msr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvm_vcpu = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32 }

@MSR_FE0 = common dso_local global i32 0, align 4
@MSR_FE1 = common dso_local global i32 0, align 4
@MSR_SF = common dso_local global i32 0, align 4
@MSR_SE = common dso_local global i32 0, align 4
@MSR_BE = common dso_local global i32 0, align 4
@MSR_LE = common dso_local global i32 0, align 4
@MSR_ME = common dso_local global i32 0, align 4
@MSR_RI = common dso_local global i32 0, align 4
@MSR_IR = common dso_local global i32 0, align 4
@MSR_DR = common dso_local global i32 0, align 4
@MSR_PR = common dso_local global i32 0, align 4
@MSR_EE = common dso_local global i32 0, align 4
@MSR_HV = common dso_local global i32 0, align 4
@MSR_ISF = common dso_local global i32 0, align 4
@MSR_TM = common dso_local global i32 0, align 4
@MSR_TS_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.kvm_vcpu*)* @kvmppc_recalc_shadow_msr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @kvmppc_recalc_shadow_msr(%struct.kvm_vcpu* %0) #0 {
  %2 = alloca %struct.kvm_vcpu*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.kvm_vcpu* %0, %struct.kvm_vcpu** %2, align 8
  %5 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %2, align 8
  %6 = call i32 @kvmppc_get_msr(%struct.kvm_vcpu* %5)
  store i32 %6, i32* %3, align 4
  %7 = load i32, i32* %3, align 4
  store i32 %7, i32* %4, align 4
  %8 = load i32, i32* @MSR_FE0, align 4
  %9 = load i32, i32* @MSR_FE1, align 4
  %10 = or i32 %8, %9
  %11 = load i32, i32* @MSR_SF, align 4
  %12 = or i32 %10, %11
  %13 = load i32, i32* @MSR_SE, align 4
  %14 = or i32 %12, %13
  %15 = load i32, i32* @MSR_BE, align 4
  %16 = or i32 %14, %15
  %17 = load i32, i32* @MSR_LE, align 4
  %18 = or i32 %16, %17
  %19 = load i32, i32* %4, align 4
  %20 = and i32 %19, %18
  store i32 %20, i32* %4, align 4
  %21 = load i32, i32* @MSR_ME, align 4
  %22 = load i32, i32* @MSR_RI, align 4
  %23 = or i32 %21, %22
  %24 = load i32, i32* @MSR_IR, align 4
  %25 = or i32 %23, %24
  %26 = load i32, i32* @MSR_DR, align 4
  %27 = or i32 %25, %26
  %28 = load i32, i32* @MSR_PR, align 4
  %29 = or i32 %27, %28
  %30 = load i32, i32* @MSR_EE, align 4
  %31 = or i32 %29, %30
  %32 = load i32, i32* %4, align 4
  %33 = or i32 %32, %31
  store i32 %33, i32* %4, align 4
  %34 = load i32, i32* %3, align 4
  %35 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %2, align 8
  %36 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = and i32 %34, %38
  %40 = load i32, i32* %4, align 4
  %41 = or i32 %40, %39
  store i32 %41, i32* %4, align 4
  %42 = load i32, i32* %4, align 4
  %43 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %2, align 8
  %44 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i32 0, i32 1
  store i32 %42, i32* %45, align 4
  ret void
}

declare dso_local i32 @kvmppc_get_msr(%struct.kvm_vcpu*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
