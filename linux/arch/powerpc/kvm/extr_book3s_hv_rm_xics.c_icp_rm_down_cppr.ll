; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/kvm/extr_book3s_hv_rm_xics.c_icp_rm_down_cppr.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/kvm/extr_book3s_hv_rm_xics.c_icp_rm_down_cppr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvmppc_xics = type { i32 }
%struct.kvmppc_icp = type { i32, i32 }
%union.kvmppc_icp_state = type { i64 }

@XICS_IPI = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.kvmppc_xics*, %struct.kvmppc_icp*, i64)* @icp_rm_down_cppr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @icp_rm_down_cppr(%struct.kvmppc_xics* %0, %struct.kvmppc_icp* %1, i64 %2) #0 {
  %4 = alloca %struct.kvmppc_xics*, align 8
  %5 = alloca %struct.kvmppc_icp*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %union.kvmppc_icp_state, align 8
  %8 = alloca %union.kvmppc_icp_state, align 8
  %9 = alloca i32, align 4
  %10 = alloca %union.kvmppc_icp_state, align 8
  store %struct.kvmppc_xics* %0, %struct.kvmppc_xics** %4, align 8
  store %struct.kvmppc_icp* %1, %struct.kvmppc_icp** %5, align 8
  store i64 %2, i64* %6, align 8
  br label %11

11:                                               ; preds = %43, %3
  %12 = load %struct.kvmppc_icp*, %struct.kvmppc_icp** %5, align 8
  %13 = getelementptr inbounds %struct.kvmppc_icp, %struct.kvmppc_icp* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 4
  %15 = call i64 @READ_ONCE(i32 %14)
  %16 = getelementptr inbounds %union.kvmppc_icp_state, %union.kvmppc_icp_state* %10, i32 0, i32 0
  store i64 %15, i64* %16, align 8
  %17 = bitcast %union.kvmppc_icp_state* %8 to i8*
  %18 = bitcast %union.kvmppc_icp_state* %10 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %17, i8* align 8 %18, i64 8, i1 false)
  %19 = bitcast %union.kvmppc_icp_state* %7 to i8*
  %20 = bitcast %union.kvmppc_icp_state* %8 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %19, i8* align 8 %20, i64 8, i1 false)
  %21 = load i64, i64* %6, align 8
  %22 = bitcast %union.kvmppc_icp_state* %8 to i64*
  store i64 %21, i64* %22, align 8
  %23 = bitcast %union.kvmppc_icp_state* %8 to i64*
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* %6, align 8
  %26 = icmp slt i64 %24, %25
  br i1 %26, label %27, label %39

27:                                               ; preds = %11
  %28 = bitcast %union.kvmppc_icp_state* %8 to i64*
  %29 = load i64, i64* %28, align 8
  %30 = bitcast %union.kvmppc_icp_state* %8 to i64*
  %31 = load i64, i64* %30, align 8
  %32 = icmp sle i64 %29, %31
  br i1 %32, label %33, label %39

33:                                               ; preds = %27
  %34 = bitcast %union.kvmppc_icp_state* %8 to i64*
  %35 = load i64, i64* %34, align 8
  %36 = bitcast %union.kvmppc_icp_state* %8 to i64*
  store i64 %35, i64* %36, align 8
  %37 = load i32, i32* @XICS_IPI, align 4
  %38 = bitcast %union.kvmppc_icp_state* %8 to i32*
  store i32 %37, i32* %38, align 8
  br label %39

39:                                               ; preds = %33, %27, %11
  %40 = bitcast %union.kvmppc_icp_state* %8 to i32*
  %41 = load i32, i32* %40, align 8
  store i32 %41, i32* %9, align 4
  %42 = bitcast %union.kvmppc_icp_state* %8 to i32*
  store i32 0, i32* %42, align 8
  br label %43

43:                                               ; preds = %39
  %44 = load %struct.kvmppc_icp*, %struct.kvmppc_icp** %5, align 8
  %45 = getelementptr inbounds %union.kvmppc_icp_state, %union.kvmppc_icp_state* %7, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = getelementptr inbounds %union.kvmppc_icp_state, %union.kvmppc_icp_state* %8, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = call i32 @icp_rm_try_update(%struct.kvmppc_icp* %44, i64 %46, i64 %48)
  %50 = icmp ne i32 %49, 0
  %51 = xor i1 %50, true
  br i1 %51, label %11, label %52

52:                                               ; preds = %43
  %53 = load i32, i32* %9, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %63

55:                                               ; preds = %52
  %56 = load %struct.kvmppc_icp*, %struct.kvmppc_icp** %5, align 8
  %57 = getelementptr inbounds %struct.kvmppc_icp, %struct.kvmppc_icp* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = add nsw i32 %58, 1
  store i32 %59, i32* %57, align 4
  %60 = load %struct.kvmppc_xics*, %struct.kvmppc_xics** %4, align 8
  %61 = load %struct.kvmppc_icp*, %struct.kvmppc_icp** %5, align 8
  %62 = call i32 @icp_rm_check_resend(%struct.kvmppc_xics* %60, %struct.kvmppc_icp* %61)
  br label %63

63:                                               ; preds = %55, %52
  ret void
}

declare dso_local i64 @READ_ONCE(i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @icp_rm_try_update(%struct.kvmppc_icp*, i64, i64) #1

declare dso_local i32 @icp_rm_check_resend(%struct.kvmppc_xics*, %struct.kvmppc_icp*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
