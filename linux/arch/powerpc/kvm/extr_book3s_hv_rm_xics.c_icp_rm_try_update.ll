; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/kvm/extr_book3s_hv_rm_xics.c_icp_rm_try_update.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/kvm/extr_book3s_hv_rm_xics.c_icp_rm_try_update.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { %struct.kvm_vcpu* }
%struct.kvm_vcpu = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i32, %union.kvmppc_icp_state }
%union.kvmppc_icp_state = type { i64 }
%struct.kvmppc_icp = type { i32, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }

@local_paca = common dso_local global %struct.TYPE_10__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.kvmppc_icp*, i64, i64)* @icp_rm_try_update to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @icp_rm_try_update(%struct.kvmppc_icp* %0, i64 %1, i64 %2) #0 {
  %4 = alloca %union.kvmppc_icp_state, align 8
  %5 = alloca %union.kvmppc_icp_state, align 8
  %6 = alloca %struct.kvmppc_icp*, align 8
  %7 = alloca %struct.kvm_vcpu*, align 8
  %8 = alloca i32, align 4
  %9 = getelementptr inbounds %union.kvmppc_icp_state, %union.kvmppc_icp_state* %4, i32 0, i32 0
  store i64 %1, i64* %9, align 8
  %10 = getelementptr inbounds %union.kvmppc_icp_state, %union.kvmppc_icp_state* %5, i32 0, i32 0
  store i64 %2, i64* %10, align 8
  store %struct.kvmppc_icp* %0, %struct.kvmppc_icp** %6, align 8
  %11 = load %struct.TYPE_10__*, %struct.TYPE_10__** @local_paca, align 8
  %12 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %12, i32 0, i32 0
  %14 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %13, align 8
  store %struct.kvm_vcpu* %14, %struct.kvm_vcpu** %7, align 8
  %15 = bitcast %union.kvmppc_icp_state* %5 to i64*
  %16 = load i64, i64* %15, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %24

18:                                               ; preds = %3
  %19 = bitcast %union.kvmppc_icp_state* %5 to i64*
  %20 = load i64, i64* %19, align 8
  %21 = bitcast %union.kvmppc_icp_state* %5 to i64*
  %22 = load i64, i64* %21, align 8
  %23 = icmp slt i64 %20, %22
  br label %24

24:                                               ; preds = %18, %3
  %25 = phi i1 [ false, %3 ], [ %23, %18 ]
  %26 = zext i1 %25 to i32
  %27 = bitcast %union.kvmppc_icp_state* %5 to i32*
  store i32 %26, i32* %27, align 8
  %28 = load %struct.kvmppc_icp*, %struct.kvmppc_icp** %6, align 8
  %29 = getelementptr inbounds %struct.kvmppc_icp, %struct.kvmppc_icp* %28, i32 0, i32 1
  %30 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %29, i32 0, i32 0
  %31 = bitcast %union.kvmppc_icp_state* %4 to i64*
  %32 = load i64, i64* %31, align 8
  %33 = bitcast %union.kvmppc_icp_state* %5 to i64*
  %34 = load i64, i64* %33, align 8
  %35 = call i64 @cmpxchg64(i32* %30, i64 %32, i64 %34)
  %36 = bitcast %union.kvmppc_icp_state* %4 to i64*
  %37 = load i64, i64* %36, align 8
  %38 = icmp eq i64 %35, %37
  %39 = zext i1 %38 to i32
  store i32 %39, i32* %8, align 4
  %40 = load i32, i32* %8, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %43, label %42

42:                                               ; preds = %24
  br label %69

43:                                               ; preds = %24
  %44 = bitcast %union.kvmppc_icp_state* %5 to i32*
  %45 = load i32, i32* %44, align 8
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %53

47:                                               ; preds = %43
  %48 = load %struct.kvmppc_icp*, %struct.kvmppc_icp** %6, align 8
  %49 = getelementptr inbounds %struct.kvmppc_icp, %struct.kvmppc_icp* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %7, align 8
  %52 = call i32 @icp_rm_set_vcpu_irq(i32 %50, %struct.kvm_vcpu* %51)
  br label %53

53:                                               ; preds = %47, %43
  %54 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %7, align 8
  %55 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %55, i32 0, i32 0
  %57 = load %struct.TYPE_7__*, %struct.TYPE_7__** %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %57, i32 0, i32 1
  %59 = bitcast %union.kvmppc_icp_state* %58 to i8*
  %60 = bitcast %union.kvmppc_icp_state* %5 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %59, i8* align 8 %60, i64 8, i1 false)
  %61 = load %struct.kvmppc_icp*, %struct.kvmppc_icp** %6, align 8
  %62 = getelementptr inbounds %struct.kvmppc_icp, %struct.kvmppc_icp* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %7, align 8
  %65 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %64, i32 0, i32 0
  %66 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %65, i32 0, i32 0
  %67 = load %struct.TYPE_7__*, %struct.TYPE_7__** %66, align 8
  %68 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %67, i32 0, i32 0
  store i32 %63, i32* %68, align 8
  br label %69

69:                                               ; preds = %53, %42
  %70 = load i32, i32* %8, align 4
  ret i32 %70
}

declare dso_local i64 @cmpxchg64(i32*, i64, i64) #1

declare dso_local i32 @icp_rm_set_vcpu_irq(i32, %struct.kvm_vcpu*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
