; ModuleID = '/home/carl/AnghaBench/h2o/deps/picotls/lib/extr_openssl.c_aead_setup_crypto.c'
source_filename = "/home/carl/AnghaBench/h2o/deps/picotls/lib/extr_openssl.c_aead_setup_crypto.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.aead_crypto_context_t = type { %struct.TYPE_4__, i32* }
%struct.TYPE_4__ = type { %struct.TYPE_3__*, i32*, i32*, i32*, i32*, i32 (%struct.TYPE_4__*)* }
%struct.TYPE_3__ = type { i64 }

@aead_do_encrypt_init = common dso_local global i32* null, align 8
@aead_do_encrypt_update = common dso_local global i32* null, align 8
@aead_do_encrypt_final = common dso_local global i32* null, align 8
@aead_do_decrypt = common dso_local global i32* null, align 8
@PTLS_ERROR_NO_MEMORY = common dso_local global i32 0, align 4
@PTLS_ERROR_LIBRARY = common dso_local global i32 0, align 4
@EVP_CTRL_GCM_SET_IVLEN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32, i8*, i32*)* @aead_setup_crypto to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @aead_setup_crypto(i32* %0, i32 %1, i8* %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca %struct.aead_crypto_context_t*, align 8
  %11 = alloca i32, align 4
  store i32* %0, i32** %6, align 8
  store i32 %1, i32* %7, align 4
  store i8* %2, i8** %8, align 8
  store i32* %3, i32** %9, align 8
  %12 = load i32*, i32** %6, align 8
  %13 = bitcast i32* %12 to %struct.aead_crypto_context_t*
  store %struct.aead_crypto_context_t* %13, %struct.aead_crypto_context_t** %10, align 8
  %14 = load %struct.aead_crypto_context_t*, %struct.aead_crypto_context_t** %10, align 8
  %15 = getelementptr inbounds %struct.aead_crypto_context_t, %struct.aead_crypto_context_t* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 5
  store i32 (%struct.TYPE_4__*)* @aead_dispose_crypto, i32 (%struct.TYPE_4__*)** %16, align 8
  %17 = load i32, i32* %7, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %35

19:                                               ; preds = %4
  %20 = load i32*, i32** @aead_do_encrypt_init, align 8
  %21 = load %struct.aead_crypto_context_t*, %struct.aead_crypto_context_t** %10, align 8
  %22 = getelementptr inbounds %struct.aead_crypto_context_t, %struct.aead_crypto_context_t* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 4
  store i32* %20, i32** %23, align 8
  %24 = load i32*, i32** @aead_do_encrypt_update, align 8
  %25 = load %struct.aead_crypto_context_t*, %struct.aead_crypto_context_t** %10, align 8
  %26 = getelementptr inbounds %struct.aead_crypto_context_t, %struct.aead_crypto_context_t* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 3
  store i32* %24, i32** %27, align 8
  %28 = load i32*, i32** @aead_do_encrypt_final, align 8
  %29 = load %struct.aead_crypto_context_t*, %struct.aead_crypto_context_t** %10, align 8
  %30 = getelementptr inbounds %struct.aead_crypto_context_t, %struct.aead_crypto_context_t* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 2
  store i32* %28, i32** %31, align 8
  %32 = load %struct.aead_crypto_context_t*, %struct.aead_crypto_context_t** %10, align 8
  %33 = getelementptr inbounds %struct.aead_crypto_context_t, %struct.aead_crypto_context_t* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 1
  store i32* null, i32** %34, align 8
  br label %49

35:                                               ; preds = %4
  %36 = load %struct.aead_crypto_context_t*, %struct.aead_crypto_context_t** %10, align 8
  %37 = getelementptr inbounds %struct.aead_crypto_context_t, %struct.aead_crypto_context_t* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i32 0, i32 4
  store i32* null, i32** %38, align 8
  %39 = load %struct.aead_crypto_context_t*, %struct.aead_crypto_context_t** %10, align 8
  %40 = getelementptr inbounds %struct.aead_crypto_context_t, %struct.aead_crypto_context_t* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i32 0, i32 3
  store i32* null, i32** %41, align 8
  %42 = load %struct.aead_crypto_context_t*, %struct.aead_crypto_context_t** %10, align 8
  %43 = getelementptr inbounds %struct.aead_crypto_context_t, %struct.aead_crypto_context_t* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %43, i32 0, i32 2
  store i32* null, i32** %44, align 8
  %45 = load i32*, i32** @aead_do_decrypt, align 8
  %46 = load %struct.aead_crypto_context_t*, %struct.aead_crypto_context_t** %10, align 8
  %47 = getelementptr inbounds %struct.aead_crypto_context_t, %struct.aead_crypto_context_t* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %47, i32 0, i32 1
  store i32* %45, i32** %48, align 8
  br label %49

49:                                               ; preds = %35, %19
  %50 = load %struct.aead_crypto_context_t*, %struct.aead_crypto_context_t** %10, align 8
  %51 = getelementptr inbounds %struct.aead_crypto_context_t, %struct.aead_crypto_context_t* %50, i32 0, i32 1
  store i32* null, i32** %51, align 8
  %52 = call i32* (...) @EVP_CIPHER_CTX_new()
  %53 = load %struct.aead_crypto_context_t*, %struct.aead_crypto_context_t** %10, align 8
  %54 = getelementptr inbounds %struct.aead_crypto_context_t, %struct.aead_crypto_context_t* %53, i32 0, i32 1
  store i32* %52, i32** %54, align 8
  %55 = icmp eq i32* %52, null
  br i1 %55, label %56, label %58

56:                                               ; preds = %49
  %57 = load i32, i32* @PTLS_ERROR_NO_MEMORY, align 4
  store i32 %57, i32* %11, align 4
  br label %100

58:                                               ; preds = %49
  %59 = load i32, i32* %7, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %72

61:                                               ; preds = %58
  %62 = load %struct.aead_crypto_context_t*, %struct.aead_crypto_context_t** %10, align 8
  %63 = getelementptr inbounds %struct.aead_crypto_context_t, %struct.aead_crypto_context_t* %62, i32 0, i32 1
  %64 = load i32*, i32** %63, align 8
  %65 = load i32*, i32** %9, align 8
  %66 = load i8*, i8** %8, align 8
  %67 = call i32 @EVP_EncryptInit_ex(i32* %64, i32* %65, i32* null, i8* %66, i32* null)
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %71, label %69

69:                                               ; preds = %61
  %70 = load i32, i32* @PTLS_ERROR_LIBRARY, align 4
  store i32 %70, i32* %11, align 4
  br label %100

71:                                               ; preds = %61
  br label %83

72:                                               ; preds = %58
  %73 = load %struct.aead_crypto_context_t*, %struct.aead_crypto_context_t** %10, align 8
  %74 = getelementptr inbounds %struct.aead_crypto_context_t, %struct.aead_crypto_context_t* %73, i32 0, i32 1
  %75 = load i32*, i32** %74, align 8
  %76 = load i32*, i32** %9, align 8
  %77 = load i8*, i8** %8, align 8
  %78 = call i32 @EVP_DecryptInit_ex(i32* %75, i32* %76, i32* null, i8* %77, i32* null)
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %82, label %80

80:                                               ; preds = %72
  %81 = load i32, i32* @PTLS_ERROR_LIBRARY, align 4
  store i32 %81, i32* %11, align 4
  br label %100

82:                                               ; preds = %72
  br label %83

83:                                               ; preds = %82, %71
  %84 = load %struct.aead_crypto_context_t*, %struct.aead_crypto_context_t** %10, align 8
  %85 = getelementptr inbounds %struct.aead_crypto_context_t, %struct.aead_crypto_context_t* %84, i32 0, i32 1
  %86 = load i32*, i32** %85, align 8
  %87 = load i32, i32* @EVP_CTRL_GCM_SET_IVLEN, align 4
  %88 = load %struct.aead_crypto_context_t*, %struct.aead_crypto_context_t** %10, align 8
  %89 = getelementptr inbounds %struct.aead_crypto_context_t, %struct.aead_crypto_context_t* %88, i32 0, i32 0
  %90 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %89, i32 0, i32 0
  %91 = load %struct.TYPE_3__*, %struct.TYPE_3__** %90, align 8
  %92 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %91, i32 0, i32 0
  %93 = load i64, i64* %92, align 8
  %94 = trunc i64 %93 to i32
  %95 = call i32 @EVP_CIPHER_CTX_ctrl(i32* %86, i32 %87, i32 %94, i32* null)
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %99, label %97

97:                                               ; preds = %83
  %98 = load i32, i32* @PTLS_ERROR_LIBRARY, align 4
  store i32 %98, i32* %11, align 4
  br label %100

99:                                               ; preds = %83
  store i32 0, i32* %5, align 4
  br label %105

100:                                              ; preds = %97, %80, %69, %56
  %101 = load %struct.aead_crypto_context_t*, %struct.aead_crypto_context_t** %10, align 8
  %102 = getelementptr inbounds %struct.aead_crypto_context_t, %struct.aead_crypto_context_t* %101, i32 0, i32 0
  %103 = call i32 @aead_dispose_crypto(%struct.TYPE_4__* %102)
  %104 = load i32, i32* %11, align 4
  store i32 %104, i32* %5, align 4
  br label %105

105:                                              ; preds = %100, %99
  %106 = load i32, i32* %5, align 4
  ret i32 %106
}

declare dso_local i32 @aead_dispose_crypto(%struct.TYPE_4__*) #1

declare dso_local i32* @EVP_CIPHER_CTX_new(...) #1

declare dso_local i32 @EVP_EncryptInit_ex(i32*, i32*, i32*, i8*, i32*) #1

declare dso_local i32 @EVP_DecryptInit_ex(i32*, i32*, i32*, i8*, i32*) #1

declare dso_local i32 @EVP_CIPHER_CTX_ctrl(i32*, i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
