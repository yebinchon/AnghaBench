; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/amcc/extr_crypto4xx_alg.c_crypto4xx_compute_gcm_hash_key_sw.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/amcc/extr_crypto4xx_alg.c_crypto4xx_compute_gcm_hash_key_sw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.crypto_aes_ctx = type { i32 }

@.str = private unnamed_addr constant [28 x i8] c"aes_expandkey() failed: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32*, i32)* @crypto4xx_compute_gcm_hash_key_sw to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @crypto4xx_compute_gcm_hash_key_sw(i32* %0, i32* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.crypto_aes_ctx, align 4
  %9 = alloca [16 x i32], align 16
  %10 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32 %2, i32* %7, align 4
  %11 = bitcast [16 x i32]* %9 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %11, i8 0, i64 64, i1 false)
  %12 = load i32*, i32** %6, align 8
  %13 = load i32, i32* %7, align 4
  %14 = call i32 @aes_expandkey(%struct.crypto_aes_ctx* %8, i32* %12, i32 %13)
  store i32 %14, i32* %10, align 4
  %15 = load i32, i32* %10, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %21

17:                                               ; preds = %3
  %18 = load i32, i32* %10, align 4
  %19 = call i32 @pr_err(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i32 %18)
  %20 = load i32, i32* %10, align 4
  store i32 %20, i32* %4, align 4
  br label %29

21:                                               ; preds = %3
  %22 = getelementptr inbounds [16 x i32], [16 x i32]* %9, i64 0, i64 0
  %23 = getelementptr inbounds [16 x i32], [16 x i32]* %9, i64 0, i64 0
  %24 = call i32 @aes_encrypt(%struct.crypto_aes_ctx* %8, i32* %22, i32* %23)
  %25 = load i32*, i32** %5, align 8
  %26 = getelementptr inbounds [16 x i32], [16 x i32]* %9, i64 0, i64 0
  %27 = call i32 @crypto4xx_memcpy_to_le32(i32* %25, i32* %26, i32 16)
  %28 = call i32 @memzero_explicit(%struct.crypto_aes_ctx* %8, i32 4)
  store i32 0, i32* %4, align 4
  br label %29

29:                                               ; preds = %21, %17
  %30 = load i32, i32* %4, align 4
  ret i32 %30
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @aes_expandkey(%struct.crypto_aes_ctx*, i32*, i32) #2

declare dso_local i32 @pr_err(i8*, i32) #2

declare dso_local i32 @aes_encrypt(%struct.crypto_aes_ctx*, i32*, i32*) #2

declare dso_local i32 @crypto4xx_memcpy_to_le32(i32*, i32*, i32) #2

declare dso_local i32 @memzero_explicit(%struct.crypto_aes_ctx*, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
