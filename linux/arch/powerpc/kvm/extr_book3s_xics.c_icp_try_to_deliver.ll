; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/kvm/extr_book3s_xics.c_icp_try_to_deliver.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/kvm/extr_book3s_xics.c_icp_try_to_deliver.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvmppc_icp = type { i32, i32 }
%union.kvmppc_icp_state = type { i64 }

@.str = private unnamed_addr constant [39 x i8] c"try deliver %#x(P:%#x) to server %#lx\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.kvmppc_icp*, i32, i64, i32*)* @icp_try_to_deliver to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @icp_try_to_deliver(%struct.kvmppc_icp* %0, i32 %1, i64 %2, i32* %3) #0 {
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
  %13 = load i32, i32* %6, align 4
  %14 = load i64, i64* %7, align 8
  %15 = load %struct.kvmppc_icp*, %struct.kvmppc_icp** %5, align 8
  %16 = getelementptr inbounds %struct.kvmppc_icp, %struct.kvmppc_icp* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @XICS_DBG(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i32 %13, i64 %14, i32 %17)
  br label %19

19:                                               ; preds = %60, %4
  %20 = load %struct.kvmppc_icp*, %struct.kvmppc_icp** %5, align 8
  %21 = getelementptr inbounds %struct.kvmppc_icp, %struct.kvmppc_icp* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = call i64 @READ_ONCE(i32 %22)
  %24 = getelementptr inbounds %union.kvmppc_icp_state, %union.kvmppc_icp_state* %12, i32 0, i32 0
  store i64 %23, i64* %24, align 8
  %25 = bitcast %union.kvmppc_icp_state* %10 to i8*
  %26 = bitcast %union.kvmppc_icp_state* %12 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %25, i8* align 8 %26, i64 8, i1 false)
  %27 = bitcast %union.kvmppc_icp_state* %9 to i8*
  %28 = bitcast %union.kvmppc_icp_state* %10 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %27, i8* align 8 %28, i64 8, i1 false)
  %29 = load i32*, i32** %8, align 8
  store i32 0, i32* %29, align 4
  %30 = bitcast %union.kvmppc_icp_state* %10 to i64*
  %31 = load i64, i64* %30, align 8
  %32 = load i64, i64* %7, align 8
  %33 = icmp sgt i64 %31, %32
  br i1 %33, label %34, label %44

34:                                               ; preds = %19
  %35 = bitcast %union.kvmppc_icp_state* %10 to i64*
  %36 = load i64, i64* %35, align 8
  %37 = load i64, i64* %7, align 8
  %38 = icmp sgt i64 %36, %37
  br i1 %38, label %39, label %44

39:                                               ; preds = %34
  %40 = bitcast %union.kvmppc_icp_state* %10 to i64*
  %41 = load i64, i64* %40, align 8
  %42 = load i64, i64* %7, align 8
  %43 = icmp sgt i64 %41, %42
  br label %44

44:                                               ; preds = %39, %34, %19
  %45 = phi i1 [ false, %34 ], [ false, %19 ], [ %43, %39 ]
  %46 = zext i1 %45 to i32
  store i32 %46, i32* %11, align 4
  %47 = load i32, i32* %11, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %57

49:                                               ; preds = %44
  %50 = bitcast %union.kvmppc_icp_state* %10 to i32*
  %51 = load i32, i32* %50, align 8
  %52 = load i32*, i32** %8, align 8
  store i32 %51, i32* %52, align 4
  %53 = load i32, i32* %6, align 4
  %54 = bitcast %union.kvmppc_icp_state* %10 to i32*
  store i32 %53, i32* %54, align 8
  %55 = load i64, i64* %7, align 8
  %56 = bitcast %union.kvmppc_icp_state* %10 to i64*
  store i64 %55, i64* %56, align 8
  br label %59

57:                                               ; preds = %44
  %58 = bitcast %union.kvmppc_icp_state* %10 to i32*
  store i32 1, i32* %58, align 8
  br label %59

59:                                               ; preds = %57, %49
  br label %60

60:                                               ; preds = %59
  %61 = load %struct.kvmppc_icp*, %struct.kvmppc_icp** %5, align 8
  %62 = getelementptr inbounds %union.kvmppc_icp_state, %union.kvmppc_icp_state* %9, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  %64 = getelementptr inbounds %union.kvmppc_icp_state, %union.kvmppc_icp_state* %10, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  %66 = call i32 @icp_try_update(%struct.kvmppc_icp* %61, i64 %63, i64 %65, i32 0)
  %67 = icmp ne i32 %66, 0
  %68 = xor i1 %67, true
  br i1 %68, label %19, label %69

69:                                               ; preds = %60
  %70 = load i32, i32* %11, align 4
  ret i32 %70
}

declare dso_local i32 @XICS_DBG(i8*, i32, i64, i32) #1

declare dso_local i64 @READ_ONCE(i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @icp_try_update(%struct.kvmppc_icp*, i64, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
