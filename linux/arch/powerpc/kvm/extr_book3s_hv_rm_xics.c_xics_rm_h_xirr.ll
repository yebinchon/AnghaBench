; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/kvm/extr_book3s_hv_rm_xics.c_xics_rm_h_xirr.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/kvm/extr_book3s_hv_rm_xics.c_xics_rm_h_xirr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvm_vcpu = type { %struct.TYPE_8__, %struct.TYPE_6__* }
%struct.TYPE_8__ = type { %struct.TYPE_7__, %struct.kvmppc_icp* }
%struct.TYPE_7__ = type { i32* }
%struct.kvmppc_icp = type { i32, i32 }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.kvmppc_xics* }
%struct.kvmppc_xics = type { i32 }
%union.kvmppc_icp_state = type { i32 }

@H_TOO_HARD = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @xics_rm_h_xirr(%struct.kvm_vcpu* %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.kvm_vcpu*, align 8
  %4 = alloca %union.kvmppc_icp_state, align 4
  %5 = alloca %union.kvmppc_icp_state, align 4
  %6 = alloca %struct.kvmppc_xics*, align 8
  %7 = alloca %struct.kvmppc_icp*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %union.kvmppc_icp_state, align 4
  store %struct.kvm_vcpu* %0, %struct.kvm_vcpu** %3, align 8
  %10 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %11 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %10, i32 0, i32 1
  %12 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %13, i32 0, i32 0
  %15 = load %struct.kvmppc_xics*, %struct.kvmppc_xics** %14, align 8
  store %struct.kvmppc_xics* %15, %struct.kvmppc_xics** %6, align 8
  %16 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %17 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %17, i32 0, i32 1
  %19 = load %struct.kvmppc_icp*, %struct.kvmppc_icp** %18, align 8
  store %struct.kvmppc_icp* %19, %struct.kvmppc_icp** %7, align 8
  %20 = load %struct.kvmppc_xics*, %struct.kvmppc_xics** %6, align 8
  %21 = icmp ne %struct.kvmppc_xics* %20, null
  br i1 %21, label %22, label %27

22:                                               ; preds = %1
  %23 = load %struct.kvmppc_xics*, %struct.kvmppc_xics** %6, align 8
  %24 = getelementptr inbounds %struct.kvmppc_xics, %struct.kvmppc_xics* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %29, label %27

27:                                               ; preds = %22, %1
  %28 = load i64, i64* @H_TOO_HARD, align 8
  store i64 %28, i64* %2, align 8
  br label %80

29:                                               ; preds = %22
  %30 = load %struct.kvmppc_icp*, %struct.kvmppc_icp** %7, align 8
  %31 = getelementptr inbounds %struct.kvmppc_icp, %struct.kvmppc_icp* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @icp_rm_clr_vcpu_irq(i32 %32)
  br label %34

34:                                               ; preds = %60, %29
  %35 = load %struct.kvmppc_icp*, %struct.kvmppc_icp** %7, align 8
  %36 = getelementptr inbounds %struct.kvmppc_icp, %struct.kvmppc_icp* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @READ_ONCE(i32 %37)
  %39 = getelementptr inbounds %union.kvmppc_icp_state, %union.kvmppc_icp_state* %9, i32 0, i32 0
  store i32 %38, i32* %39, align 4
  %40 = bitcast %union.kvmppc_icp_state* %5 to i8*
  %41 = bitcast %union.kvmppc_icp_state* %9 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %40, i8* align 4 %41, i64 4, i1 false)
  %42 = bitcast %union.kvmppc_icp_state* %4 to i8*
  %43 = bitcast %union.kvmppc_icp_state* %5 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %42, i8* align 4 %43, i64 4, i1 false)
  %44 = bitcast %union.kvmppc_icp_state* %4 to i32*
  %45 = load i32, i32* %44, align 4
  %46 = bitcast %union.kvmppc_icp_state* %4 to i32*
  %47 = load i32, i32* %46, align 4
  %48 = shl i32 %47, 24
  %49 = or i32 %45, %48
  store i32 %49, i32* %8, align 4
  %50 = bitcast %union.kvmppc_icp_state* %4 to i32*
  %51 = load i32, i32* %50, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %54, label %53

53:                                               ; preds = %34
  br label %69

54:                                               ; preds = %34
  %55 = bitcast %union.kvmppc_icp_state* %5 to i32*
  %56 = load i32, i32* %55, align 4
  %57 = bitcast %union.kvmppc_icp_state* %5 to i32*
  store i32 %56, i32* %57, align 4
  %58 = bitcast %union.kvmppc_icp_state* %5 to i32*
  store i32 255, i32* %58, align 4
  %59 = bitcast %union.kvmppc_icp_state* %5 to i32*
  store i32 0, i32* %59, align 4
  br label %60

60:                                               ; preds = %54
  %61 = load %struct.kvmppc_icp*, %struct.kvmppc_icp** %7, align 8
  %62 = getelementptr inbounds %union.kvmppc_icp_state, %union.kvmppc_icp_state* %4, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = getelementptr inbounds %union.kvmppc_icp_state, %union.kvmppc_icp_state* %5, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = call i32 @icp_rm_try_update(%struct.kvmppc_icp* %61, i32 %63, i32 %65)
  %67 = icmp ne i32 %66, 0
  %68 = xor i1 %67, true
  br i1 %68, label %34, label %69

69:                                               ; preds = %60, %53
  %70 = load i32, i32* %8, align 4
  %71 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %72 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %71, i32 0, i32 0
  %73 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %72, i32 0, i32 0
  %74 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %73, i32 0, i32 0
  %75 = load i32*, i32** %74, align 8
  %76 = getelementptr inbounds i32, i32* %75, i64 4
  store i32 %70, i32* %76, align 4
  %77 = load %struct.kvmppc_xics*, %struct.kvmppc_xics** %6, align 8
  %78 = load %struct.kvmppc_icp*, %struct.kvmppc_icp** %7, align 8
  %79 = call i64 @check_too_hard(%struct.kvmppc_xics* %77, %struct.kvmppc_icp* %78)
  store i64 %79, i64* %2, align 8
  br label %80

80:                                               ; preds = %69, %27
  %81 = load i64, i64* %2, align 8
  ret i64 %81
}

declare dso_local i32 @icp_rm_clr_vcpu_irq(i32) #1

declare dso_local i32 @READ_ONCE(i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @icp_rm_try_update(%struct.kvmppc_icp*, i32, i32) #1

declare dso_local i64 @check_too_hard(%struct.kvmppc_xics*, %struct.kvmppc_icp*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
