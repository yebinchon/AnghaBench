; ModuleID = '/home/carl/AnghaBench/kphp-kdb/rpc-proxy/extr_rpc-proxy-string-forward.c_rpc_kint_extension_add.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/rpc-proxy/extr_rpc-proxy-string-forward.c_rpc_kint_extension_add.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rpc_cluster = type { i32, i8** }
%struct.rpc_cluster_create = type { i32, i64*, i32** }

@RPC_FUN_STRING_FORWARD = common dso_local global i32 0, align 4
@rpc_fun_kint_forward = common dso_local global i32 0, align 4
@extension_firstint_num = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @rpc_kint_extension_add(%struct.rpc_cluster* %0, %struct.rpc_cluster_create* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.rpc_cluster*, align 8
  %7 = alloca %struct.rpc_cluster_create*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.rpc_cluster* %0, %struct.rpc_cluster** %6, align 8
  store %struct.rpc_cluster_create* %1, %struct.rpc_cluster_create** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %10 = load %struct.rpc_cluster_create*, %struct.rpc_cluster_create** %7, align 8
  %11 = getelementptr inbounds %struct.rpc_cluster_create, %struct.rpc_cluster_create* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = load i32, i32* @RPC_FUN_STRING_FORWARD, align 4
  %14 = shl i32 1, %13
  %15 = and i32 %12, %14
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %4
  store i32 -1, i32* %5, align 4
  br label %64

18:                                               ; preds = %4
  %19 = load i32, i32* @RPC_FUN_STRING_FORWARD, align 4
  %20 = shl i32 1, %19
  %21 = load %struct.rpc_cluster_create*, %struct.rpc_cluster_create** %7, align 8
  %22 = getelementptr inbounds %struct.rpc_cluster_create, %struct.rpc_cluster_create* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = or i32 %23, %20
  store i32 %24, i32* %22, align 8
  %25 = load %struct.rpc_cluster_create*, %struct.rpc_cluster_create** %7, align 8
  %26 = getelementptr inbounds %struct.rpc_cluster_create, %struct.rpc_cluster_create* %25, i32 0, i32 1
  %27 = load i64*, i64** %26, align 8
  %28 = load i32, i32* @RPC_FUN_STRING_FORWARD, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds i64, i64* %27, i64 %29
  %31 = load i64, i64* %30, align 8
  %32 = icmp ugt i64 %31, 0
  %33 = zext i1 %32 to i32
  %34 = call i32 @assert(i32 %33)
  %35 = load i32, i32* @rpc_fun_kint_forward, align 4
  %36 = load %struct.rpc_cluster_create*, %struct.rpc_cluster_create** %7, align 8
  %37 = getelementptr inbounds %struct.rpc_cluster_create, %struct.rpc_cluster_create* %36, i32 0, i32 2
  %38 = load i32**, i32*** %37, align 8
  %39 = load i32, i32* @RPC_FUN_STRING_FORWARD, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds i32*, i32** %38, i64 %40
  %42 = load i32*, i32** %41, align 8
  %43 = load %struct.rpc_cluster_create*, %struct.rpc_cluster_create** %7, align 8
  %44 = getelementptr inbounds %struct.rpc_cluster_create, %struct.rpc_cluster_create* %43, i32 0, i32 1
  %45 = load i64*, i64** %44, align 8
  %46 = load i32, i32* @RPC_FUN_STRING_FORWARD, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds i64, i64* %45, i64 %47
  %49 = load i64, i64* %48, align 8
  %50 = add i64 %49, -1
  store i64 %50, i64* %48, align 8
  %51 = getelementptr inbounds i32, i32* %42, i64 %50
  store i32 %35, i32* %51, align 4
  %52 = load i32, i32* %9, align 4
  %53 = sext i32 %52 to i64
  %54 = inttoptr i64 %53 to i8*
  %55 = load %struct.rpc_cluster*, %struct.rpc_cluster** %6, align 8
  %56 = getelementptr inbounds %struct.rpc_cluster, %struct.rpc_cluster* %55, i32 0, i32 1
  %57 = load i8**, i8*** %56, align 8
  %58 = load i64, i64* @extension_firstint_num, align 8
  %59 = getelementptr inbounds i8*, i8** %57, i64 %58
  store i8* %54, i8** %59, align 8
  %60 = load i32, i32* %9, align 4
  %61 = add nsw i32 %60, 1
  %62 = load %struct.rpc_cluster*, %struct.rpc_cluster** %6, align 8
  %63 = getelementptr inbounds %struct.rpc_cluster, %struct.rpc_cluster* %62, i32 0, i32 0
  store i32 %61, i32* %63, align 8
  store i32 0, i32* %5, align 4
  br label %64

64:                                               ; preds = %18, %17
  %65 = load i32, i32* %5, align 4
  ret i32 %65
}

declare dso_local i32 @assert(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
