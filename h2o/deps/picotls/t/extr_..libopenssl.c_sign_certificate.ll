; ModuleID = '/home/carl/AnghaBench/h2o/deps/picotls/t/extr_..libopenssl.c_sign_certificate.c'
source_filename = "/home/carl/AnghaBench/h2o/deps/picotls/t/extr_..libopenssl.c_sign_certificate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, %struct.st_ptls_openssl_signature_scheme_t* }
%struct.st_ptls_openssl_signature_scheme_t = type { i64, i32 }

@UINT16_MAX = common dso_local global i64 0, align 8
@PTLS_ALERT_HANDSHAKE_FAILURE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32*, i64*, i32*, i32, i64*, i64)* @sign_certificate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sign_certificate(i32* %0, i32* %1, i64* %2, i32* %3, i32 %4, i64* %5, i64 %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i64*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i64*, align 8
  %15 = alloca i64, align 8
  %16 = alloca %struct.TYPE_2__*, align 8
  %17 = alloca %struct.st_ptls_openssl_signature_scheme_t*, align 8
  %18 = alloca i64, align 8
  store i32* %0, i32** %9, align 8
  store i32* %1, i32** %10, align 8
  store i64* %2, i64** %11, align 8
  store i32* %3, i32** %12, align 8
  store i32 %4, i32* %13, align 4
  store i64* %5, i64** %14, align 8
  store i64 %6, i64* %15, align 8
  %19 = load i32*, i32** %9, align 8
  %20 = bitcast i32* %19 to %struct.TYPE_2__*
  store %struct.TYPE_2__* %20, %struct.TYPE_2__** %16, align 8
  %21 = load %struct.TYPE_2__*, %struct.TYPE_2__** %16, align 8
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 1
  %23 = load %struct.st_ptls_openssl_signature_scheme_t*, %struct.st_ptls_openssl_signature_scheme_t** %22, align 8
  store %struct.st_ptls_openssl_signature_scheme_t* %23, %struct.st_ptls_openssl_signature_scheme_t** %17, align 8
  br label %24

24:                                               ; preds = %50, %7
  %25 = load %struct.st_ptls_openssl_signature_scheme_t*, %struct.st_ptls_openssl_signature_scheme_t** %17, align 8
  %26 = getelementptr inbounds %struct.st_ptls_openssl_signature_scheme_t, %struct.st_ptls_openssl_signature_scheme_t* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = load i64, i64* @UINT16_MAX, align 8
  %29 = icmp ne i64 %27, %28
  br i1 %29, label %30, label %53

30:                                               ; preds = %24
  store i64 0, i64* %18, align 8
  br label %31

31:                                               ; preds = %46, %30
  %32 = load i64, i64* %18, align 8
  %33 = load i64, i64* %15, align 8
  %34 = icmp ne i64 %32, %33
  br i1 %34, label %35, label %49

35:                                               ; preds = %31
  %36 = load i64*, i64** %14, align 8
  %37 = load i64, i64* %18, align 8
  %38 = getelementptr inbounds i64, i64* %36, i64 %37
  %39 = load i64, i64* %38, align 8
  %40 = load %struct.st_ptls_openssl_signature_scheme_t*, %struct.st_ptls_openssl_signature_scheme_t** %17, align 8
  %41 = getelementptr inbounds %struct.st_ptls_openssl_signature_scheme_t, %struct.st_ptls_openssl_signature_scheme_t* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = icmp eq i64 %39, %42
  br i1 %43, label %44, label %45

44:                                               ; preds = %35
  br label %55

45:                                               ; preds = %35
  br label %46

46:                                               ; preds = %45
  %47 = load i64, i64* %18, align 8
  %48 = add i64 %47, 1
  store i64 %48, i64* %18, align 8
  br label %31

49:                                               ; preds = %31
  br label %50

50:                                               ; preds = %49
  %51 = load %struct.st_ptls_openssl_signature_scheme_t*, %struct.st_ptls_openssl_signature_scheme_t** %17, align 8
  %52 = getelementptr inbounds %struct.st_ptls_openssl_signature_scheme_t, %struct.st_ptls_openssl_signature_scheme_t* %51, i32 1
  store %struct.st_ptls_openssl_signature_scheme_t* %52, %struct.st_ptls_openssl_signature_scheme_t** %17, align 8
  br label %24

53:                                               ; preds = %24
  %54 = load i32, i32* @PTLS_ALERT_HANDSHAKE_FAILURE, align 4
  store i32 %54, i32* %8, align 4
  br label %69

55:                                               ; preds = %44
  %56 = load %struct.st_ptls_openssl_signature_scheme_t*, %struct.st_ptls_openssl_signature_scheme_t** %17, align 8
  %57 = getelementptr inbounds %struct.st_ptls_openssl_signature_scheme_t, %struct.st_ptls_openssl_signature_scheme_t* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = load i64*, i64** %11, align 8
  store i64 %58, i64* %59, align 8
  %60 = load %struct.TYPE_2__*, %struct.TYPE_2__** %16, align 8
  %61 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 8
  %63 = load i32*, i32** %12, align 8
  %64 = load i32, i32* %13, align 4
  %65 = load %struct.st_ptls_openssl_signature_scheme_t*, %struct.st_ptls_openssl_signature_scheme_t** %17, align 8
  %66 = getelementptr inbounds %struct.st_ptls_openssl_signature_scheme_t, %struct.st_ptls_openssl_signature_scheme_t* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 8
  %68 = call i32 @do_sign(i32 %62, i32* %63, i32 %64, i32 %67)
  store i32 %68, i32* %8, align 4
  br label %69

69:                                               ; preds = %55, %53
  %70 = load i32, i32* %8, align 4
  ret i32 %70
}

declare dso_local i32 @do_sign(i32, i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
