; ModuleID = '/home/carl/AnghaBench/h2o/deps/picotls/lib/extr_picotls.c_ptls_hkdf_extract.c'
source_filename = "/home/carl/AnghaBench/h2o/deps/picotls/lib/extr_picotls.c_ptls_hkdf_extract.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { i32 }
%struct.TYPE_12__ = type { i64, i32 }
%struct.TYPE_13__ = type { i32 (%struct.TYPE_13__*, i8*, i32)*, i32 (%struct.TYPE_13__*, i32, i64)* }

@zeroes_of_max_digest_size = common dso_local global i32 0, align 4
@PTLS_ERROR_NO_MEMORY = common dso_local global i32 0, align 4
@PTLS_HASH_FINAL_MODE_FREE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ptls_hkdf_extract(%struct.TYPE_14__* %0, i8* %1, i64 %2, i32 %3, i64 %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_12__, align 8
  %9 = alloca %struct.TYPE_12__, align 8
  %10 = alloca %struct.TYPE_14__*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca %struct.TYPE_13__*, align 8
  %13 = alloca %struct.TYPE_12__, align 8
  %14 = bitcast %struct.TYPE_12__* %8 to { i64, i32 }*
  %15 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %14, i32 0, i32 0
  store i64 %2, i64* %15, align 8
  %16 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %14, i32 0, i32 1
  store i32 %3, i32* %16, align 8
  %17 = bitcast %struct.TYPE_12__* %9 to { i64, i32 }*
  %18 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %17, i32 0, i32 0
  store i64 %4, i64* %18, align 8
  %19 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %17, i32 0, i32 1
  store i32 %5, i32* %19, align 8
  store %struct.TYPE_14__* %0, %struct.TYPE_14__** %10, align 8
  store i8* %1, i8** %11, align 8
  %20 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %8, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = icmp eq i64 %21, 0
  br i1 %22, label %23, label %36

23:                                               ; preds = %6
  %24 = load i32, i32* @zeroes_of_max_digest_size, align 4
  %25 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %26 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = call { i64, i32 } @ptls_iovec_init(i32 %24, i32 %27)
  %29 = bitcast %struct.TYPE_12__* %13 to { i64, i32 }*
  %30 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %29, i32 0, i32 0
  %31 = extractvalue { i64, i32 } %28, 0
  store i64 %31, i64* %30, align 8
  %32 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %29, i32 0, i32 1
  %33 = extractvalue { i64, i32 } %28, 1
  store i32 %33, i32* %32, align 8
  %34 = bitcast %struct.TYPE_12__* %8 to i8*
  %35 = bitcast %struct.TYPE_12__* %13 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %34, i8* align 8 %35, i64 16, i1 false)
  br label %36

36:                                               ; preds = %23, %6
  %37 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %38 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %8, i32 0, i32 1
  %39 = load i32, i32* %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %8, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = call %struct.TYPE_13__* @ptls_hmac_create(%struct.TYPE_14__* %37, i32 %39, i64 %41)
  store %struct.TYPE_13__* %42, %struct.TYPE_13__** %12, align 8
  %43 = icmp eq %struct.TYPE_13__* %42, null
  br i1 %43, label %44, label %46

44:                                               ; preds = %36
  %45 = load i32, i32* @PTLS_ERROR_NO_MEMORY, align 4
  store i32 %45, i32* %7, align 4
  br label %63

46:                                               ; preds = %36
  %47 = load %struct.TYPE_13__*, %struct.TYPE_13__** %12, align 8
  %48 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %47, i32 0, i32 1
  %49 = load i32 (%struct.TYPE_13__*, i32, i64)*, i32 (%struct.TYPE_13__*, i32, i64)** %48, align 8
  %50 = load %struct.TYPE_13__*, %struct.TYPE_13__** %12, align 8
  %51 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %9, i32 0, i32 1
  %52 = load i32, i32* %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %9, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = call i32 %49(%struct.TYPE_13__* %50, i32 %52, i64 %54)
  %56 = load %struct.TYPE_13__*, %struct.TYPE_13__** %12, align 8
  %57 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %56, i32 0, i32 0
  %58 = load i32 (%struct.TYPE_13__*, i8*, i32)*, i32 (%struct.TYPE_13__*, i8*, i32)** %57, align 8
  %59 = load %struct.TYPE_13__*, %struct.TYPE_13__** %12, align 8
  %60 = load i8*, i8** %11, align 8
  %61 = load i32, i32* @PTLS_HASH_FINAL_MODE_FREE, align 4
  %62 = call i32 %58(%struct.TYPE_13__* %59, i8* %60, i32 %61)
  store i32 0, i32* %7, align 4
  br label %63

63:                                               ; preds = %46, %44
  %64 = load i32, i32* %7, align 4
  ret i32 %64
}

declare dso_local { i64, i32 } @ptls_iovec_init(i32, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local %struct.TYPE_13__* @ptls_hmac_create(%struct.TYPE_14__*, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
