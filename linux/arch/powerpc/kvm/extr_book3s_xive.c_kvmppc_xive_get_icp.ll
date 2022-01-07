; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/kvm/extr_book3s_xive.c_kvmppc_xive_get_icp.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/kvm/extr_book3s_xive.c_kvmppc_xive_get_icp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvm_vcpu = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.kvmppc_xive_vcpu* }
%struct.kvmppc_xive_vcpu = type { i64, i64 }

@KVM_REG_PPC_ICP_CPPR_SHIFT = common dso_local global i32 0, align 4
@KVM_REG_PPC_ICP_MFRR_SHIFT = common dso_local global i32 0, align 4
@KVM_REG_PPC_ICP_PPRI_SHIFT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @kvmppc_xive_get_icp(%struct.kvm_vcpu* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.kvm_vcpu*, align 8
  %4 = alloca %struct.kvmppc_xive_vcpu*, align 8
  store %struct.kvm_vcpu* %0, %struct.kvm_vcpu** %3, align 8
  %5 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %6 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %5, i32 0, i32 0
  %7 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %6, i32 0, i32 0
  %8 = load %struct.kvmppc_xive_vcpu*, %struct.kvmppc_xive_vcpu** %7, align 8
  store %struct.kvmppc_xive_vcpu* %8, %struct.kvmppc_xive_vcpu** %4, align 8
  %9 = load %struct.kvmppc_xive_vcpu*, %struct.kvmppc_xive_vcpu** %4, align 8
  %10 = icmp ne %struct.kvmppc_xive_vcpu* %9, null
  br i1 %10, label %12, label %11

11:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %29

12:                                               ; preds = %1
  %13 = load %struct.kvmppc_xive_vcpu*, %struct.kvmppc_xive_vcpu** %4, align 8
  %14 = getelementptr inbounds %struct.kvmppc_xive_vcpu, %struct.kvmppc_xive_vcpu* %13, i32 0, i32 1
  %15 = load i64, i64* %14, align 8
  %16 = trunc i64 %15 to i32
  %17 = load i32, i32* @KVM_REG_PPC_ICP_CPPR_SHIFT, align 4
  %18 = shl i32 %16, %17
  %19 = load %struct.kvmppc_xive_vcpu*, %struct.kvmppc_xive_vcpu** %4, align 8
  %20 = getelementptr inbounds %struct.kvmppc_xive_vcpu, %struct.kvmppc_xive_vcpu* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = trunc i64 %21 to i32
  %23 = load i32, i32* @KVM_REG_PPC_ICP_MFRR_SHIFT, align 4
  %24 = shl i32 %22, %23
  %25 = or i32 %18, %24
  %26 = load i32, i32* @KVM_REG_PPC_ICP_PPRI_SHIFT, align 4
  %27 = shl i32 255, %26
  %28 = or i32 %25, %27
  store i32 %28, i32* %2, align 4
  br label %29

29:                                               ; preds = %12, %11
  %30 = load i32, i32* %2, align 4
  ret i32 %30
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
