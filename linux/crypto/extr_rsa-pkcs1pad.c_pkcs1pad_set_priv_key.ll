; ModuleID = '/home/carl/AnghaBench/linux/crypto/extr_rsa-pkcs1pad.c_pkcs1pad_set_priv_key.c'
source_filename = "/home/carl/AnghaBench/linux/crypto/extr_rsa-pkcs1pad.c_pkcs1pad_set_priv_key.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.crypto_akcipher = type { i32 }
%struct.pkcs1pad_ctx = type { i32, i32 }

@PAGE_SIZE = common dso_local global i32 0, align 4
@ENOTSUPP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.crypto_akcipher*, i8*, i32)* @pkcs1pad_set_priv_key to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pkcs1pad_set_priv_key(%struct.crypto_akcipher* %0, i8* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.crypto_akcipher*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.pkcs1pad_ctx*, align 8
  %9 = alloca i32, align 4
  store %struct.crypto_akcipher* %0, %struct.crypto_akcipher** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  %10 = load %struct.crypto_akcipher*, %struct.crypto_akcipher** %5, align 8
  %11 = call %struct.pkcs1pad_ctx* @akcipher_tfm_ctx(%struct.crypto_akcipher* %10)
  store %struct.pkcs1pad_ctx* %11, %struct.pkcs1pad_ctx** %8, align 8
  %12 = load %struct.pkcs1pad_ctx*, %struct.pkcs1pad_ctx** %8, align 8
  %13 = getelementptr inbounds %struct.pkcs1pad_ctx, %struct.pkcs1pad_ctx* %12, i32 0, i32 0
  store i32 0, i32* %13, align 4
  %14 = load %struct.pkcs1pad_ctx*, %struct.pkcs1pad_ctx** %8, align 8
  %15 = getelementptr inbounds %struct.pkcs1pad_ctx, %struct.pkcs1pad_ctx* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  %17 = load i8*, i8** %6, align 8
  %18 = load i32, i32* %7, align 4
  %19 = call i32 @crypto_akcipher_set_priv_key(i32 %16, i8* %17, i32 %18)
  store i32 %19, i32* %9, align 4
  %20 = load i32, i32* %9, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %3
  %23 = load i32, i32* %9, align 4
  store i32 %23, i32* %4, align 4
  br label %39

24:                                               ; preds = %3
  %25 = load %struct.pkcs1pad_ctx*, %struct.pkcs1pad_ctx** %8, align 8
  %26 = getelementptr inbounds %struct.pkcs1pad_ctx, %struct.pkcs1pad_ctx* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @crypto_akcipher_maxsize(i32 %27)
  store i32 %28, i32* %9, align 4
  %29 = load i32, i32* %9, align 4
  %30 = load i32, i32* @PAGE_SIZE, align 4
  %31 = icmp sgt i32 %29, %30
  br i1 %31, label %32, label %35

32:                                               ; preds = %24
  %33 = load i32, i32* @ENOTSUPP, align 4
  %34 = sub nsw i32 0, %33
  store i32 %34, i32* %4, align 4
  br label %39

35:                                               ; preds = %24
  %36 = load i32, i32* %9, align 4
  %37 = load %struct.pkcs1pad_ctx*, %struct.pkcs1pad_ctx** %8, align 8
  %38 = getelementptr inbounds %struct.pkcs1pad_ctx, %struct.pkcs1pad_ctx* %37, i32 0, i32 0
  store i32 %36, i32* %38, align 4
  store i32 0, i32* %4, align 4
  br label %39

39:                                               ; preds = %35, %32, %22
  %40 = load i32, i32* %4, align 4
  ret i32 %40
}

declare dso_local %struct.pkcs1pad_ctx* @akcipher_tfm_ctx(%struct.crypto_akcipher*) #1

declare dso_local i32 @crypto_akcipher_set_priv_key(i32, i8*, i32) #1

declare dso_local i32 @crypto_akcipher_maxsize(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
