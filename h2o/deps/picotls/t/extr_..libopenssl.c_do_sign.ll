; ModuleID = '/home/carl/AnghaBench/h2o/deps/picotls/t/extr_..libopenssl.c_do_sign.c'
source_filename = "/home/carl/AnghaBench/h2o/deps/picotls/t/extr_..libopenssl.c_do_sign.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, i32* }
%struct.TYPE_6__ = type { i32, i32 }

@PTLS_ERROR_NO_MEMORY = common dso_local global i32 0, align 4
@PTLS_ERROR_LIBRARY = common dso_local global i32 0, align 4
@EVP_PKEY_RSA = common dso_local global i64 0, align 8
@RSA_PKCS1_PSS_PADDING = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, %struct.TYPE_7__*, i64, i32*)* @do_sign to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @do_sign(i32* %0, %struct.TYPE_7__* %1, i64 %2, i32* %3) #0 {
  %5 = alloca %struct.TYPE_6__, align 4
  %6 = alloca i32*, align 8
  %7 = alloca %struct.TYPE_7__*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = bitcast %struct.TYPE_6__* %5 to i64*
  store i64 %2, i64* %13, align 4
  store i32* %0, i32** %6, align 8
  store %struct.TYPE_7__* %1, %struct.TYPE_7__** %7, align 8
  store i32* %3, i32** %8, align 8
  store i32* null, i32** %9, align 8
  %14 = call i32* (...) @EVP_MD_CTX_create()
  store i32* %14, i32** %9, align 8
  %15 = icmp eq i32* %14, null
  br i1 %15, label %16, label %18

16:                                               ; preds = %4
  %17 = load i32, i32* @PTLS_ERROR_NO_MEMORY, align 4
  store i32 %17, i32* %12, align 4
  br label %96

18:                                               ; preds = %4
  %19 = load i32*, i32** %9, align 8
  %20 = load i32*, i32** %8, align 8
  %21 = load i32*, i32** %6, align 8
  %22 = call i32 @EVP_DigestSignInit(i32* %19, i32** %10, i32* %20, i32* null, i32* %21)
  %23 = icmp ne i32 %22, 1
  br i1 %23, label %24, label %26

24:                                               ; preds = %18
  %25 = load i32, i32* @PTLS_ERROR_LIBRARY, align 4
  store i32 %25, i32* %12, align 4
  br label %96

26:                                               ; preds = %18
  %27 = load i32*, i32** %6, align 8
  %28 = call i64 @EVP_PKEY_id(i32* %27)
  %29 = load i64, i64* @EVP_PKEY_RSA, align 8
  %30 = icmp eq i64 %28, %29
  br i1 %30, label %31, label %52

31:                                               ; preds = %26
  %32 = load i32*, i32** %10, align 8
  %33 = load i32, i32* @RSA_PKCS1_PSS_PADDING, align 4
  %34 = call i32 @EVP_PKEY_CTX_set_rsa_padding(i32* %32, i32 %33)
  %35 = icmp ne i32 %34, 1
  br i1 %35, label %36, label %38

36:                                               ; preds = %31
  %37 = load i32, i32* @PTLS_ERROR_LIBRARY, align 4
  store i32 %37, i32* %12, align 4
  br label %96

38:                                               ; preds = %31
  %39 = load i32*, i32** %10, align 8
  %40 = call i32 @EVP_PKEY_CTX_set_rsa_pss_saltlen(i32* %39, i32 -1)
  %41 = icmp ne i32 %40, 1
  br i1 %41, label %42, label %44

42:                                               ; preds = %38
  %43 = load i32, i32* @PTLS_ERROR_LIBRARY, align 4
  store i32 %43, i32* %12, align 4
  br label %96

44:                                               ; preds = %38
  %45 = load i32*, i32** %10, align 8
  %46 = call i32 (...) @EVP_sha256()
  %47 = call i32 @EVP_PKEY_CTX_set_rsa_mgf1_md(i32* %45, i32 %46)
  %48 = icmp ne i32 %47, 1
  br i1 %48, label %49, label %51

49:                                               ; preds = %44
  %50 = load i32, i32* @PTLS_ERROR_LIBRARY, align 4
  store i32 %50, i32* %12, align 4
  br label %96

51:                                               ; preds = %44
  br label %52

52:                                               ; preds = %51, %26
  %53 = load i32*, i32** %9, align 8
  %54 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %5, i32 0, i32 1
  %55 = load i32, i32* %54, align 4
  %56 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %5, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = call i32 @EVP_DigestSignUpdate(i32* %53, i32 %55, i32 %57)
  %59 = icmp ne i32 %58, 1
  br i1 %59, label %60, label %62

60:                                               ; preds = %52
  %61 = load i32, i32* @PTLS_ERROR_LIBRARY, align 4
  store i32 %61, i32* %12, align 4
  br label %96

62:                                               ; preds = %52
  %63 = load i32*, i32** %9, align 8
  %64 = call i32 @EVP_DigestSignFinal(i32* %63, i32* null, i64* %11)
  %65 = icmp ne i32 %64, 1
  br i1 %65, label %66, label %68

66:                                               ; preds = %62
  %67 = load i32, i32* @PTLS_ERROR_LIBRARY, align 4
  store i32 %67, i32* %12, align 4
  br label %96

68:                                               ; preds = %62
  %69 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %70 = load i64, i64* %11, align 8
  %71 = call i32 @ptls_buffer_reserve(%struct.TYPE_7__* %69, i64 %70)
  store i32 %71, i32* %12, align 4
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %74

73:                                               ; preds = %68
  br label %96

74:                                               ; preds = %68
  %75 = load i32*, i32** %9, align 8
  %76 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %77 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %76, i32 0, i32 1
  %78 = load i32*, i32** %77, align 8
  %79 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %80 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 8
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds i32, i32* %78, i64 %82
  %84 = call i32 @EVP_DigestSignFinal(i32* %75, i32* %83, i64* %11)
  %85 = icmp ne i32 %84, 1
  br i1 %85, label %86, label %88

86:                                               ; preds = %74
  %87 = load i32, i32* @PTLS_ERROR_LIBRARY, align 4
  store i32 %87, i32* %12, align 4
  br label %96

88:                                               ; preds = %74
  %89 = load i64, i64* %11, align 8
  %90 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %91 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 8
  %93 = sext i32 %92 to i64
  %94 = add i64 %93, %89
  %95 = trunc i64 %94 to i32
  store i32 %95, i32* %91, align 8
  store i32 0, i32* %12, align 4
  br label %96

96:                                               ; preds = %88, %86, %73, %66, %60, %49, %42, %36, %24, %16
  %97 = load i32*, i32** %9, align 8
  %98 = icmp ne i32* %97, null
  br i1 %98, label %99, label %102

99:                                               ; preds = %96
  %100 = load i32*, i32** %9, align 8
  %101 = call i32 @EVP_MD_CTX_destroy(i32* %100)
  br label %102

102:                                              ; preds = %99, %96
  %103 = load i32, i32* %12, align 4
  ret i32 %103
}

declare dso_local i32* @EVP_MD_CTX_create(...) #1

declare dso_local i32 @EVP_DigestSignInit(i32*, i32**, i32*, i32*, i32*) #1

declare dso_local i64 @EVP_PKEY_id(i32*) #1

declare dso_local i32 @EVP_PKEY_CTX_set_rsa_padding(i32*, i32) #1

declare dso_local i32 @EVP_PKEY_CTX_set_rsa_pss_saltlen(i32*, i32) #1

declare dso_local i32 @EVP_PKEY_CTX_set_rsa_mgf1_md(i32*, i32) #1

declare dso_local i32 @EVP_sha256(...) #1

declare dso_local i32 @EVP_DigestSignUpdate(i32*, i32, i32) #1

declare dso_local i32 @EVP_DigestSignFinal(i32*, i32*, i64*) #1

declare dso_local i32 @ptls_buffer_reserve(%struct.TYPE_7__*, i64) #1

declare dso_local i32 @EVP_MD_CTX_destroy(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
