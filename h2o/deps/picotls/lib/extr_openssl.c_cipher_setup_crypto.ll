; ModuleID = '/home/carl/AnghaBench/h2o/deps/picotls/lib/extr_openssl.c_cipher_setup_crypto.c'
source_filename = "/home/carl/AnghaBench/h2o/deps/picotls/lib/extr_openssl.c_cipher_setup_crypto.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cipher_context_t = type { i32*, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { void (i32*, i8*, i8*, i64)*, i32, i32 }

@cipher_dispose = common dso_local global i32 0, align 4
@cipher_do_init = common dso_local global i32 0, align 4
@PTLS_ERROR_NO_MEMORY = common dso_local global i32 0, align 4
@PTLS_ERROR_LIBRARY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32, i8*, i32*, void (i32*, i8*, i8*, i64)*)* @cipher_setup_crypto to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cipher_setup_crypto(i32* %0, i32 %1, i8* %2, i32* %3, void (i32*, i8*, i8*, i64)* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca void (i32*, i8*, i8*, i64)*, align 8
  %12 = alloca %struct.cipher_context_t*, align 8
  store i32* %0, i32** %7, align 8
  store i32 %1, i32* %8, align 4
  store i8* %2, i8** %9, align 8
  store i32* %3, i32** %10, align 8
  store void (i32*, i8*, i8*, i64)* %4, void (i32*, i8*, i8*, i64)** %11, align 8
  %13 = load i32*, i32** %7, align 8
  %14 = bitcast i32* %13 to %struct.cipher_context_t*
  store %struct.cipher_context_t* %14, %struct.cipher_context_t** %12, align 8
  %15 = load i32, i32* @cipher_dispose, align 4
  %16 = load %struct.cipher_context_t*, %struct.cipher_context_t** %12, align 8
  %17 = getelementptr inbounds %struct.cipher_context_t, %struct.cipher_context_t* %16, i32 0, i32 1
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 2
  store i32 %15, i32* %18, align 4
  %19 = load i32, i32* @cipher_do_init, align 4
  %20 = load %struct.cipher_context_t*, %struct.cipher_context_t** %12, align 8
  %21 = getelementptr inbounds %struct.cipher_context_t, %struct.cipher_context_t* %20, i32 0, i32 1
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 1
  store i32 %19, i32* %22, align 8
  %23 = load void (i32*, i8*, i8*, i64)*, void (i32*, i8*, i8*, i64)** %11, align 8
  %24 = load %struct.cipher_context_t*, %struct.cipher_context_t** %12, align 8
  %25 = getelementptr inbounds %struct.cipher_context_t, %struct.cipher_context_t* %24, i32 0, i32 1
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 0
  store void (i32*, i8*, i8*, i64)* %23, void (i32*, i8*, i8*, i64)** %26, align 8
  %27 = call i32* (...) @EVP_CIPHER_CTX_new()
  %28 = load %struct.cipher_context_t*, %struct.cipher_context_t** %12, align 8
  %29 = getelementptr inbounds %struct.cipher_context_t, %struct.cipher_context_t* %28, i32 0, i32 0
  store i32* %27, i32** %29, align 8
  %30 = icmp eq i32* %27, null
  br i1 %30, label %31, label %33

31:                                               ; preds = %5
  %32 = load i32, i32* @PTLS_ERROR_NO_MEMORY, align 4
  store i32 %32, i32* %6, align 4
  br label %67

33:                                               ; preds = %5
  %34 = load i32, i32* %8, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %46

36:                                               ; preds = %33
  %37 = load %struct.cipher_context_t*, %struct.cipher_context_t** %12, align 8
  %38 = getelementptr inbounds %struct.cipher_context_t, %struct.cipher_context_t* %37, i32 0, i32 0
  %39 = load i32*, i32** %38, align 8
  %40 = load i32*, i32** %10, align 8
  %41 = load i8*, i8** %9, align 8
  %42 = call i32 @EVP_EncryptInit_ex(i32* %39, i32* %40, i32* null, i8* %41, i32* null)
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %45, label %44

44:                                               ; preds = %36
  br label %61

45:                                               ; preds = %36
  br label %60

46:                                               ; preds = %33
  %47 = load %struct.cipher_context_t*, %struct.cipher_context_t** %12, align 8
  %48 = getelementptr inbounds %struct.cipher_context_t, %struct.cipher_context_t* %47, i32 0, i32 0
  %49 = load i32*, i32** %48, align 8
  %50 = load i32*, i32** %10, align 8
  %51 = load i8*, i8** %9, align 8
  %52 = call i32 @EVP_DecryptInit_ex(i32* %49, i32* %50, i32* null, i8* %51, i32* null)
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %55, label %54

54:                                               ; preds = %46
  br label %61

55:                                               ; preds = %46
  %56 = load %struct.cipher_context_t*, %struct.cipher_context_t** %12, align 8
  %57 = getelementptr inbounds %struct.cipher_context_t, %struct.cipher_context_t* %56, i32 0, i32 0
  %58 = load i32*, i32** %57, align 8
  %59 = call i32 @EVP_CIPHER_CTX_set_padding(i32* %58, i32 0)
  br label %60

60:                                               ; preds = %55, %45
  store i32 0, i32* %6, align 4
  br label %67

61:                                               ; preds = %54, %44
  %62 = load %struct.cipher_context_t*, %struct.cipher_context_t** %12, align 8
  %63 = getelementptr inbounds %struct.cipher_context_t, %struct.cipher_context_t* %62, i32 0, i32 0
  %64 = load i32*, i32** %63, align 8
  %65 = call i32 @EVP_CIPHER_CTX_free(i32* %64)
  %66 = load i32, i32* @PTLS_ERROR_LIBRARY, align 4
  store i32 %66, i32* %6, align 4
  br label %67

67:                                               ; preds = %61, %60, %31
  %68 = load i32, i32* %6, align 4
  ret i32 %68
}

declare dso_local i32* @EVP_CIPHER_CTX_new(...) #1

declare dso_local i32 @EVP_EncryptInit_ex(i32*, i32*, i32*, i8*, i32*) #1

declare dso_local i32 @EVP_DecryptInit_ex(i32*, i32*, i32*, i8*, i32*) #1

declare dso_local i32 @EVP_CIPHER_CTX_set_padding(i32*, i32) #1

declare dso_local i32 @EVP_CIPHER_CTX_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
