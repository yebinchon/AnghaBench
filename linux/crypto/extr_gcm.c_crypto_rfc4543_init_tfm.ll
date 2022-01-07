; ModuleID = '/home/carl/AnghaBench/linux/crypto/extr_gcm.c_crypto_rfc4543_init_tfm.c'
source_filename = "/home/carl/AnghaBench/linux/crypto/extr_gcm.c_crypto_rfc4543_init_tfm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.crypto_aead = type opaque
%struct.aead_instance = type { i32 }
%struct.crypto_rfc4543_instance_ctx = type { %struct.crypto_aead_spawn }
%struct.crypto_aead_spawn = type { i32 }
%struct.crypto_rfc4543_ctx = type { %struct.crypto_sync_skcipher*, %struct.crypto_sync_skcipher* }
%struct.crypto_sync_skcipher = type { i32 }

@GCM_AES_IV_SIZE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.crypto_aead*)* @crypto_rfc4543_init_tfm to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @crypto_rfc4543_init_tfm(%struct.crypto_aead* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.crypto_aead*, align 8
  %4 = alloca %struct.aead_instance*, align 8
  %5 = alloca %struct.crypto_rfc4543_instance_ctx*, align 8
  %6 = alloca %struct.crypto_aead_spawn*, align 8
  %7 = alloca %struct.crypto_rfc4543_ctx*, align 8
  %8 = alloca %struct.crypto_aead*, align 8
  %9 = alloca %struct.crypto_sync_skcipher*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  store %struct.crypto_aead* %0, %struct.crypto_aead** %3, align 8
  %12 = load %struct.crypto_aead*, %struct.crypto_aead** %3, align 8
  %13 = bitcast %struct.crypto_aead* %12 to %struct.crypto_sync_skcipher*
  %14 = call %struct.aead_instance* @aead_alg_instance(%struct.crypto_sync_skcipher* %13)
  store %struct.aead_instance* %14, %struct.aead_instance** %4, align 8
  %15 = load %struct.aead_instance*, %struct.aead_instance** %4, align 8
  %16 = call %struct.crypto_rfc4543_instance_ctx* @aead_instance_ctx(%struct.aead_instance* %15)
  store %struct.crypto_rfc4543_instance_ctx* %16, %struct.crypto_rfc4543_instance_ctx** %5, align 8
  %17 = load %struct.crypto_rfc4543_instance_ctx*, %struct.crypto_rfc4543_instance_ctx** %5, align 8
  %18 = getelementptr inbounds %struct.crypto_rfc4543_instance_ctx, %struct.crypto_rfc4543_instance_ctx* %17, i32 0, i32 0
  store %struct.crypto_aead_spawn* %18, %struct.crypto_aead_spawn** %6, align 8
  %19 = load %struct.crypto_aead*, %struct.crypto_aead** %3, align 8
  %20 = bitcast %struct.crypto_aead* %19 to %struct.crypto_sync_skcipher*
  %21 = call %struct.crypto_rfc4543_ctx* @crypto_aead_ctx(%struct.crypto_sync_skcipher* %20)
  store %struct.crypto_rfc4543_ctx* %21, %struct.crypto_rfc4543_ctx** %7, align 8
  store i32 0, i32* %11, align 4
  %22 = load %struct.crypto_aead_spawn*, %struct.crypto_aead_spawn** %6, align 8
  %23 = call %struct.crypto_sync_skcipher* @crypto_spawn_aead(%struct.crypto_aead_spawn* %22)
  %24 = bitcast %struct.crypto_sync_skcipher* %23 to %struct.crypto_aead*
  store %struct.crypto_aead* %24, %struct.crypto_aead** %8, align 8
  %25 = load %struct.crypto_aead*, %struct.crypto_aead** %8, align 8
  %26 = bitcast %struct.crypto_aead* %25 to %struct.crypto_sync_skcipher*
  %27 = call i64 @IS_ERR(%struct.crypto_sync_skcipher* %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %33

29:                                               ; preds = %1
  %30 = load %struct.crypto_aead*, %struct.crypto_aead** %8, align 8
  %31 = bitcast %struct.crypto_aead* %30 to %struct.crypto_sync_skcipher*
  %32 = call i32 @PTR_ERR(%struct.crypto_sync_skcipher* %31)
  store i32 %32, i32* %2, align 4
  br label %76

33:                                               ; preds = %1
  %34 = call %struct.crypto_sync_skcipher* (...) @crypto_get_default_null_skcipher()
  store %struct.crypto_sync_skcipher* %34, %struct.crypto_sync_skcipher** %9, align 8
  %35 = load %struct.crypto_sync_skcipher*, %struct.crypto_sync_skcipher** %9, align 8
  %36 = call i32 @PTR_ERR(%struct.crypto_sync_skcipher* %35)
  store i32 %36, i32* %11, align 4
  %37 = load %struct.crypto_sync_skcipher*, %struct.crypto_sync_skcipher** %9, align 8
  %38 = call i64 @IS_ERR(%struct.crypto_sync_skcipher* %37)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %41

40:                                               ; preds = %33
  br label %71

41:                                               ; preds = %33
  %42 = load %struct.crypto_aead*, %struct.crypto_aead** %8, align 8
  %43 = bitcast %struct.crypto_aead* %42 to %struct.crypto_sync_skcipher*
  %44 = load %struct.crypto_rfc4543_ctx*, %struct.crypto_rfc4543_ctx** %7, align 8
  %45 = getelementptr inbounds %struct.crypto_rfc4543_ctx, %struct.crypto_rfc4543_ctx* %44, i32 0, i32 1
  store %struct.crypto_sync_skcipher* %43, %struct.crypto_sync_skcipher** %45, align 8
  %46 = load %struct.crypto_sync_skcipher*, %struct.crypto_sync_skcipher** %9, align 8
  %47 = load %struct.crypto_rfc4543_ctx*, %struct.crypto_rfc4543_ctx** %7, align 8
  %48 = getelementptr inbounds %struct.crypto_rfc4543_ctx, %struct.crypto_rfc4543_ctx* %47, i32 0, i32 0
  store %struct.crypto_sync_skcipher* %46, %struct.crypto_sync_skcipher** %48, align 8
  %49 = load %struct.crypto_aead*, %struct.crypto_aead** %8, align 8
  %50 = bitcast %struct.crypto_aead* %49 to %struct.crypto_sync_skcipher*
  %51 = call i64 @crypto_aead_alignmask(%struct.crypto_sync_skcipher* %50)
  store i64 %51, i64* %10, align 8
  %52 = call i32 (...) @crypto_tfm_ctx_alignment()
  %53 = sub nsw i32 %52, 1
  %54 = xor i32 %53, -1
  %55 = sext i32 %54 to i64
  %56 = load i64, i64* %10, align 8
  %57 = and i64 %56, %55
  store i64 %57, i64* %10, align 8
  %58 = load %struct.crypto_aead*, %struct.crypto_aead** %3, align 8
  %59 = bitcast %struct.crypto_aead* %58 to %struct.crypto_sync_skcipher*
  %60 = load %struct.crypto_aead*, %struct.crypto_aead** %8, align 8
  %61 = bitcast %struct.crypto_aead* %60 to %struct.crypto_sync_skcipher*
  %62 = call i32 @crypto_aead_reqsize(%struct.crypto_sync_skcipher* %61)
  %63 = call i32 (...) @crypto_tfm_ctx_alignment()
  %64 = call i64 @ALIGN(i32 %62, i32 %63)
  %65 = add i64 4, %64
  %66 = load i64, i64* %10, align 8
  %67 = add i64 %65, %66
  %68 = load i64, i64* @GCM_AES_IV_SIZE, align 8
  %69 = add i64 %67, %68
  %70 = call i32 @crypto_aead_set_reqsize(%struct.crypto_sync_skcipher* %59, i64 %69)
  store i32 0, i32* %2, align 4
  br label %76

71:                                               ; preds = %40
  %72 = load %struct.crypto_aead*, %struct.crypto_aead** %8, align 8
  %73 = bitcast %struct.crypto_aead* %72 to %struct.crypto_sync_skcipher*
  %74 = call i32 @crypto_free_aead(%struct.crypto_sync_skcipher* %73)
  %75 = load i32, i32* %11, align 4
  store i32 %75, i32* %2, align 4
  br label %76

76:                                               ; preds = %71, %41, %29
  %77 = load i32, i32* %2, align 4
  ret i32 %77
}

declare dso_local %struct.aead_instance* @aead_alg_instance(%struct.crypto_sync_skcipher*) #1

declare dso_local %struct.crypto_rfc4543_instance_ctx* @aead_instance_ctx(%struct.aead_instance*) #1

declare dso_local %struct.crypto_rfc4543_ctx* @crypto_aead_ctx(%struct.crypto_sync_skcipher*) #1

declare dso_local %struct.crypto_sync_skcipher* @crypto_spawn_aead(%struct.crypto_aead_spawn*) #1

declare dso_local i64 @IS_ERR(%struct.crypto_sync_skcipher*) #1

declare dso_local i32 @PTR_ERR(%struct.crypto_sync_skcipher*) #1

declare dso_local %struct.crypto_sync_skcipher* @crypto_get_default_null_skcipher(...) #1

declare dso_local i64 @crypto_aead_alignmask(%struct.crypto_sync_skcipher*) #1

declare dso_local i32 @crypto_tfm_ctx_alignment(...) #1

declare dso_local i32 @crypto_aead_set_reqsize(%struct.crypto_sync_skcipher*, i64) #1

declare dso_local i64 @ALIGN(i32, i32) #1

declare dso_local i32 @crypto_aead_reqsize(%struct.crypto_sync_skcipher*) #1

declare dso_local i32 @crypto_free_aead(%struct.crypto_sync_skcipher*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
