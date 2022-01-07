; ModuleID = '/home/carl/AnghaBench/linux/crypto/extr_ccm.c_crypto_ccm_init_tfm.c'
source_filename = "/home/carl/AnghaBench/linux/crypto/extr_ccm.c_crypto_ccm_init_tfm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.crypto_aead = type { i32 }
%struct.aead_instance = type { i32 }
%struct.ccm_instance_ctx = type { i32, i32 }
%struct.crypto_ccm_ctx = type { %struct.crypto_skcipher*, %struct.crypto_skcipher* }
%struct.crypto_skcipher = type { i32 }
%struct.crypto_ahash = type opaque

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.crypto_aead*)* @crypto_ccm_init_tfm to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @crypto_ccm_init_tfm(%struct.crypto_aead* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.crypto_aead*, align 8
  %4 = alloca %struct.aead_instance*, align 8
  %5 = alloca %struct.ccm_instance_ctx*, align 8
  %6 = alloca %struct.crypto_ccm_ctx*, align 8
  %7 = alloca %struct.crypto_ahash*, align 8
  %8 = alloca %struct.crypto_skcipher*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  store %struct.crypto_aead* %0, %struct.crypto_aead** %3, align 8
  %11 = load %struct.crypto_aead*, %struct.crypto_aead** %3, align 8
  %12 = call %struct.aead_instance* @aead_alg_instance(%struct.crypto_aead* %11)
  store %struct.aead_instance* %12, %struct.aead_instance** %4, align 8
  %13 = load %struct.aead_instance*, %struct.aead_instance** %4, align 8
  %14 = call %struct.ccm_instance_ctx* @aead_instance_ctx(%struct.aead_instance* %13)
  store %struct.ccm_instance_ctx* %14, %struct.ccm_instance_ctx** %5, align 8
  %15 = load %struct.crypto_aead*, %struct.crypto_aead** %3, align 8
  %16 = call %struct.crypto_ccm_ctx* @crypto_aead_ctx(%struct.crypto_aead* %15)
  store %struct.crypto_ccm_ctx* %16, %struct.crypto_ccm_ctx** %6, align 8
  %17 = load %struct.ccm_instance_ctx*, %struct.ccm_instance_ctx** %5, align 8
  %18 = getelementptr inbounds %struct.ccm_instance_ctx, %struct.ccm_instance_ctx* %17, i32 0, i32 1
  %19 = call %struct.crypto_skcipher* @crypto_spawn_ahash(i32* %18)
  %20 = bitcast %struct.crypto_skcipher* %19 to %struct.crypto_ahash*
  store %struct.crypto_ahash* %20, %struct.crypto_ahash** %7, align 8
  %21 = load %struct.crypto_ahash*, %struct.crypto_ahash** %7, align 8
  %22 = bitcast %struct.crypto_ahash* %21 to %struct.crypto_skcipher*
  %23 = call i64 @IS_ERR(%struct.crypto_skcipher* %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %29

25:                                               ; preds = %1
  %26 = load %struct.crypto_ahash*, %struct.crypto_ahash** %7, align 8
  %27 = bitcast %struct.crypto_ahash* %26 to %struct.crypto_skcipher*
  %28 = call i32 @PTR_ERR(%struct.crypto_skcipher* %27)
  store i32 %28, i32* %2, align 4
  br label %71

29:                                               ; preds = %1
  %30 = load %struct.ccm_instance_ctx*, %struct.ccm_instance_ctx** %5, align 8
  %31 = getelementptr inbounds %struct.ccm_instance_ctx, %struct.ccm_instance_ctx* %30, i32 0, i32 0
  %32 = call %struct.crypto_skcipher* @crypto_spawn_skcipher(i32* %31)
  store %struct.crypto_skcipher* %32, %struct.crypto_skcipher** %8, align 8
  %33 = load %struct.crypto_skcipher*, %struct.crypto_skcipher** %8, align 8
  %34 = call i32 @PTR_ERR(%struct.crypto_skcipher* %33)
  store i32 %34, i32* %10, align 4
  %35 = load %struct.crypto_skcipher*, %struct.crypto_skcipher** %8, align 8
  %36 = call i64 @IS_ERR(%struct.crypto_skcipher* %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %39

38:                                               ; preds = %29
  br label %66

39:                                               ; preds = %29
  %40 = load %struct.crypto_ahash*, %struct.crypto_ahash** %7, align 8
  %41 = bitcast %struct.crypto_ahash* %40 to %struct.crypto_skcipher*
  %42 = load %struct.crypto_ccm_ctx*, %struct.crypto_ccm_ctx** %6, align 8
  %43 = getelementptr inbounds %struct.crypto_ccm_ctx, %struct.crypto_ccm_ctx* %42, i32 0, i32 1
  store %struct.crypto_skcipher* %41, %struct.crypto_skcipher** %43, align 8
  %44 = load %struct.crypto_skcipher*, %struct.crypto_skcipher** %8, align 8
  %45 = load %struct.crypto_ccm_ctx*, %struct.crypto_ccm_ctx** %6, align 8
  %46 = getelementptr inbounds %struct.crypto_ccm_ctx, %struct.crypto_ccm_ctx* %45, i32 0, i32 0
  store %struct.crypto_skcipher* %44, %struct.crypto_skcipher** %46, align 8
  %47 = load %struct.crypto_aead*, %struct.crypto_aead** %3, align 8
  %48 = call i64 @crypto_aead_alignmask(%struct.crypto_aead* %47)
  store i64 %48, i64* %9, align 8
  %49 = call i32 (...) @crypto_tfm_ctx_alignment()
  %50 = sub nsw i32 %49, 1
  %51 = xor i32 %50, -1
  %52 = sext i32 %51 to i64
  %53 = load i64, i64* %9, align 8
  %54 = and i64 %53, %52
  store i64 %54, i64* %9, align 8
  %55 = load %struct.crypto_aead*, %struct.crypto_aead** %3, align 8
  %56 = load i64, i64* %9, align 8
  %57 = add i64 %56, 4
  %58 = load %struct.crypto_ahash*, %struct.crypto_ahash** %7, align 8
  %59 = bitcast %struct.crypto_ahash* %58 to %struct.crypto_skcipher*
  %60 = call i32 @crypto_ahash_reqsize(%struct.crypto_skcipher* %59)
  %61 = load %struct.crypto_skcipher*, %struct.crypto_skcipher** %8, align 8
  %62 = call i32 @crypto_skcipher_reqsize(%struct.crypto_skcipher* %61)
  %63 = call i64 @max(i32 %60, i32 %62)
  %64 = add i64 %57, %63
  %65 = call i32 @crypto_aead_set_reqsize(%struct.crypto_aead* %55, i64 %64)
  store i32 0, i32* %2, align 4
  br label %71

66:                                               ; preds = %38
  %67 = load %struct.crypto_ahash*, %struct.crypto_ahash** %7, align 8
  %68 = bitcast %struct.crypto_ahash* %67 to %struct.crypto_skcipher*
  %69 = call i32 @crypto_free_ahash(%struct.crypto_skcipher* %68)
  %70 = load i32, i32* %10, align 4
  store i32 %70, i32* %2, align 4
  br label %71

71:                                               ; preds = %66, %39, %25
  %72 = load i32, i32* %2, align 4
  ret i32 %72
}

declare dso_local %struct.aead_instance* @aead_alg_instance(%struct.crypto_aead*) #1

declare dso_local %struct.ccm_instance_ctx* @aead_instance_ctx(%struct.aead_instance*) #1

declare dso_local %struct.crypto_ccm_ctx* @crypto_aead_ctx(%struct.crypto_aead*) #1

declare dso_local %struct.crypto_skcipher* @crypto_spawn_ahash(i32*) #1

declare dso_local i64 @IS_ERR(%struct.crypto_skcipher*) #1

declare dso_local i32 @PTR_ERR(%struct.crypto_skcipher*) #1

declare dso_local %struct.crypto_skcipher* @crypto_spawn_skcipher(i32*) #1

declare dso_local i64 @crypto_aead_alignmask(%struct.crypto_aead*) #1

declare dso_local i32 @crypto_tfm_ctx_alignment(...) #1

declare dso_local i32 @crypto_aead_set_reqsize(%struct.crypto_aead*, i64) #1

declare dso_local i64 @max(i32, i32) #1

declare dso_local i32 @crypto_ahash_reqsize(%struct.crypto_skcipher*) #1

declare dso_local i32 @crypto_skcipher_reqsize(%struct.crypto_skcipher*) #1

declare dso_local i32 @crypto_free_ahash(%struct.crypto_skcipher*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
