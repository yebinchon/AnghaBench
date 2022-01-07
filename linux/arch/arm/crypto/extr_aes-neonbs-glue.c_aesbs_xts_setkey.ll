; ModuleID = '/home/carl/AnghaBench/linux/arch/arm/crypto/extr_aes-neonbs-glue.c_aesbs_xts_setkey.c'
source_filename = "/home/carl/AnghaBench/linux/arch/arm/crypto/extr_aes-neonbs-glue.c_aesbs_xts_setkey.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.crypto_skcipher = type { i32 }
%struct.aesbs_xts_ctx = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.crypto_skcipher*, i32*, i32)* @aesbs_xts_setkey to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @aesbs_xts_setkey(%struct.crypto_skcipher* %0, i32* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.crypto_skcipher*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.aesbs_xts_ctx*, align 8
  %9 = alloca i32, align 4
  store %struct.crypto_skcipher* %0, %struct.crypto_skcipher** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32 %2, i32* %7, align 4
  %10 = load %struct.crypto_skcipher*, %struct.crypto_skcipher** %5, align 8
  %11 = call %struct.aesbs_xts_ctx* @crypto_skcipher_ctx(%struct.crypto_skcipher* %10)
  store %struct.aesbs_xts_ctx* %11, %struct.aesbs_xts_ctx** %8, align 8
  %12 = load %struct.crypto_skcipher*, %struct.crypto_skcipher** %5, align 8
  %13 = load i32*, i32** %6, align 8
  %14 = load i32, i32* %7, align 4
  %15 = call i32 @xts_verify_key(%struct.crypto_skcipher* %12, i32* %13, i32 %14)
  store i32 %15, i32* %9, align 4
  %16 = load i32, i32* %9, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %20

18:                                               ; preds = %3
  %19 = load i32, i32* %9, align 4
  store i32 %19, i32* %4, align 4
  br label %52

20:                                               ; preds = %3
  %21 = load i32, i32* %7, align 4
  %22 = udiv i32 %21, 2
  store i32 %22, i32* %7, align 4
  %23 = load %struct.aesbs_xts_ctx*, %struct.aesbs_xts_ctx** %8, align 8
  %24 = getelementptr inbounds %struct.aesbs_xts_ctx, %struct.aesbs_xts_ctx* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = load i32*, i32** %6, align 8
  %27 = load i32, i32* %7, align 4
  %28 = call i32 @crypto_cipher_setkey(i32 %25, i32* %26, i32 %27)
  store i32 %28, i32* %9, align 4
  %29 = load i32, i32* %9, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %33

31:                                               ; preds = %20
  %32 = load i32, i32* %9, align 4
  store i32 %32, i32* %4, align 4
  br label %52

33:                                               ; preds = %20
  %34 = load %struct.aesbs_xts_ctx*, %struct.aesbs_xts_ctx** %8, align 8
  %35 = getelementptr inbounds %struct.aesbs_xts_ctx, %struct.aesbs_xts_ctx* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = load i32*, i32** %6, align 8
  %38 = load i32, i32* %7, align 4
  %39 = zext i32 %38 to i64
  %40 = getelementptr inbounds i32, i32* %37, i64 %39
  %41 = load i32, i32* %7, align 4
  %42 = call i32 @crypto_cipher_setkey(i32 %36, i32* %40, i32 %41)
  store i32 %42, i32* %9, align 4
  %43 = load i32, i32* %9, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %47

45:                                               ; preds = %33
  %46 = load i32, i32* %9, align 4
  store i32 %46, i32* %4, align 4
  br label %52

47:                                               ; preds = %33
  %48 = load %struct.crypto_skcipher*, %struct.crypto_skcipher** %5, align 8
  %49 = load i32*, i32** %6, align 8
  %50 = load i32, i32* %7, align 4
  %51 = call i32 @aesbs_setkey(%struct.crypto_skcipher* %48, i32* %49, i32 %50)
  store i32 %51, i32* %4, align 4
  br label %52

52:                                               ; preds = %47, %45, %31, %18
  %53 = load i32, i32* %4, align 4
  ret i32 %53
}

declare dso_local %struct.aesbs_xts_ctx* @crypto_skcipher_ctx(%struct.crypto_skcipher*) #1

declare dso_local i32 @xts_verify_key(%struct.crypto_skcipher*, i32*, i32) #1

declare dso_local i32 @crypto_cipher_setkey(i32, i32*, i32) #1

declare dso_local i32 @aesbs_setkey(%struct.crypto_skcipher*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
