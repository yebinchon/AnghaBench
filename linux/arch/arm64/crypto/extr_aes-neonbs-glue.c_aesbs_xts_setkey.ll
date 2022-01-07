; ModuleID = '/home/carl/AnghaBench/linux/arch/arm64/crypto/extr_aes-neonbs-glue.c_aesbs_xts_setkey.c'
source_filename = "/home/carl/AnghaBench/linux/arch/arm64/crypto/extr_aes-neonbs-glue.c_aesbs_xts_setkey.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.crypto_skcipher = type { i32 }
%struct.aesbs_xts_ctx = type { i32, %struct.crypto_aes_ctx }
%struct.crypto_aes_ctx = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.crypto_skcipher*, i32*, i32)* @aesbs_xts_setkey to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @aesbs_xts_setkey(%struct.crypto_skcipher* %0, i32* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.crypto_skcipher*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.aesbs_xts_ctx*, align 8
  %9 = alloca %struct.crypto_aes_ctx, align 4
  %10 = alloca i32, align 4
  store %struct.crypto_skcipher* %0, %struct.crypto_skcipher** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32 %2, i32* %7, align 4
  %11 = load %struct.crypto_skcipher*, %struct.crypto_skcipher** %5, align 8
  %12 = call %struct.aesbs_xts_ctx* @crypto_skcipher_ctx(%struct.crypto_skcipher* %11)
  store %struct.aesbs_xts_ctx* %12, %struct.aesbs_xts_ctx** %8, align 8
  %13 = load %struct.crypto_skcipher*, %struct.crypto_skcipher** %5, align 8
  %14 = load i32*, i32** %6, align 8
  %15 = load i32, i32* %7, align 4
  %16 = call i32 @xts_verify_key(%struct.crypto_skcipher* %13, i32* %14, i32 %15)
  store i32 %16, i32* %10, align 4
  %17 = load i32, i32* %10, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %3
  %20 = load i32, i32* %10, align 4
  store i32 %20, i32* %4, align 4
  br label %55

21:                                               ; preds = %3
  %22 = load i32, i32* %7, align 4
  %23 = udiv i32 %22, 2
  store i32 %23, i32* %7, align 4
  %24 = load %struct.aesbs_xts_ctx*, %struct.aesbs_xts_ctx** %8, align 8
  %25 = getelementptr inbounds %struct.aesbs_xts_ctx, %struct.aesbs_xts_ctx* %24, i32 0, i32 1
  %26 = load i32*, i32** %6, align 8
  %27 = load i32, i32* %7, align 4
  %28 = call i32 @aes_expandkey(%struct.crypto_aes_ctx* %25, i32* %26, i32 %27)
  store i32 %28, i32* %10, align 4
  %29 = load i32, i32* %10, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %33

31:                                               ; preds = %21
  %32 = load i32, i32* %10, align 4
  store i32 %32, i32* %4, align 4
  br label %55

33:                                               ; preds = %21
  %34 = load i32*, i32** %6, align 8
  %35 = load i32, i32* %7, align 4
  %36 = zext i32 %35 to i64
  %37 = getelementptr inbounds i32, i32* %34, i64 %36
  %38 = load i32, i32* %7, align 4
  %39 = call i32 @aes_expandkey(%struct.crypto_aes_ctx* %9, i32* %37, i32 %38)
  store i32 %39, i32* %10, align 4
  %40 = load i32, i32* %10, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %44

42:                                               ; preds = %33
  %43 = load i32, i32* %10, align 4
  store i32 %43, i32* %4, align 4
  br label %55

44:                                               ; preds = %33
  %45 = load %struct.aesbs_xts_ctx*, %struct.aesbs_xts_ctx** %8, align 8
  %46 = getelementptr inbounds %struct.aesbs_xts_ctx, %struct.aesbs_xts_ctx* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = getelementptr inbounds %struct.crypto_aes_ctx, %struct.crypto_aes_ctx* %9, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = call i32 @memcpy(i32 %47, i32 %49, i32 4)
  %51 = load %struct.crypto_skcipher*, %struct.crypto_skcipher** %5, align 8
  %52 = load i32*, i32** %6, align 8
  %53 = load i32, i32* %7, align 4
  %54 = call i32 @aesbs_setkey(%struct.crypto_skcipher* %51, i32* %52, i32 %53)
  store i32 %54, i32* %4, align 4
  br label %55

55:                                               ; preds = %44, %42, %31, %19
  %56 = load i32, i32* %4, align 4
  ret i32 %56
}

declare dso_local %struct.aesbs_xts_ctx* @crypto_skcipher_ctx(%struct.crypto_skcipher*) #1

declare dso_local i32 @xts_verify_key(%struct.crypto_skcipher*, i32*, i32) #1

declare dso_local i32 @aes_expandkey(%struct.crypto_aes_ctx*, i32*, i32) #1

declare dso_local i32 @memcpy(i32, i32, i32) #1

declare dso_local i32 @aesbs_setkey(%struct.crypto_skcipher*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
