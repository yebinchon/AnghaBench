; ModuleID = '/home/carl/AnghaBench/h2o/deps/picotls/t/extr_..libuecc.c_secp256r1_key_exchange.c'
source_filename = "/home/carl/AnghaBench/h2o/deps/picotls/t/extr_..libuecc.c_secp256r1_key_exchange.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i64, i64* }

@SECP256R1_PRIVATE_KEY_SIZE = common dso_local global i32 0, align 4
@SECP256R1_PUBLIC_KEY_SIZE = common dso_local global i64 0, align 8
@TYPE_UNCOMPRESSED_PUBLIC_KEY = common dso_local global i64 0, align 8
@PTLS_ALERT_DECRYPT_ERROR = common dso_local global i32 0, align 4
@PTLS_ERROR_NO_MEMORY = common dso_local global i32 0, align 4
@SECP256R1_SHARED_SECRET_SIZE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, %struct.TYPE_6__*, %struct.TYPE_6__*, i64, i64*)* @secp256r1_key_exchange to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @secp256r1_key_exchange(i32* %0, %struct.TYPE_6__* %1, %struct.TYPE_6__* %2, i64 %3, i64* %4) #0 {
  %6 = alloca %struct.TYPE_6__, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.TYPE_6__*, align 8
  %9 = alloca %struct.TYPE_6__*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64*, align 8
  %13 = alloca i64*, align 8
  %14 = alloca i32, align 4
  %15 = alloca %struct.TYPE_6__, align 8
  %16 = alloca %struct.TYPE_6__, align 8
  %17 = bitcast %struct.TYPE_6__* %6 to { i64, i64* }*
  %18 = getelementptr inbounds { i64, i64* }, { i64, i64* }* %17, i32 0, i32 0
  store i64 %3, i64* %18, align 8
  %19 = getelementptr inbounds { i64, i64* }, { i64, i64* }* %17, i32 0, i32 1
  store i64* %4, i64** %19, align 8
  store i32* %0, i32** %7, align 8
  store %struct.TYPE_6__* %1, %struct.TYPE_6__** %8, align 8
  store %struct.TYPE_6__* %2, %struct.TYPE_6__** %9, align 8
  %20 = load i32, i32* @SECP256R1_PRIVATE_KEY_SIZE, align 4
  %21 = zext i32 %20 to i64
  %22 = call i8* @llvm.stacksave()
  store i8* %22, i8** %10, align 8
  %23 = alloca i64, i64 %21, align 16
  store i64 %21, i64* %11, align 8
  store i64* null, i64** %12, align 8
  store i64* null, i64** %13, align 8
  %24 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %6, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = load i64, i64* @SECP256R1_PUBLIC_KEY_SIZE, align 8
  %27 = icmp ne i64 %25, %26
  br i1 %27, label %35, label %28

28:                                               ; preds = %5
  %29 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %6, i32 0, i32 1
  %30 = load i64*, i64** %29, align 8
  %31 = getelementptr inbounds i64, i64* %30, i64 0
  %32 = load i64, i64* %31, align 8
  %33 = load i64, i64* @TYPE_UNCOMPRESSED_PUBLIC_KEY, align 8
  %34 = icmp ne i64 %32, %33
  br i1 %34, label %35, label %37

35:                                               ; preds = %28, %5
  %36 = load i32, i32* @PTLS_ALERT_DECRYPT_ERROR, align 4
  store i32 %36, i32* %14, align 4
  br label %89

37:                                               ; preds = %28
  %38 = load i64, i64* @SECP256R1_PUBLIC_KEY_SIZE, align 8
  %39 = call i64* @malloc(i64 %38)
  store i64* %39, i64** %12, align 8
  %40 = icmp eq i64* %39, null
  br i1 %40, label %41, label %43

41:                                               ; preds = %37
  %42 = load i32, i32* @PTLS_ERROR_NO_MEMORY, align 4
  store i32 %42, i32* %14, align 4
  br label %89

43:                                               ; preds = %37
  %44 = load i64, i64* @SECP256R1_SHARED_SECRET_SIZE, align 8
  %45 = call i64* @malloc(i64 %44)
  store i64* %45, i64** %13, align 8
  %46 = icmp eq i64* %45, null
  br i1 %46, label %47, label %49

47:                                               ; preds = %43
  %48 = load i32, i32* @PTLS_ERROR_NO_MEMORY, align 4
  store i32 %48, i32* %14, align 4
  br label %89

49:                                               ; preds = %43
  %50 = load i64, i64* @TYPE_UNCOMPRESSED_PUBLIC_KEY, align 8
  %51 = load i64*, i64** %12, align 8
  %52 = getelementptr inbounds i64, i64* %51, i64 0
  store i64 %50, i64* %52, align 8
  %53 = load i64*, i64** %12, align 8
  %54 = getelementptr inbounds i64, i64* %53, i64 1
  %55 = call i32 (...) @uECC_secp256r1()
  %56 = call i32 @uECC_make_key(i64* %54, i64* %23, i32 %55)
  %57 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %6, i32 0, i32 1
  %58 = load i64*, i64** %57, align 8
  %59 = getelementptr inbounds i64, i64* %58, i64 1
  %60 = load i64*, i64** %13, align 8
  %61 = call i32 (...) @uECC_secp256r1()
  %62 = call i32 @uECC_shared_secret(i64* %59, i64* %23, i64* %60, i32 %61)
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %66, label %64

64:                                               ; preds = %49
  %65 = load i32, i32* @PTLS_ALERT_DECRYPT_ERROR, align 4
  store i32 %65, i32* %14, align 4
  br label %89

66:                                               ; preds = %49
  %67 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %68 = load i64*, i64** %12, align 8
  %69 = load i64, i64* @SECP256R1_PUBLIC_KEY_SIZE, align 8
  %70 = call { i64, i64* } @ptls_iovec_init(i64* %68, i64 %69)
  %71 = bitcast %struct.TYPE_6__* %15 to { i64, i64* }*
  %72 = getelementptr inbounds { i64, i64* }, { i64, i64* }* %71, i32 0, i32 0
  %73 = extractvalue { i64, i64* } %70, 0
  store i64 %73, i64* %72, align 8
  %74 = getelementptr inbounds { i64, i64* }, { i64, i64* }* %71, i32 0, i32 1
  %75 = extractvalue { i64, i64* } %70, 1
  store i64* %75, i64** %74, align 8
  %76 = bitcast %struct.TYPE_6__* %67 to i8*
  %77 = bitcast %struct.TYPE_6__* %15 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %76, i8* align 8 %77, i64 16, i1 false)
  %78 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %79 = load i64*, i64** %13, align 8
  %80 = load i64, i64* @SECP256R1_SHARED_SECRET_SIZE, align 8
  %81 = call { i64, i64* } @ptls_iovec_init(i64* %79, i64 %80)
  %82 = bitcast %struct.TYPE_6__* %16 to { i64, i64* }*
  %83 = getelementptr inbounds { i64, i64* }, { i64, i64* }* %82, i32 0, i32 0
  %84 = extractvalue { i64, i64* } %81, 0
  store i64 %84, i64* %83, align 8
  %85 = getelementptr inbounds { i64, i64* }, { i64, i64* }* %82, i32 0, i32 1
  %86 = extractvalue { i64, i64* } %81, 1
  store i64* %86, i64** %85, align 8
  %87 = bitcast %struct.TYPE_6__* %78 to i8*
  %88 = bitcast %struct.TYPE_6__* %16 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %87, i8* align 8 %88, i64 16, i1 false)
  store i32 0, i32* %14, align 4
  br label %89

89:                                               ; preds = %66, %64, %47, %41, %35
  %90 = mul nuw i64 8, %21
  %91 = trunc i64 %90 to i32
  %92 = call i32 @ptls_clear_memory(i64* %23, i32 %91)
  %93 = load i32, i32* %14, align 4
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %95, label %100

95:                                               ; preds = %89
  %96 = load i64*, i64** %13, align 8
  %97 = call i32 @free(i64* %96)
  %98 = load i64*, i64** %12, align 8
  %99 = call i32 @free(i64* %98)
  br label %100

100:                                              ; preds = %95, %89
  %101 = load i32, i32* %14, align 4
  %102 = load i8*, i8** %10, align 8
  call void @llvm.stackrestore(i8* %102)
  ret i32 %101
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i64* @malloc(i64) #2

declare dso_local i32 @uECC_make_key(i64*, i64*, i32) #2

declare dso_local i32 @uECC_secp256r1(...) #2

declare dso_local i32 @uECC_shared_secret(i64*, i64*, i64*, i32) #2

declare dso_local { i64, i64* } @ptls_iovec_init(i64*, i64) #2

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #3

declare dso_local i32 @ptls_clear_memory(i64*, i32) #2

declare dso_local i32 @free(i64*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
