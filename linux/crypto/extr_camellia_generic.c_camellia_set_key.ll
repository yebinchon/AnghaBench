; ModuleID = '/home/carl/AnghaBench/linux/crypto/extr_camellia_generic.c_camellia_set_key.c'
source_filename = "/home/carl/AnghaBench/linux/crypto/extr_camellia_generic.c_camellia_set_key.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.crypto_tfm = type { i32 }
%struct.camellia_ctx = type { i32, i32 }

@CRYPTO_TFM_RES_BAD_KEY_LEN = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.crypto_tfm*, i32*, i32)* @camellia_set_key to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @camellia_set_key(%struct.crypto_tfm* %0, i32* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.crypto_tfm*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.camellia_ctx*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32*, align 8
  store %struct.crypto_tfm* %0, %struct.crypto_tfm** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32 %2, i32* %7, align 4
  %11 = load %struct.crypto_tfm*, %struct.crypto_tfm** %5, align 8
  %12 = call %struct.camellia_ctx* @crypto_tfm_ctx(%struct.crypto_tfm* %11)
  store %struct.camellia_ctx* %12, %struct.camellia_ctx** %8, align 8
  %13 = load i32*, i32** %6, align 8
  %14 = bitcast i32* %13 to i8*
  store i8* %14, i8** %9, align 8
  %15 = load %struct.crypto_tfm*, %struct.crypto_tfm** %5, align 8
  %16 = getelementptr inbounds %struct.crypto_tfm, %struct.crypto_tfm* %15, i32 0, i32 0
  store i32* %16, i32** %10, align 8
  %17 = load i32, i32* %7, align 4
  %18 = icmp ne i32 %17, 16
  br i1 %18, label %19, label %32

19:                                               ; preds = %3
  %20 = load i32, i32* %7, align 4
  %21 = icmp ne i32 %20, 24
  br i1 %21, label %22, label %32

22:                                               ; preds = %19
  %23 = load i32, i32* %7, align 4
  %24 = icmp ne i32 %23, 32
  br i1 %24, label %25, label %32

25:                                               ; preds = %22
  %26 = load i32, i32* @CRYPTO_TFM_RES_BAD_KEY_LEN, align 4
  %27 = load i32*, i32** %10, align 8
  %28 = load i32, i32* %27, align 4
  %29 = or i32 %28, %26
  store i32 %29, i32* %27, align 4
  %30 = load i32, i32* @EINVAL, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %4, align 4
  br label %56

32:                                               ; preds = %22, %19, %3
  %33 = load i32, i32* %7, align 4
  %34 = load %struct.camellia_ctx*, %struct.camellia_ctx** %8, align 8
  %35 = getelementptr inbounds %struct.camellia_ctx, %struct.camellia_ctx* %34, i32 0, i32 0
  store i32 %33, i32* %35, align 4
  %36 = load i32, i32* %7, align 4
  switch i32 %36, label %55 [
    i32 16, label %37
    i32 24, label %43
    i32 32, label %49
  ]

37:                                               ; preds = %32
  %38 = load i8*, i8** %9, align 8
  %39 = load %struct.camellia_ctx*, %struct.camellia_ctx** %8, align 8
  %40 = getelementptr inbounds %struct.camellia_ctx, %struct.camellia_ctx* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = call i32 @camellia_setup128(i8* %38, i32 %41)
  br label %55

43:                                               ; preds = %32
  %44 = load i8*, i8** %9, align 8
  %45 = load %struct.camellia_ctx*, %struct.camellia_ctx** %8, align 8
  %46 = getelementptr inbounds %struct.camellia_ctx, %struct.camellia_ctx* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = call i32 @camellia_setup192(i8* %44, i32 %47)
  br label %55

49:                                               ; preds = %32
  %50 = load i8*, i8** %9, align 8
  %51 = load %struct.camellia_ctx*, %struct.camellia_ctx** %8, align 8
  %52 = getelementptr inbounds %struct.camellia_ctx, %struct.camellia_ctx* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  %54 = call i32 @camellia_setup256(i8* %50, i32 %53)
  br label %55

55:                                               ; preds = %32, %49, %43, %37
  store i32 0, i32* %4, align 4
  br label %56

56:                                               ; preds = %55, %25
  %57 = load i32, i32* %4, align 4
  ret i32 %57
}

declare dso_local %struct.camellia_ctx* @crypto_tfm_ctx(%struct.crypto_tfm*) #1

declare dso_local i32 @camellia_setup128(i8*, i32) #1

declare dso_local i32 @camellia_setup192(i8*, i32) #1

declare dso_local i32 @camellia_setup256(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
