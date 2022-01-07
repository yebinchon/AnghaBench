; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/kvm/extr_book3s_xics.c_kvmppc_xics_get_icp.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/kvm/extr_book3s_xics.c_kvmppc_xics_get_icp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvm_vcpu = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.kvmppc_icp* }
%struct.kvmppc_icp = type { %union.kvmppc_icp_state }
%union.kvmppc_icp_state = type { i64 }

@KVM_REG_PPC_ICP_CPPR_SHIFT = common dso_local global i32 0, align 4
@KVM_REG_PPC_ICP_XISR_SHIFT = common dso_local global i32 0, align 4
@KVM_REG_PPC_ICP_MFRR_SHIFT = common dso_local global i32 0, align 4
@KVM_REG_PPC_ICP_PPRI_SHIFT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @kvmppc_xics_get_icp(%struct.kvm_vcpu* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.kvm_vcpu*, align 8
  %4 = alloca %struct.kvmppc_icp*, align 8
  %5 = alloca %union.kvmppc_icp_state, align 8
  store %struct.kvm_vcpu* %0, %struct.kvm_vcpu** %3, align 8
  %6 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %7 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %6, i32 0, i32 0
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 0
  %9 = load %struct.kvmppc_icp*, %struct.kvmppc_icp** %8, align 8
  store %struct.kvmppc_icp* %9, %struct.kvmppc_icp** %4, align 8
  %10 = load %struct.kvmppc_icp*, %struct.kvmppc_icp** %4, align 8
  %11 = icmp ne %struct.kvmppc_icp* %10, null
  br i1 %11, label %13, label %12

12:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %41

13:                                               ; preds = %1
  %14 = load %struct.kvmppc_icp*, %struct.kvmppc_icp** %4, align 8
  %15 = getelementptr inbounds %struct.kvmppc_icp, %struct.kvmppc_icp* %14, i32 0, i32 0
  %16 = bitcast %union.kvmppc_icp_state* %5 to i8*
  %17 = bitcast %union.kvmppc_icp_state* %15 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %16, i8* align 8 %17, i64 8, i1 false)
  %18 = bitcast %union.kvmppc_icp_state* %5 to i64*
  %19 = load i64, i64* %18, align 8
  %20 = trunc i64 %19 to i32
  %21 = load i32, i32* @KVM_REG_PPC_ICP_CPPR_SHIFT, align 4
  %22 = shl i32 %20, %21
  %23 = bitcast %union.kvmppc_icp_state* %5 to i64*
  %24 = load i64, i64* %23, align 8
  %25 = trunc i64 %24 to i32
  %26 = load i32, i32* @KVM_REG_PPC_ICP_XISR_SHIFT, align 4
  %27 = shl i32 %25, %26
  %28 = or i32 %22, %27
  %29 = bitcast %union.kvmppc_icp_state* %5 to i64*
  %30 = load i64, i64* %29, align 8
  %31 = trunc i64 %30 to i32
  %32 = load i32, i32* @KVM_REG_PPC_ICP_MFRR_SHIFT, align 4
  %33 = shl i32 %31, %32
  %34 = or i32 %28, %33
  %35 = bitcast %union.kvmppc_icp_state* %5 to i64*
  %36 = load i64, i64* %35, align 8
  %37 = trunc i64 %36 to i32
  %38 = load i32, i32* @KVM_REG_PPC_ICP_PPRI_SHIFT, align 4
  %39 = shl i32 %37, %38
  %40 = or i32 %34, %39
  store i32 %40, i32* %2, align 4
  br label %41

41:                                               ; preds = %13, %12
  %42 = load i32, i32* %2, align 4
  ret i32 %42
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
