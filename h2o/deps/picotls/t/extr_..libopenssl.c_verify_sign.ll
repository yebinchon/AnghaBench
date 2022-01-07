; ModuleID = '/home/carl/AnghaBench/h2o/deps/picotls/t/extr_..libopenssl.c_verify_sign.c'
source_filename = "/home/carl/AnghaBench/h2o/deps/picotls/t/extr_..libopenssl.c_verify_sign.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32* }

@PTLS_ERROR_NO_MEMORY = common dso_local global i32 0, align 4
@PTLS_ERROR_LIBRARY = common dso_local global i32 0, align 4
@EVP_PKEY_RSA = common dso_local global i64 0, align 8
@RSA_PKCS1_PSS_PADDING = common dso_local global i32 0, align 4
@PTLS_ALERT_DECRYPT_ERROR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32, i32*, i32, i32*)* @verify_sign to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @verify_sign(i8* %0, i32 %1, i32* %2, i32 %3, i32* %4) #0 {
  %6 = alloca %struct.TYPE_4__, align 8
  %7 = alloca %struct.TYPE_4__, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = bitcast %struct.TYPE_4__* %6 to { i32, i32* }*
  %14 = getelementptr inbounds { i32, i32* }, { i32, i32* }* %13, i32 0, i32 0
  store i32 %1, i32* %14, align 8
  %15 = getelementptr inbounds { i32, i32* }, { i32, i32* }* %13, i32 0, i32 1
  store i32* %2, i32** %15, align 8
  %16 = bitcast %struct.TYPE_4__* %7 to { i32, i32* }*
  %17 = getelementptr inbounds { i32, i32* }, { i32, i32* }* %16, i32 0, i32 0
  store i32 %3, i32* %17, align 8
  %18 = getelementptr inbounds { i32, i32* }, { i32, i32* }* %16, i32 0, i32 1
  store i32* %4, i32** %18, align 8
  store i8* %0, i8** %8, align 8
  %19 = load i8*, i8** %8, align 8
  %20 = bitcast i8* %19 to i32*
  store i32* %20, i32** %9, align 8
  store i32* null, i32** %10, align 8
  store i32* null, i32** %11, align 8
  store i32 0, i32* %12, align 4
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %6, i32 0, i32 1
  %22 = load i32*, i32** %21, align 8
  %23 = icmp eq i32* %22, null
  br i1 %23, label %24, label %25

24:                                               ; preds = %5
  br label %85

25:                                               ; preds = %5
  %26 = call i32* (...) @EVP_MD_CTX_create()
  store i32* %26, i32** %10, align 8
  %27 = icmp eq i32* %26, null
  br i1 %27, label %28, label %30

28:                                               ; preds = %25
  %29 = load i32, i32* @PTLS_ERROR_NO_MEMORY, align 4
  store i32 %29, i32* %12, align 4
  br label %85

30:                                               ; preds = %25
  %31 = load i32*, i32** %10, align 8
  %32 = call i32 (...) @EVP_sha256()
  %33 = load i32*, i32** %9, align 8
  %34 = call i32 @EVP_DigestVerifyInit(i32* %31, i32** %11, i32 %32, i32* null, i32* %33)
  %35 = icmp ne i32 %34, 1
  br i1 %35, label %36, label %38

36:                                               ; preds = %30
  %37 = load i32, i32* @PTLS_ERROR_LIBRARY, align 4
  store i32 %37, i32* %12, align 4
  br label %85

38:                                               ; preds = %30
  %39 = load i32*, i32** %9, align 8
  %40 = call i64 @EVP_PKEY_id(i32* %39)
  %41 = load i64, i64* @EVP_PKEY_RSA, align 8
  %42 = icmp eq i64 %40, %41
  br i1 %42, label %43, label %64

43:                                               ; preds = %38
  %44 = load i32*, i32** %11, align 8
  %45 = load i32, i32* @RSA_PKCS1_PSS_PADDING, align 4
  %46 = call i32 @EVP_PKEY_CTX_set_rsa_padding(i32* %44, i32 %45)
  %47 = icmp ne i32 %46, 1
  br i1 %47, label %48, label %50

48:                                               ; preds = %43
  %49 = load i32, i32* @PTLS_ERROR_LIBRARY, align 4
  store i32 %49, i32* %12, align 4
  br label %85

50:                                               ; preds = %43
  %51 = load i32*, i32** %11, align 8
  %52 = call i32 @EVP_PKEY_CTX_set_rsa_pss_saltlen(i32* %51, i32 -1)
  %53 = icmp ne i32 %52, 1
  br i1 %53, label %54, label %56

54:                                               ; preds = %50
  %55 = load i32, i32* @PTLS_ERROR_LIBRARY, align 4
  store i32 %55, i32* %12, align 4
  br label %85

56:                                               ; preds = %50
  %57 = load i32*, i32** %11, align 8
  %58 = call i32 (...) @EVP_sha256()
  %59 = call i32 @EVP_PKEY_CTX_set_rsa_mgf1_md(i32* %57, i32 %58)
  %60 = icmp ne i32 %59, 1
  br i1 %60, label %61, label %63

61:                                               ; preds = %56
  %62 = load i32, i32* @PTLS_ERROR_LIBRARY, align 4
  store i32 %62, i32* %12, align 4
  br label %85

63:                                               ; preds = %56
  br label %64

64:                                               ; preds = %63, %38
  %65 = load i32*, i32** %10, align 8
  %66 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %6, i32 0, i32 1
  %67 = load i32*, i32** %66, align 8
  %68 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %6, i32 0, i32 0
  %69 = load i32, i32* %68, align 8
  %70 = call i32 @EVP_DigestVerifyUpdate(i32* %65, i32* %67, i32 %69)
  %71 = icmp ne i32 %70, 1
  br i1 %71, label %72, label %74

72:                                               ; preds = %64
  %73 = load i32, i32* @PTLS_ERROR_LIBRARY, align 4
  store i32 %73, i32* %12, align 4
  br label %85

74:                                               ; preds = %64
  %75 = load i32*, i32** %10, align 8
  %76 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %7, i32 0, i32 1
  %77 = load i32*, i32** %76, align 8
  %78 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %7, i32 0, i32 0
  %79 = load i32, i32* %78, align 8
  %80 = call i32 @EVP_DigestVerifyFinal(i32* %75, i32* %77, i32 %79)
  %81 = icmp ne i32 %80, 1
  br i1 %81, label %82, label %84

82:                                               ; preds = %74
  %83 = load i32, i32* @PTLS_ALERT_DECRYPT_ERROR, align 4
  store i32 %83, i32* %12, align 4
  br label %85

84:                                               ; preds = %74
  store i32 0, i32* %12, align 4
  br label %85

85:                                               ; preds = %84, %82, %72, %61, %54, %48, %36, %28, %24
  %86 = load i32*, i32** %10, align 8
  %87 = icmp ne i32* %86, null
  br i1 %87, label %88, label %91

88:                                               ; preds = %85
  %89 = load i32*, i32** %10, align 8
  %90 = call i32 @EVP_MD_CTX_destroy(i32* %89)
  br label %91

91:                                               ; preds = %88, %85
  %92 = load i32*, i32** %9, align 8
  %93 = call i32 @EVP_PKEY_free(i32* %92)
  %94 = load i32, i32* %12, align 4
  ret i32 %94
}

declare dso_local i32* @EVP_MD_CTX_create(...) #1

declare dso_local i32 @EVP_DigestVerifyInit(i32*, i32**, i32, i32*, i32*) #1

declare dso_local i32 @EVP_sha256(...) #1

declare dso_local i64 @EVP_PKEY_id(i32*) #1

declare dso_local i32 @EVP_PKEY_CTX_set_rsa_padding(i32*, i32) #1

declare dso_local i32 @EVP_PKEY_CTX_set_rsa_pss_saltlen(i32*, i32) #1

declare dso_local i32 @EVP_PKEY_CTX_set_rsa_mgf1_md(i32*, i32) #1

declare dso_local i32 @EVP_DigestVerifyUpdate(i32*, i32*, i32) #1

declare dso_local i32 @EVP_DigestVerifyFinal(i32*, i32*, i32) #1

declare dso_local i32 @EVP_MD_CTX_destroy(i32*) #1

declare dso_local i32 @EVP_PKEY_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
