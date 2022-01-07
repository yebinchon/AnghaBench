; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/kvm/extr_e500mc.c_kvmppc_core_get_sregs_e500mc.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/kvm/extr_e500mc.c_kvmppc_core_get_sregs_e500mc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvm_vcpu = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i32* }
%struct.kvm_sregs = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32, i32*, %struct.TYPE_7__, i32 }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32, i32, i32, i64 }
%struct.kvmppc_vcpu_e500 = type { i32, i32, i32 }

@KVM_SREGS_E_ARCH206_MMU = common dso_local global i32 0, align 4
@KVM_SREGS_E_PM = common dso_local global i32 0, align 4
@KVM_SREGS_E_PC = common dso_local global i32 0, align 4
@KVM_SREGS_E_IMPL_FSL = common dso_local global i32 0, align 4
@BOOKE_IRQPRIO_PERFORMANCE_MONITOR = common dso_local global i64 0, align 8
@BOOKE_IRQPRIO_DBELL = common dso_local global i64 0, align 8
@BOOKE_IRQPRIO_DBELL_CRIT = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.kvm_vcpu*, %struct.kvm_sregs*)* @kvmppc_core_get_sregs_e500mc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @kvmppc_core_get_sregs_e500mc(%struct.kvm_vcpu* %0, %struct.kvm_sregs* %1) #0 {
  %3 = alloca %struct.kvm_vcpu*, align 8
  %4 = alloca %struct.kvm_sregs*, align 8
  %5 = alloca %struct.kvmppc_vcpu_e500*, align 8
  store %struct.kvm_vcpu* %0, %struct.kvm_vcpu** %3, align 8
  store %struct.kvm_sregs* %1, %struct.kvm_sregs** %4, align 8
  %6 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %7 = call %struct.kvmppc_vcpu_e500* @to_e500(%struct.kvm_vcpu* %6)
  store %struct.kvmppc_vcpu_e500* %7, %struct.kvmppc_vcpu_e500** %5, align 8
  %8 = load i32, i32* @KVM_SREGS_E_ARCH206_MMU, align 4
  %9 = load i32, i32* @KVM_SREGS_E_PM, align 4
  %10 = or i32 %8, %9
  %11 = load i32, i32* @KVM_SREGS_E_PC, align 4
  %12 = or i32 %10, %11
  %13 = load %struct.kvm_sregs*, %struct.kvm_sregs** %4, align 8
  %14 = getelementptr inbounds %struct.kvm_sregs, %struct.kvm_sregs* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = or i32 %17, %12
  store i32 %18, i32* %16, align 8
  %19 = load i32, i32* @KVM_SREGS_E_IMPL_FSL, align 4
  %20 = load %struct.kvm_sregs*, %struct.kvm_sregs** %4, align 8
  %21 = getelementptr inbounds %struct.kvm_sregs, %struct.kvm_sregs* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %22, i32 0, i32 3
  store i32 %19, i32* %23, align 8
  %24 = load %struct.kvm_sregs*, %struct.kvm_sregs** %4, align 8
  %25 = getelementptr inbounds %struct.kvm_sregs, %struct.kvm_sregs* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %26, i32 0, i32 2
  %28 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %28, i32 0, i32 3
  store i64 0, i64* %29, align 8
  %30 = load %struct.kvmppc_vcpu_e500*, %struct.kvmppc_vcpu_e500** %5, align 8
  %31 = getelementptr inbounds %struct.kvmppc_vcpu_e500, %struct.kvmppc_vcpu_e500* %30, i32 0, i32 2
  %32 = load i32, i32* %31, align 4
  %33 = load %struct.kvm_sregs*, %struct.kvm_sregs** %4, align 8
  %34 = getelementptr inbounds %struct.kvm_sregs, %struct.kvm_sregs* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %35, i32 0, i32 2
  %37 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %37, i32 0, i32 2
  store i32 %32, i32* %38, align 8
  %39 = load %struct.kvmppc_vcpu_e500*, %struct.kvmppc_vcpu_e500** %5, align 8
  %40 = getelementptr inbounds %struct.kvmppc_vcpu_e500, %struct.kvmppc_vcpu_e500* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = load %struct.kvm_sregs*, %struct.kvm_sregs** %4, align 8
  %43 = getelementptr inbounds %struct.kvm_sregs, %struct.kvm_sregs* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %44, i32 0, i32 2
  %46 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %46, i32 0, i32 1
  store i32 %41, i32* %47, align 4
  %48 = load %struct.kvmppc_vcpu_e500*, %struct.kvmppc_vcpu_e500** %5, align 8
  %49 = getelementptr inbounds %struct.kvmppc_vcpu_e500, %struct.kvmppc_vcpu_e500* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = load %struct.kvm_sregs*, %struct.kvm_sregs** %4, align 8
  %52 = getelementptr inbounds %struct.kvm_sregs, %struct.kvm_sregs* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %53, i32 0, i32 2
  %55 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %55, i32 0, i32 0
  store i32 %50, i32* %56, align 8
  %57 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %58 = load %struct.kvm_sregs*, %struct.kvm_sregs** %4, align 8
  %59 = call i32 @kvmppc_get_sregs_e500_tlb(%struct.kvm_vcpu* %57, %struct.kvm_sregs* %58)
  %60 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %61 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %60, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %61, i32 0, i32 0
  %63 = load i32*, i32** %62, align 8
  %64 = load i64, i64* @BOOKE_IRQPRIO_PERFORMANCE_MONITOR, align 8
  %65 = getelementptr inbounds i32, i32* %63, i64 %64
  %66 = load i32, i32* %65, align 4
  %67 = load %struct.kvm_sregs*, %struct.kvm_sregs** %4, align 8
  %68 = getelementptr inbounds %struct.kvm_sregs, %struct.kvm_sregs* %67, i32 0, i32 0
  %69 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %68, i32 0, i32 0
  %70 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %69, i32 0, i32 1
  %71 = load i32*, i32** %70, align 8
  %72 = getelementptr inbounds i32, i32* %71, i64 3
  store i32 %66, i32* %72, align 4
  %73 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %74 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %73, i32 0, i32 0
  %75 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %74, i32 0, i32 0
  %76 = load i32*, i32** %75, align 8
  %77 = load i64, i64* @BOOKE_IRQPRIO_DBELL, align 8
  %78 = getelementptr inbounds i32, i32* %76, i64 %77
  %79 = load i32, i32* %78, align 4
  %80 = load %struct.kvm_sregs*, %struct.kvm_sregs** %4, align 8
  %81 = getelementptr inbounds %struct.kvm_sregs, %struct.kvm_sregs* %80, i32 0, i32 0
  %82 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %81, i32 0, i32 0
  %83 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %82, i32 0, i32 1
  %84 = load i32*, i32** %83, align 8
  %85 = getelementptr inbounds i32, i32* %84, i64 4
  store i32 %79, i32* %85, align 4
  %86 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %87 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %86, i32 0, i32 0
  %88 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %87, i32 0, i32 0
  %89 = load i32*, i32** %88, align 8
  %90 = load i64, i64* @BOOKE_IRQPRIO_DBELL_CRIT, align 8
  %91 = getelementptr inbounds i32, i32* %89, i64 %90
  %92 = load i32, i32* %91, align 4
  %93 = load %struct.kvm_sregs*, %struct.kvm_sregs** %4, align 8
  %94 = getelementptr inbounds %struct.kvm_sregs, %struct.kvm_sregs* %93, i32 0, i32 0
  %95 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %94, i32 0, i32 0
  %96 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %95, i32 0, i32 1
  %97 = load i32*, i32** %96, align 8
  %98 = getelementptr inbounds i32, i32* %97, i64 5
  store i32 %92, i32* %98, align 4
  %99 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %100 = load %struct.kvm_sregs*, %struct.kvm_sregs** %4, align 8
  %101 = call i32 @kvmppc_get_sregs_ivor(%struct.kvm_vcpu* %99, %struct.kvm_sregs* %100)
  ret i32 %101
}

declare dso_local %struct.kvmppc_vcpu_e500* @to_e500(%struct.kvm_vcpu*) #1

declare dso_local i32 @kvmppc_get_sregs_e500_tlb(%struct.kvm_vcpu*, %struct.kvm_sregs*) #1

declare dso_local i32 @kvmppc_get_sregs_ivor(%struct.kvm_vcpu*, %struct.kvm_sregs*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
