; ModuleID = '/home/carl/AnghaBench/linux/arch/arm64/crypto/extr_ghash-ce-glue.c_gcm_calculate_auth_mac.c'
source_filename = "/home/carl/AnghaBench/linux/arch/arm64/crypto/extr_ghash-ce-glue.c_gcm_calculate_auth_mac.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.aead_request = type { i32, i64 }
%struct.crypto_aead = type { i32 }
%struct.gcm_aes_ctx = type { i32 }
%struct.scatter_walk = type { i32 }

@GHASH_BLOCK_SIZE = common dso_local global i32 0, align 4
@pmull_ghash_update_p64 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.aead_request*, i32*)* @gcm_calculate_auth_mac to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @gcm_calculate_auth_mac(%struct.aead_request* %0, i32* %1) #0 {
  %3 = alloca %struct.aead_request*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %struct.crypto_aead*, align 8
  %6 = alloca %struct.gcm_aes_ctx*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.scatter_walk, align 4
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca i32*, align 8
  store %struct.aead_request* %0, %struct.aead_request** %3, align 8
  store i32* %1, i32** %4, align 8
  %14 = load %struct.aead_request*, %struct.aead_request** %3, align 8
  %15 = call %struct.crypto_aead* @crypto_aead_reqtfm(%struct.aead_request* %14)
  store %struct.crypto_aead* %15, %struct.crypto_aead** %5, align 8
  %16 = load %struct.crypto_aead*, %struct.crypto_aead** %5, align 8
  %17 = call %struct.gcm_aes_ctx* @crypto_aead_ctx(%struct.crypto_aead* %16)
  store %struct.gcm_aes_ctx* %17, %struct.gcm_aes_ctx** %6, align 8
  %18 = load i32, i32* @GHASH_BLOCK_SIZE, align 4
  %19 = zext i32 %18 to i64
  %20 = call i8* @llvm.stacksave()
  store i8* %20, i8** %7, align 8
  %21 = alloca i32, i64 %19, align 16
  store i64 %19, i64* %8, align 8
  %22 = load %struct.aead_request*, %struct.aead_request** %3, align 8
  %23 = getelementptr inbounds %struct.aead_request, %struct.aead_request* %22, i32 0, i32 1
  %24 = load i64, i64* %23, align 8
  store i64 %24, i64* %10, align 8
  store i32 0, i32* %11, align 4
  %25 = load %struct.aead_request*, %struct.aead_request** %3, align 8
  %26 = getelementptr inbounds %struct.aead_request, %struct.aead_request* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = call i32 @scatterwalk_start(%struct.scatter_walk* %9, i32 %27)
  br label %29

29:                                               ; preds = %57, %2
  %30 = load i64, i64* %10, align 8
  %31 = call i64 @scatterwalk_clamp(%struct.scatter_walk* %9, i64 %30)
  store i64 %31, i64* %12, align 8
  %32 = load i64, i64* %12, align 8
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %41, label %34

34:                                               ; preds = %29
  %35 = getelementptr inbounds %struct.scatter_walk, %struct.scatter_walk* %9, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @sg_next(i32 %36)
  %38 = call i32 @scatterwalk_start(%struct.scatter_walk* %9, i32 %37)
  %39 = load i64, i64* %10, align 8
  %40 = call i64 @scatterwalk_clamp(%struct.scatter_walk* %9, i64 %39)
  store i64 %40, i64* %12, align 8
  br label %41

41:                                               ; preds = %34, %29
  %42 = call i32* @scatterwalk_map(%struct.scatter_walk* %9)
  store i32* %42, i32** %13, align 8
  %43 = load i32*, i32** %4, align 8
  %44 = load i32*, i32** %13, align 8
  %45 = load i64, i64* %12, align 8
  %46 = load %struct.gcm_aes_ctx*, %struct.gcm_aes_ctx** %6, align 8
  %47 = call i32 @gcm_update_mac(i32* %43, i32* %44, i64 %45, i32* %21, i32* %11, %struct.gcm_aes_ctx* %46)
  %48 = load i64, i64* %12, align 8
  %49 = load i64, i64* %10, align 8
  %50 = sub nsw i64 %49, %48
  store i64 %50, i64* %10, align 8
  %51 = load i32*, i32** %13, align 8
  %52 = call i32 @scatterwalk_unmap(i32* %51)
  %53 = load i64, i64* %12, align 8
  %54 = call i32 @scatterwalk_advance(%struct.scatter_walk* %9, i64 %53)
  %55 = load i64, i64* %10, align 8
  %56 = call i32 @scatterwalk_done(%struct.scatter_walk* %9, i32 0, i64 %55)
  br label %57

57:                                               ; preds = %41
  %58 = load i64, i64* %10, align 8
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %29, label %60

60:                                               ; preds = %57
  %61 = load i32, i32* %11, align 4
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %76

63:                                               ; preds = %60
  %64 = load i32, i32* %11, align 4
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds i32, i32* %21, i64 %65
  %67 = load i32, i32* @GHASH_BLOCK_SIZE, align 4
  %68 = load i32, i32* %11, align 4
  %69 = sub nsw i32 %67, %68
  %70 = call i32 @memset(i32* %66, i32 0, i32 %69)
  %71 = load i32*, i32** %4, align 8
  %72 = load %struct.gcm_aes_ctx*, %struct.gcm_aes_ctx** %6, align 8
  %73 = getelementptr inbounds %struct.gcm_aes_ctx, %struct.gcm_aes_ctx* %72, i32 0, i32 0
  %74 = load i32, i32* @pmull_ghash_update_p64, align 4
  %75 = call i32 @ghash_do_update(i32 1, i32* %71, i32* %21, i32* %73, i32* null, i32 %74)
  br label %76

76:                                               ; preds = %63, %60
  %77 = load i8*, i8** %7, align 8
  call void @llvm.stackrestore(i8* %77)
  ret void
}

declare dso_local %struct.crypto_aead* @crypto_aead_reqtfm(%struct.aead_request*) #1

declare dso_local %struct.gcm_aes_ctx* @crypto_aead_ctx(%struct.crypto_aead*) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @scatterwalk_start(%struct.scatter_walk*, i32) #1

declare dso_local i64 @scatterwalk_clamp(%struct.scatter_walk*, i64) #1

declare dso_local i32 @sg_next(i32) #1

declare dso_local i32* @scatterwalk_map(%struct.scatter_walk*) #1

declare dso_local i32 @gcm_update_mac(i32*, i32*, i64, i32*, i32*, %struct.gcm_aes_ctx*) #1

declare dso_local i32 @scatterwalk_unmap(i32*) #1

declare dso_local i32 @scatterwalk_advance(%struct.scatter_walk*, i64) #1

declare dso_local i32 @scatterwalk_done(%struct.scatter_walk*, i32, i64) #1

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i32 @ghash_do_update(i32, i32*, i32*, i32*, i32*, i32) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
