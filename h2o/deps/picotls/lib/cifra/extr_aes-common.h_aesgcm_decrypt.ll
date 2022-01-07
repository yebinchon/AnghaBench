; ModuleID = '/home/carl/AnghaBench/h2o/deps/picotls/lib/cifra/extr_aes-common.h_aesgcm_decrypt.c'
source_filename = "/home/carl/AnghaBench/h2o/deps/picotls/lib/cifra/extr_aes-common.h_aesgcm_decrypt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.aesgcm_context_t = type { i32 }

@PTLS_AESGCM_TAG_SIZE = common dso_local global i64 0, align 8
@SIZE_MAX = common dso_local global i64 0, align 8
@cf_aes = common dso_local global i32 0, align 4
@PTLS_AESGCM_IV_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i32*, i8*, i8*, i64, i8*, i8*, i64)* @aesgcm_decrypt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @aesgcm_decrypt(i32* %0, i8* %1, i8* %2, i64 %3, i8* %4, i8* %5, i64 %6) #0 {
  %8 = alloca i64, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i64, align 8
  %16 = alloca %struct.aesgcm_context_t*, align 8
  %17 = alloca i64, align 8
  store i32* %0, i32** %9, align 8
  store i8* %1, i8** %10, align 8
  store i8* %2, i8** %11, align 8
  store i64 %3, i64* %12, align 8
  store i8* %4, i8** %13, align 8
  store i8* %5, i8** %14, align 8
  store i64 %6, i64* %15, align 8
  %18 = load i32*, i32** %9, align 8
  %19 = bitcast i32* %18 to %struct.aesgcm_context_t*
  store %struct.aesgcm_context_t* %19, %struct.aesgcm_context_t** %16, align 8
  %20 = load i64, i64* %12, align 8
  %21 = load i64, i64* @PTLS_AESGCM_TAG_SIZE, align 8
  %22 = icmp ult i64 %20, %21
  br i1 %22, label %23, label %25

23:                                               ; preds = %7
  %24 = load i64, i64* @SIZE_MAX, align 8
  store i64 %24, i64* %8, align 8
  br label %49

25:                                               ; preds = %7
  %26 = load i64, i64* %12, align 8
  %27 = load i64, i64* @PTLS_AESGCM_TAG_SIZE, align 8
  %28 = sub i64 %26, %27
  store i64 %28, i64* %17, align 8
  %29 = load %struct.aesgcm_context_t*, %struct.aesgcm_context_t** %16, align 8
  %30 = getelementptr inbounds %struct.aesgcm_context_t, %struct.aesgcm_context_t* %29, i32 0, i32 0
  %31 = load i8*, i8** %11, align 8
  %32 = load i64, i64* %17, align 8
  %33 = load i8*, i8** %14, align 8
  %34 = load i64, i64* %15, align 8
  %35 = load i8*, i8** %13, align 8
  %36 = load i32, i32* @PTLS_AESGCM_IV_SIZE, align 4
  %37 = load i8*, i8** %11, align 8
  %38 = bitcast i8* %37 to i32*
  %39 = load i64, i64* %17, align 8
  %40 = getelementptr inbounds i32, i32* %38, i64 %39
  %41 = load i64, i64* @PTLS_AESGCM_TAG_SIZE, align 8
  %42 = load i8*, i8** %10, align 8
  %43 = call i64 @cf_gcm_decrypt(i32* @cf_aes, i32* %30, i8* %31, i64 %32, i8* %33, i64 %34, i8* %35, i32 %36, i32* %40, i64 %41, i8* %42)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %47

45:                                               ; preds = %25
  %46 = load i64, i64* @SIZE_MAX, align 8
  store i64 %46, i64* %8, align 8
  br label %49

47:                                               ; preds = %25
  %48 = load i64, i64* %17, align 8
  store i64 %48, i64* %8, align 8
  br label %49

49:                                               ; preds = %47, %45, %23
  %50 = load i64, i64* %8, align 8
  ret i64 %50
}

declare dso_local i64 @cf_gcm_decrypt(i32*, i32*, i8*, i64, i8*, i64, i8*, i32, i32*, i64, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
