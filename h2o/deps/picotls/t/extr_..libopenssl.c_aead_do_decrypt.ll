; ModuleID = '/home/carl/AnghaBench/h2o/deps/picotls/t/extr_..libopenssl.c_aead_do_decrypt.c'
source_filename = "/home/carl/AnghaBench/h2o/deps/picotls/t/extr_..libopenssl.c_aead_do_decrypt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.aead_crypto_context_t = type { i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i64 }

@SIZE_MAX = common dso_local global i64 0, align 8
@EVP_CTRL_GCM_SET_TAG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i32*, i8*, i8*, i64, i8*, i8*, i64)* @aead_do_decrypt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @aead_do_decrypt(i32* %0, i8* %1, i8* %2, i64 %3, i8* %4, i8* %5, i64 %6) #0 {
  %8 = alloca i64, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i64, align 8
  %16 = alloca %struct.aead_crypto_context_t*, align 8
  %17 = alloca i32*, align 8
  %18 = alloca i64, align 8
  %19 = alloca i64, align 8
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  store i32* %0, i32** %9, align 8
  store i8* %1, i8** %10, align 8
  store i8* %2, i8** %11, align 8
  store i64 %3, i64* %12, align 8
  store i8* %4, i8** %13, align 8
  store i8* %5, i8** %14, align 8
  store i64 %6, i64* %15, align 8
  %22 = load i32*, i32** %9, align 8
  %23 = bitcast i32* %22 to %struct.aead_crypto_context_t*
  store %struct.aead_crypto_context_t* %23, %struct.aead_crypto_context_t** %16, align 8
  %24 = load i8*, i8** %10, align 8
  %25 = bitcast i8* %24 to i32*
  store i32* %25, i32** %17, align 8
  store i64 0, i64* %18, align 8
  %26 = load %struct.aead_crypto_context_t*, %struct.aead_crypto_context_t** %16, align 8
  %27 = getelementptr inbounds %struct.aead_crypto_context_t, %struct.aead_crypto_context_t* %26, i32 0, i32 1
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 0
  %29 = load %struct.TYPE_3__*, %struct.TYPE_3__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  store i64 %31, i64* %19, align 8
  %32 = load i64, i64* %12, align 8
  %33 = load i64, i64* %19, align 8
  %34 = icmp ult i64 %32, %33
  br i1 %34, label %35, label %37

35:                                               ; preds = %7
  %36 = load i64, i64* @SIZE_MAX, align 8
  store i64 %36, i64* %8, align 8
  br label %111

37:                                               ; preds = %7
  %38 = load %struct.aead_crypto_context_t*, %struct.aead_crypto_context_t** %16, align 8
  %39 = getelementptr inbounds %struct.aead_crypto_context_t, %struct.aead_crypto_context_t* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = load i8*, i8** %13, align 8
  %42 = call i32 @EVP_DecryptInit_ex(i32 %40, i32* null, i32* null, i32* null, i8* %41)
  store i32 %42, i32* %21, align 4
  %43 = load i32, i32* %21, align 4
  %44 = call i32 @assert(i32 %43)
  %45 = load i64, i64* %15, align 8
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %57

47:                                               ; preds = %37
  %48 = load %struct.aead_crypto_context_t*, %struct.aead_crypto_context_t** %16, align 8
  %49 = getelementptr inbounds %struct.aead_crypto_context_t, %struct.aead_crypto_context_t* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = load i8*, i8** %14, align 8
  %52 = load i64, i64* %15, align 8
  %53 = trunc i64 %52 to i32
  %54 = call i32 @EVP_DecryptUpdate(i32 %50, i32* null, i32* %20, i8* %51, i32 %53)
  store i32 %54, i32* %21, align 4
  %55 = load i32, i32* %21, align 4
  %56 = call i32 @assert(i32 %55)
  br label %57

57:                                               ; preds = %47, %37
  %58 = load %struct.aead_crypto_context_t*, %struct.aead_crypto_context_t** %16, align 8
  %59 = getelementptr inbounds %struct.aead_crypto_context_t, %struct.aead_crypto_context_t* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  %61 = load i32*, i32** %17, align 8
  %62 = load i64, i64* %18, align 8
  %63 = getelementptr inbounds i32, i32* %61, i64 %62
  %64 = load i8*, i8** %11, align 8
  %65 = load i64, i64* %12, align 8
  %66 = load i64, i64* %19, align 8
  %67 = sub i64 %65, %66
  %68 = trunc i64 %67 to i32
  %69 = call i32 @EVP_DecryptUpdate(i32 %60, i32* %63, i32* %20, i8* %64, i32 %68)
  store i32 %69, i32* %21, align 4
  %70 = load i32, i32* %21, align 4
  %71 = call i32 @assert(i32 %70)
  %72 = load i32, i32* %20, align 4
  %73 = sext i32 %72 to i64
  %74 = load i64, i64* %18, align 8
  %75 = add i64 %74, %73
  store i64 %75, i64* %18, align 8
  %76 = load %struct.aead_crypto_context_t*, %struct.aead_crypto_context_t** %16, align 8
  %77 = getelementptr inbounds %struct.aead_crypto_context_t, %struct.aead_crypto_context_t* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 8
  %79 = load i32, i32* @EVP_CTRL_GCM_SET_TAG, align 4
  %80 = load i64, i64* %19, align 8
  %81 = trunc i64 %80 to i32
  %82 = load i8*, i8** %11, align 8
  %83 = bitcast i8* %82 to i32*
  %84 = load i64, i64* %12, align 8
  %85 = getelementptr inbounds i32, i32* %83, i64 %84
  %86 = load i64, i64* %19, align 8
  %87 = sub i64 0, %86
  %88 = getelementptr inbounds i32, i32* %85, i64 %87
  %89 = bitcast i32* %88 to i8*
  %90 = call i32 @EVP_CIPHER_CTX_ctrl(i32 %78, i32 %79, i32 %81, i8* %89)
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %94, label %92

92:                                               ; preds = %57
  %93 = load i64, i64* @SIZE_MAX, align 8
  store i64 %93, i64* %8, align 8
  br label %111

94:                                               ; preds = %57
  %95 = load %struct.aead_crypto_context_t*, %struct.aead_crypto_context_t** %16, align 8
  %96 = getelementptr inbounds %struct.aead_crypto_context_t, %struct.aead_crypto_context_t* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 8
  %98 = load i32*, i32** %17, align 8
  %99 = load i64, i64* %18, align 8
  %100 = getelementptr inbounds i32, i32* %98, i64 %99
  %101 = call i32 @EVP_DecryptFinal_ex(i32 %97, i32* %100, i32* %20)
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %105, label %103

103:                                              ; preds = %94
  %104 = load i64, i64* @SIZE_MAX, align 8
  store i64 %104, i64* %8, align 8
  br label %111

105:                                              ; preds = %94
  %106 = load i32, i32* %20, align 4
  %107 = sext i32 %106 to i64
  %108 = load i64, i64* %18, align 8
  %109 = add i64 %108, %107
  store i64 %109, i64* %18, align 8
  %110 = load i64, i64* %18, align 8
  store i64 %110, i64* %8, align 8
  br label %111

111:                                              ; preds = %105, %103, %92, %35
  %112 = load i64, i64* %8, align 8
  ret i64 %112
}

declare dso_local i32 @EVP_DecryptInit_ex(i32, i32*, i32*, i32*, i8*) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @EVP_DecryptUpdate(i32, i32*, i32*, i8*, i32) #1

declare dso_local i32 @EVP_CIPHER_CTX_ctrl(i32, i32, i32, i8*) #1

declare dso_local i32 @EVP_DecryptFinal_ex(i32, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
