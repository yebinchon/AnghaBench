; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/kvm/extr_book3s_hv_rm_xics.c_grab_next_hostcore.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/kvm/extr_book3s_hv_rm_xics.c_grab_next_hostcore.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvmppc_host_rm_core = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%union.kvmppc_rm_state = type { i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, %struct.kvmppc_host_rm_core*, i32, i32)* @grab_next_hostcore to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @grab_next_hostcore(i32 %0, %struct.kvmppc_host_rm_core* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.kvmppc_host_rm_core*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %union.kvmppc_rm_state, align 8
  %13 = alloca %union.kvmppc_rm_state, align 8
  %14 = alloca %union.kvmppc_rm_state, align 8
  store i32 %0, i32* %6, align 4
  store %struct.kvmppc_host_rm_core* %1, %struct.kvmppc_host_rm_core** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %15 = load i32, i32* %6, align 4
  %16 = add nsw i32 %15, 1
  store i32 %16, i32* %11, align 4
  br label %17

17:                                               ; preds = %67, %4
  %18 = load i32, i32* %11, align 4
  %19 = load i32, i32* %8, align 4
  %20 = icmp slt i32 %18, %19
  br i1 %20, label %21, label %70

21:                                               ; preds = %17
  %22 = load %struct.kvmppc_host_rm_core*, %struct.kvmppc_host_rm_core** %7, align 8
  %23 = load i32, i32* %11, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds %struct.kvmppc_host_rm_core, %struct.kvmppc_host_rm_core* %22, i64 %24
  %26 = getelementptr inbounds %struct.kvmppc_host_rm_core, %struct.kvmppc_host_rm_core* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = call i64 @READ_ONCE(i32 %28)
  %30 = getelementptr inbounds %union.kvmppc_rm_state, %union.kvmppc_rm_state* %14, i32 0, i32 0
  store i64 %29, i64* %30, align 8
  %31 = bitcast %union.kvmppc_rm_state* %13 to i8*
  %32 = bitcast %union.kvmppc_rm_state* %14 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %31, i8* align 8 %32, i64 8, i1 false)
  %33 = bitcast %union.kvmppc_rm_state* %12 to i8*
  %34 = bitcast %union.kvmppc_rm_state* %13 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %33, i8* align 8 %34, i64 8, i1 false)
  %35 = bitcast %union.kvmppc_rm_state* %12 to i32*
  %36 = load i32, i32* %35, align 8
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %42

38:                                               ; preds = %21
  %39 = bitcast %union.kvmppc_rm_state* %12 to i32*
  %40 = load i32, i32* %39, align 8
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %43

42:                                               ; preds = %38, %21
  br label %67

43:                                               ; preds = %38
  %44 = load i32, i32* %9, align 4
  %45 = bitcast %union.kvmppc_rm_state* %13 to i32*
  store i32 %44, i32* %45, align 8
  %46 = load %struct.kvmppc_host_rm_core*, %struct.kvmppc_host_rm_core** %7, align 8
  %47 = load i32, i32* %11, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds %struct.kvmppc_host_rm_core, %struct.kvmppc_host_rm_core* %46, i64 %48
  %50 = getelementptr inbounds %struct.kvmppc_host_rm_core, %struct.kvmppc_host_rm_core* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %50, i32 0, i32 0
  %52 = bitcast %union.kvmppc_rm_state* %12 to i64*
  %53 = load i64, i64* %52, align 8
  %54 = bitcast %union.kvmppc_rm_state* %13 to i64*
  %55 = load i64, i64* %54, align 8
  %56 = call i64 @cmpxchg64(i32* %51, i64 %53, i64 %55)
  %57 = bitcast %union.kvmppc_rm_state* %12 to i64*
  %58 = load i64, i64* %57, align 8
  %59 = icmp eq i64 %56, %58
  %60 = zext i1 %59 to i32
  store i32 %60, i32* %10, align 4
  %61 = load i32, i32* %10, align 4
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %66

63:                                               ; preds = %43
  %64 = call i32 (...) @smp_wmb()
  %65 = load i32, i32* %11, align 4
  store i32 %65, i32* %5, align 4
  br label %71

66:                                               ; preds = %43
  br label %67

67:                                               ; preds = %66, %42
  %68 = load i32, i32* %11, align 4
  %69 = add nsw i32 %68, 1
  store i32 %69, i32* %11, align 4
  br label %17

70:                                               ; preds = %17
  store i32 -1, i32* %5, align 4
  br label %71

71:                                               ; preds = %70, %63
  %72 = load i32, i32* %5, align 4
  ret i32 %72
}

declare dso_local i64 @READ_ONCE(i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i64 @cmpxchg64(i32*, i64, i64) #1

declare dso_local i32 @smp_wmb(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
