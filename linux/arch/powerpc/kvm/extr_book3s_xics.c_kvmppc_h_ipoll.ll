; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/kvm/extr_book3s_xics.c_kvmppc_h_ipoll.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/kvm/extr_book3s_xics.c_kvmppc_h_ipoll.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvm_vcpu = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.kvmppc_icp* }
%struct.kvmppc_icp = type { i64, i32 }
%union.kvmppc_icp_state = type { i64 }

@H_PARAMETER = common dso_local global i32 0, align 4
@H_SUCCESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.kvm_vcpu*, i64)* @kvmppc_h_ipoll to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @kvmppc_h_ipoll(%struct.kvm_vcpu* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.kvm_vcpu*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %union.kvmppc_icp_state, align 8
  %7 = alloca %struct.kvmppc_icp*, align 8
  %8 = alloca %union.kvmppc_icp_state, align 8
  store %struct.kvm_vcpu* %0, %struct.kvm_vcpu** %4, align 8
  store i64 %1, i64* %5, align 8
  %9 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %4, align 8
  %10 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %9, i32 0, i32 1
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  %12 = load %struct.kvmppc_icp*, %struct.kvmppc_icp** %11, align 8
  store %struct.kvmppc_icp* %12, %struct.kvmppc_icp** %7, align 8
  %13 = load %struct.kvmppc_icp*, %struct.kvmppc_icp** %7, align 8
  %14 = getelementptr inbounds %struct.kvmppc_icp, %struct.kvmppc_icp* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load i64, i64* %5, align 8
  %17 = icmp ne i64 %15, %16
  br i1 %17, label %18, label %29

18:                                               ; preds = %2
  %19 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %4, align 8
  %20 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = load i64, i64* %5, align 8
  %23 = call %struct.kvmppc_icp* @kvmppc_xics_find_server(i32 %21, i64 %22)
  store %struct.kvmppc_icp* %23, %struct.kvmppc_icp** %7, align 8
  %24 = load %struct.kvmppc_icp*, %struct.kvmppc_icp** %7, align 8
  %25 = icmp ne %struct.kvmppc_icp* %24, null
  br i1 %25, label %28, label %26

26:                                               ; preds = %18
  %27 = load i32, i32* @H_PARAMETER, align 4
  store i32 %27, i32* %3, align 4
  br label %51

28:                                               ; preds = %18
  br label %29

29:                                               ; preds = %28, %2
  %30 = load %struct.kvmppc_icp*, %struct.kvmppc_icp** %7, align 8
  %31 = getelementptr inbounds %struct.kvmppc_icp, %struct.kvmppc_icp* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 8
  %33 = call i64 @READ_ONCE(i32 %32)
  %34 = getelementptr inbounds %union.kvmppc_icp_state, %union.kvmppc_icp_state* %8, i32 0, i32 0
  store i64 %33, i64* %34, align 8
  %35 = bitcast %union.kvmppc_icp_state* %6 to i8*
  %36 = bitcast %union.kvmppc_icp_state* %8 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %35, i8* align 8 %36, i64 8, i1 false)
  %37 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %4, align 8
  %38 = bitcast %union.kvmppc_icp_state* %6 to i64*
  %39 = load i64, i64* %38, align 8
  %40 = trunc i64 %39 to i32
  %41 = shl i32 %40, 24
  %42 = bitcast %union.kvmppc_icp_state* %6 to i32*
  %43 = load i32, i32* %42, align 8
  %44 = or i32 %41, %43
  %45 = call i32 @kvmppc_set_gpr(%struct.kvm_vcpu* %37, i32 4, i32 %44)
  %46 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %4, align 8
  %47 = bitcast %union.kvmppc_icp_state* %6 to i32*
  %48 = load i32, i32* %47, align 8
  %49 = call i32 @kvmppc_set_gpr(%struct.kvm_vcpu* %46, i32 5, i32 %48)
  %50 = load i32, i32* @H_SUCCESS, align 4
  store i32 %50, i32* %3, align 4
  br label %51

51:                                               ; preds = %29, %26
  %52 = load i32, i32* %3, align 4
  ret i32 %52
}

declare dso_local %struct.kvmppc_icp* @kvmppc_xics_find_server(i32, i64) #1

declare dso_local i64 @READ_ONCE(i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @kvmppc_set_gpr(%struct.kvm_vcpu*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
