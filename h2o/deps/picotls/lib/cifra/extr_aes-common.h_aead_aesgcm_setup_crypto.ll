; ModuleID = '/home/carl/AnghaBench/h2o/deps/picotls/lib/cifra/extr_aes-common.h_aead_aesgcm_setup_crypto.c'
source_filename = "/home/carl/AnghaBench/h2o/deps/picotls/lib/cifra/extr_aes-common.h_aead_aesgcm_setup_crypto.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.aesgcm_context_t = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32*, i32*, i32*, i32*, i32 }

@aesgcm_dispose_crypto = common dso_local global i32 0, align 4
@aesgcm_encrypt_init = common dso_local global i32* null, align 8
@aesgcm_encrypt_update = common dso_local global i32* null, align 8
@aesgcm_encrypt_final = common dso_local global i32* null, align 8
@aesgcm_decrypt = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32, i8*, i64)* @aead_aesgcm_setup_crypto to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @aead_aesgcm_setup_crypto(i32* %0, i32 %1, i8* %2, i64 %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.aesgcm_context_t*, align 8
  store i32* %0, i32** %5, align 8
  store i32 %1, i32* %6, align 4
  store i8* %2, i8** %7, align 8
  store i64 %3, i64* %8, align 8
  %10 = load i32*, i32** %5, align 8
  %11 = bitcast i32* %10 to %struct.aesgcm_context_t*
  store %struct.aesgcm_context_t* %11, %struct.aesgcm_context_t** %9, align 8
  %12 = load i32, i32* @aesgcm_dispose_crypto, align 4
  %13 = load %struct.aesgcm_context_t*, %struct.aesgcm_context_t** %9, align 8
  %14 = getelementptr inbounds %struct.aesgcm_context_t, %struct.aesgcm_context_t* %13, i32 0, i32 1
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 4
  store i32 %12, i32* %15, align 8
  %16 = load i32, i32* %6, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %34

18:                                               ; preds = %4
  %19 = load i32*, i32** @aesgcm_encrypt_init, align 8
  %20 = load %struct.aesgcm_context_t*, %struct.aesgcm_context_t** %9, align 8
  %21 = getelementptr inbounds %struct.aesgcm_context_t, %struct.aesgcm_context_t* %20, i32 0, i32 1
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 3
  store i32* %19, i32** %22, align 8
  %23 = load i32*, i32** @aesgcm_encrypt_update, align 8
  %24 = load %struct.aesgcm_context_t*, %struct.aesgcm_context_t** %9, align 8
  %25 = getelementptr inbounds %struct.aesgcm_context_t, %struct.aesgcm_context_t* %24, i32 0, i32 1
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 2
  store i32* %23, i32** %26, align 8
  %27 = load i32*, i32** @aesgcm_encrypt_final, align 8
  %28 = load %struct.aesgcm_context_t*, %struct.aesgcm_context_t** %9, align 8
  %29 = getelementptr inbounds %struct.aesgcm_context_t, %struct.aesgcm_context_t* %28, i32 0, i32 1
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 1
  store i32* %27, i32** %30, align 8
  %31 = load %struct.aesgcm_context_t*, %struct.aesgcm_context_t** %9, align 8
  %32 = getelementptr inbounds %struct.aesgcm_context_t, %struct.aesgcm_context_t* %31, i32 0, i32 1
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 0
  store i32* null, i32** %33, align 8
  br label %48

34:                                               ; preds = %4
  %35 = load %struct.aesgcm_context_t*, %struct.aesgcm_context_t** %9, align 8
  %36 = getelementptr inbounds %struct.aesgcm_context_t, %struct.aesgcm_context_t* %35, i32 0, i32 1
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 3
  store i32* null, i32** %37, align 8
  %38 = load %struct.aesgcm_context_t*, %struct.aesgcm_context_t** %9, align 8
  %39 = getelementptr inbounds %struct.aesgcm_context_t, %struct.aesgcm_context_t* %38, i32 0, i32 1
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 2
  store i32* null, i32** %40, align 8
  %41 = load %struct.aesgcm_context_t*, %struct.aesgcm_context_t** %9, align 8
  %42 = getelementptr inbounds %struct.aesgcm_context_t, %struct.aesgcm_context_t* %41, i32 0, i32 1
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 0, i32 1
  store i32* null, i32** %43, align 8
  %44 = load i32*, i32** @aesgcm_decrypt, align 8
  %45 = load %struct.aesgcm_context_t*, %struct.aesgcm_context_t** %9, align 8
  %46 = getelementptr inbounds %struct.aesgcm_context_t, %struct.aesgcm_context_t* %45, i32 0, i32 1
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i32 0, i32 0
  store i32* %44, i32** %47, align 8
  br label %48

48:                                               ; preds = %34, %18
  %49 = load %struct.aesgcm_context_t*, %struct.aesgcm_context_t** %9, align 8
  %50 = getelementptr inbounds %struct.aesgcm_context_t, %struct.aesgcm_context_t* %49, i32 0, i32 0
  %51 = load i8*, i8** %7, align 8
  %52 = load i64, i64* %8, align 8
  %53 = call i32 @cf_aes_init(i32* %50, i8* %51, i64 %52)
  ret i32 0
}

declare dso_local i32 @cf_aes_init(i32*, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
