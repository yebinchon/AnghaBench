; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/kvm/extr_booke.c_kvmppc_set_msr.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/kvm/extr_booke.c_kvmppc_set_msr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvm_vcpu = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }

@MSR_GS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @kvmppc_set_msr(%struct.kvm_vcpu* %0, i32 %1) #0 {
  %3 = alloca %struct.kvm_vcpu*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.kvm_vcpu* %0, %struct.kvm_vcpu** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %7 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %6, i32 0, i32 0
  %8 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %7, i32 0, i32 0
  %9 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  store i32 %11, i32* %5, align 4
  %12 = load i32, i32* %4, align 4
  %13 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %14 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 0
  %16 = load %struct.TYPE_3__*, %struct.TYPE_3__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 0
  store i32 %12, i32* %17, align 4
  %18 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %19 = load i32, i32* %5, align 4
  %20 = call i32 @kvmppc_mmu_msr_notify(%struct.kvm_vcpu* %18, i32 %19)
  %21 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %22 = call i32 @kvmppc_vcpu_sync_spe(%struct.kvm_vcpu* %21)
  %23 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %24 = call i32 @kvmppc_vcpu_sync_fpu(%struct.kvm_vcpu* %23)
  %25 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %26 = call i32 @kvmppc_vcpu_sync_debug(%struct.kvm_vcpu* %25)
  ret void
}

declare dso_local i32 @kvmppc_mmu_msr_notify(%struct.kvm_vcpu*, i32) #1

declare dso_local i32 @kvmppc_vcpu_sync_spe(%struct.kvm_vcpu*) #1

declare dso_local i32 @kvmppc_vcpu_sync_fpu(%struct.kvm_vcpu*) #1

declare dso_local i32 @kvmppc_vcpu_sync_debug(%struct.kvm_vcpu*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
