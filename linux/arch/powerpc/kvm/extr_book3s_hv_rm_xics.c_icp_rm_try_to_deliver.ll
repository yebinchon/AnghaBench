; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/kvm/extr_book3s_hv_rm_xics.c_icp_rm_try_to_deliver.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/kvm/extr_book3s_hv_rm_xics.c_icp_rm_try_to_deliver.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvmppc_icp = type { i32 }
%union.kvmppc_icp_state = type { i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.kvmppc_icp*, i32, i64, i32*)* @icp_rm_try_to_deliver to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @icp_rm_try_to_deliver(%struct.kvmppc_icp* %0, i32 %1, i64 %2, i32* %3) #0 {
  %5 = alloca %struct.kvmppc_icp*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i32*, align 8
  %9 = alloca %union.kvmppc_icp_state, align 8
  %10 = alloca %union.kvmppc_icp_state, align 8
  %11 = alloca i32, align 4
  %12 = alloca %union.kvmppc_icp_state, align 8
  store %struct.kvmppc_icp* %0, %struct.kvmppc_icp** %5, align 8
  store i32 %1, i32* %6, align 4
  store i64 %2, i64* %7, align 8
  store i32* %3, i32** %8, align 8
  br label %13

13:                                               ; preds = %54, %4
  %14 = load %struct.kvmppc_icp*, %struct.kvmppc_icp** %5, align 8
  %15 = getelementptr inbounds %struct.kvmppc_icp, %struct.kvmppc_icp* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = call i64 @READ_ONCE(i32 %16)
  %18 = getelementptr inbounds %union.kvmppc_icp_state, %union.kvmppc_icp_state* %12, i32 0, i32 0
  store i64 %17, i64* %18, align 8
  %19 = bitcast %union.kvmppc_icp_state* %10 to i8*
  %20 = bitcast %union.kvmppc_icp_state* %12 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %19, i8* align 8 %20, i64 8, i1 false)
  %21 = bitcast %union.kvmppc_icp_state* %9 to i8*
  %22 = bitcast %union.kvmppc_icp_state* %10 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %21, i8* align 8 %22, i64 8, i1 false)
  %23 = load i32*, i32** %8, align 8
  store i32 0, i32* %23, align 4
  %24 = bitcast %union.kvmppc_icp_state* %10 to i64*
  %25 = load i64, i64* %24, align 8
  %26 = load i64, i64* %7, align 8
  %27 = icmp sgt i64 %25, %26
  br i1 %27, label %28, label %38

28:                                               ; preds = %13
  %29 = bitcast %union.kvmppc_icp_state* %10 to i64*
  %30 = load i64, i64* %29, align 8
  %31 = load i64, i64* %7, align 8
  %32 = icmp sgt i64 %30, %31
  br i1 %32, label %33, label %38

33:                                               ; preds = %28
  %34 = bitcast %union.kvmppc_icp_state* %10 to i64*
  %35 = load i64, i64* %34, align 8
  %36 = load i64, i64* %7, align 8
  %37 = icmp sgt i64 %35, %36
  br label %38

38:                                               ; preds = %33, %28, %13
  %39 = phi i1 [ false, %28 ], [ false, %13 ], [ %37, %33 ]
  %40 = zext i1 %39 to i32
  store i32 %40, i32* %11, align 4
  %41 = load i32, i32* %11, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %51

43:                                               ; preds = %38
  %44 = bitcast %union.kvmppc_icp_state* %10 to i32*
  %45 = load i32, i32* %44, align 8
  %46 = load i32*, i32** %8, align 8
  store i32 %45, i32* %46, align 4
  %47 = load i32, i32* %6, align 4
  %48 = bitcast %union.kvmppc_icp_state* %10 to i32*
  store i32 %47, i32* %48, align 8
  %49 = load i64, i64* %7, align 8
  %50 = bitcast %union.kvmppc_icp_state* %10 to i64*
  store i64 %49, i64* %50, align 8
  br label %53

51:                                               ; preds = %38
  %52 = bitcast %union.kvmppc_icp_state* %10 to i32*
  store i32 1, i32* %52, align 8
  br label %53

53:                                               ; preds = %51, %43
  br label %54

54:                                               ; preds = %53
  %55 = load %struct.kvmppc_icp*, %struct.kvmppc_icp** %5, align 8
  %56 = getelementptr inbounds %union.kvmppc_icp_state, %union.kvmppc_icp_state* %9, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = getelementptr inbounds %union.kvmppc_icp_state, %union.kvmppc_icp_state* %10, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = call i32 @icp_rm_try_update(%struct.kvmppc_icp* %55, i64 %57, i64 %59)
  %61 = icmp ne i32 %60, 0
  %62 = xor i1 %61, true
  br i1 %62, label %13, label %63

63:                                               ; preds = %54
  %64 = load i32, i32* %11, align 4
  ret i32 %64
}

declare dso_local i64 @READ_ONCE(i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @icp_rm_try_update(%struct.kvmppc_icp*, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
