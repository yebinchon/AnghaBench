; ModuleID = '/home/carl/AnghaBench/h2o/deps/picotls/lib/extr_uecc.c_secp256r1_on_exchange.c'
source_filename = "/home/carl/AnghaBench/h2o/deps/picotls/lib/extr_uecc.c_secp256r1_on_exchange.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i64, i64* }
%struct.st_secp256r1_key_exhchange_t = type { i32 }

@SECP256R1_PUBLIC_KEY_SIZE = common dso_local global i64 0, align 8
@TYPE_UNCOMPRESSED_PUBLIC_KEY = common dso_local global i64 0, align 8
@PTLS_ALERT_DECRYPT_ERROR = common dso_local global i32 0, align 4
@SECP256R1_SHARED_SECRET_SIZE = common dso_local global i32 0, align 4
@PTLS_ERROR_NO_MEMORY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32**, i32, %struct.TYPE_5__*, i64, i64*)* @secp256r1_on_exchange to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @secp256r1_on_exchange(i32** %0, i32 %1, %struct.TYPE_5__* %2, i64 %3, i64* %4) #0 {
  %6 = alloca %struct.TYPE_5__, align 8
  %7 = alloca i32**, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_5__*, align 8
  %10 = alloca %struct.st_secp256r1_key_exhchange_t*, align 8
  %11 = alloca %struct.st_secp256r1_key_exhchange_t*, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.TYPE_5__, align 8
  %14 = bitcast %struct.TYPE_5__* %6 to { i64, i64* }*
  %15 = getelementptr inbounds { i64, i64* }, { i64, i64* }* %14, i32 0, i32 0
  store i64 %3, i64* %15, align 8
  %16 = getelementptr inbounds { i64, i64* }, { i64, i64* }* %14, i32 0, i32 1
  store i64* %4, i64** %16, align 8
  store i32** %0, i32*** %7, align 8
  store i32 %1, i32* %8, align 4
  store %struct.TYPE_5__* %2, %struct.TYPE_5__** %9, align 8
  %17 = load i32**, i32*** %7, align 8
  %18 = load i32*, i32** %17, align 8
  %19 = bitcast i32* %18 to %struct.st_secp256r1_key_exhchange_t*
  store %struct.st_secp256r1_key_exhchange_t* %19, %struct.st_secp256r1_key_exhchange_t** %10, align 8
  store %struct.st_secp256r1_key_exhchange_t* null, %struct.st_secp256r1_key_exhchange_t** %11, align 8
  %20 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %21 = icmp eq %struct.TYPE_5__* %20, null
  br i1 %21, label %22, label %23

22:                                               ; preds = %5
  store i32 0, i32* %12, align 4
  br label %69

23:                                               ; preds = %5
  %24 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %6, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = load i64, i64* @SECP256R1_PUBLIC_KEY_SIZE, align 8
  %27 = icmp ne i64 %25, %26
  br i1 %27, label %35, label %28

28:                                               ; preds = %23
  %29 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %6, i32 0, i32 1
  %30 = load i64*, i64** %29, align 8
  %31 = getelementptr inbounds i64, i64* %30, i64 0
  %32 = load i64, i64* %31, align 8
  %33 = load i64, i64* @TYPE_UNCOMPRESSED_PUBLIC_KEY, align 8
  %34 = icmp ne i64 %32, %33
  br i1 %34, label %35, label %37

35:                                               ; preds = %28, %23
  %36 = load i32, i32* @PTLS_ALERT_DECRYPT_ERROR, align 4
  store i32 %36, i32* %12, align 4
  br label %69

37:                                               ; preds = %28
  %38 = load i32, i32* @SECP256R1_SHARED_SECRET_SIZE, align 4
  %39 = call i64 @malloc(i32 %38)
  %40 = inttoptr i64 %39 to %struct.st_secp256r1_key_exhchange_t*
  store %struct.st_secp256r1_key_exhchange_t* %40, %struct.st_secp256r1_key_exhchange_t** %11, align 8
  %41 = icmp eq %struct.st_secp256r1_key_exhchange_t* %40, null
  br i1 %41, label %42, label %44

42:                                               ; preds = %37
  %43 = load i32, i32* @PTLS_ERROR_NO_MEMORY, align 4
  store i32 %43, i32* %12, align 4
  br label %69

44:                                               ; preds = %37
  %45 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %6, i32 0, i32 1
  %46 = load i64*, i64** %45, align 8
  %47 = getelementptr inbounds i64, i64* %46, i64 1
  %48 = load %struct.st_secp256r1_key_exhchange_t*, %struct.st_secp256r1_key_exhchange_t** %10, align 8
  %49 = getelementptr inbounds %struct.st_secp256r1_key_exhchange_t, %struct.st_secp256r1_key_exhchange_t* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = load %struct.st_secp256r1_key_exhchange_t*, %struct.st_secp256r1_key_exhchange_t** %11, align 8
  %52 = call i32 (...) @uECC_secp256r1()
  %53 = call i32 @uECC_shared_secret(i64* %47, i32 %50, %struct.st_secp256r1_key_exhchange_t* %51, i32 %52)
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %57, label %55

55:                                               ; preds = %44
  %56 = load i32, i32* @PTLS_ALERT_DECRYPT_ERROR, align 4
  store i32 %56, i32* %12, align 4
  br label %69

57:                                               ; preds = %44
  %58 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %59 = load %struct.st_secp256r1_key_exhchange_t*, %struct.st_secp256r1_key_exhchange_t** %11, align 8
  %60 = load i32, i32* @SECP256R1_SHARED_SECRET_SIZE, align 4
  %61 = call { i64, i64* } @ptls_iovec_init(%struct.st_secp256r1_key_exhchange_t* %59, i32 %60)
  %62 = bitcast %struct.TYPE_5__* %13 to { i64, i64* }*
  %63 = getelementptr inbounds { i64, i64* }, { i64, i64* }* %62, i32 0, i32 0
  %64 = extractvalue { i64, i64* } %61, 0
  store i64 %64, i64* %63, align 8
  %65 = getelementptr inbounds { i64, i64* }, { i64, i64* }* %62, i32 0, i32 1
  %66 = extractvalue { i64, i64* } %61, 1
  store i64* %66, i64** %65, align 8
  %67 = bitcast %struct.TYPE_5__* %58 to i8*
  %68 = bitcast %struct.TYPE_5__* %13 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %67, i8* align 8 %68, i64 16, i1 false)
  store i32 0, i32* %12, align 4
  br label %69

69:                                               ; preds = %57, %55, %42, %35, %22
  %70 = load i32, i32* %12, align 4
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %75

72:                                               ; preds = %69
  %73 = load %struct.st_secp256r1_key_exhchange_t*, %struct.st_secp256r1_key_exhchange_t** %11, align 8
  %74 = call i32 @free(%struct.st_secp256r1_key_exhchange_t* %73)
  br label %75

75:                                               ; preds = %72, %69
  %76 = load i32, i32* %8, align 4
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %86

78:                                               ; preds = %75
  %79 = load %struct.st_secp256r1_key_exhchange_t*, %struct.st_secp256r1_key_exhchange_t** %10, align 8
  %80 = getelementptr inbounds %struct.st_secp256r1_key_exhchange_t, %struct.st_secp256r1_key_exhchange_t* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 4
  %82 = call i32 @ptls_clear_memory(i32 %81, i32 4)
  %83 = load %struct.st_secp256r1_key_exhchange_t*, %struct.st_secp256r1_key_exhchange_t** %10, align 8
  %84 = call i32 @free(%struct.st_secp256r1_key_exhchange_t* %83)
  %85 = load i32**, i32*** %7, align 8
  store i32* null, i32** %85, align 8
  br label %86

86:                                               ; preds = %78, %75
  %87 = load i32, i32* %12, align 4
  ret i32 %87
}

declare dso_local i64 @malloc(i32) #1

declare dso_local i32 @uECC_shared_secret(i64*, i32, %struct.st_secp256r1_key_exhchange_t*, i32) #1

declare dso_local i32 @uECC_secp256r1(...) #1

declare dso_local { i64, i64* } @ptls_iovec_init(%struct.st_secp256r1_key_exhchange_t*, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @free(%struct.st_secp256r1_key_exhchange_t*) #1

declare dso_local i32 @ptls_clear_memory(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
