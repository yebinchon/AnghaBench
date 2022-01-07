; ModuleID = '/home/carl/AnghaBench/linux/crypto/extr_authenc.c_authenc_geniv_ahash_done.c'
source_filename = "/home/carl/AnghaBench/linux/crypto/extr_authenc.c_authenc_geniv_ahash_done.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.crypto_async_request = type { %struct.aead_request* }
%struct.aead_request = type { i64, i64, i32 }
%struct.crypto_aead = type { i32 }
%struct.aead_instance = type { i32 }
%struct.authenc_instance_ctx = type { i64 }
%struct.authenc_request_ctx = type { i64 }
%struct.ahash_request = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.crypto_async_request*, i32)* @authenc_geniv_ahash_done to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @authenc_geniv_ahash_done(%struct.crypto_async_request* %0, i32 %1) #0 {
  %3 = alloca %struct.crypto_async_request*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.aead_request*, align 8
  %6 = alloca %struct.crypto_aead*, align 8
  %7 = alloca %struct.aead_instance*, align 8
  %8 = alloca %struct.authenc_instance_ctx*, align 8
  %9 = alloca %struct.authenc_request_ctx*, align 8
  %10 = alloca %struct.ahash_request*, align 8
  store %struct.crypto_async_request* %0, %struct.crypto_async_request** %3, align 8
  store i32 %1, i32* %4, align 4
  %11 = load %struct.crypto_async_request*, %struct.crypto_async_request** %3, align 8
  %12 = getelementptr inbounds %struct.crypto_async_request, %struct.crypto_async_request* %11, i32 0, i32 0
  %13 = load %struct.aead_request*, %struct.aead_request** %12, align 8
  store %struct.aead_request* %13, %struct.aead_request** %5, align 8
  %14 = load %struct.aead_request*, %struct.aead_request** %5, align 8
  %15 = call %struct.crypto_aead* @crypto_aead_reqtfm(%struct.aead_request* %14)
  store %struct.crypto_aead* %15, %struct.crypto_aead** %6, align 8
  %16 = load %struct.crypto_aead*, %struct.crypto_aead** %6, align 8
  %17 = call %struct.aead_instance* @aead_alg_instance(%struct.crypto_aead* %16)
  store %struct.aead_instance* %17, %struct.aead_instance** %7, align 8
  %18 = load %struct.aead_instance*, %struct.aead_instance** %7, align 8
  %19 = call %struct.authenc_instance_ctx* @aead_instance_ctx(%struct.aead_instance* %18)
  store %struct.authenc_instance_ctx* %19, %struct.authenc_instance_ctx** %8, align 8
  %20 = load %struct.aead_request*, %struct.aead_request** %5, align 8
  %21 = call %struct.authenc_request_ctx* @aead_request_ctx(%struct.aead_request* %20)
  store %struct.authenc_request_ctx* %21, %struct.authenc_request_ctx** %9, align 8
  %22 = load %struct.authenc_request_ctx*, %struct.authenc_request_ctx** %9, align 8
  %23 = getelementptr inbounds %struct.authenc_request_ctx, %struct.authenc_request_ctx* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load %struct.authenc_instance_ctx*, %struct.authenc_instance_ctx** %8, align 8
  %26 = getelementptr inbounds %struct.authenc_instance_ctx, %struct.authenc_instance_ctx* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = add nsw i64 %24, %27
  %29 = inttoptr i64 %28 to i8*
  %30 = bitcast i8* %29 to %struct.ahash_request*
  store %struct.ahash_request* %30, %struct.ahash_request** %10, align 8
  %31 = load i32, i32* %4, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %34

33:                                               ; preds = %2
  br label %51

34:                                               ; preds = %2
  %35 = load %struct.ahash_request*, %struct.ahash_request** %10, align 8
  %36 = getelementptr inbounds %struct.ahash_request, %struct.ahash_request* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = load %struct.aead_request*, %struct.aead_request** %5, align 8
  %39 = getelementptr inbounds %struct.aead_request, %struct.aead_request* %38, i32 0, i32 2
  %40 = load i32, i32* %39, align 8
  %41 = load %struct.aead_request*, %struct.aead_request** %5, align 8
  %42 = getelementptr inbounds %struct.aead_request, %struct.aead_request* %41, i32 0, i32 1
  %43 = load i64, i64* %42, align 8
  %44 = load %struct.aead_request*, %struct.aead_request** %5, align 8
  %45 = getelementptr inbounds %struct.aead_request, %struct.aead_request* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = add nsw i64 %43, %46
  %48 = load %struct.crypto_aead*, %struct.crypto_aead** %6, align 8
  %49 = call i32 @crypto_aead_authsize(%struct.crypto_aead* %48)
  %50 = call i32 @scatterwalk_map_and_copy(i32 %37, i32 %40, i64 %47, i32 %49, i32 1)
  br label %51

51:                                               ; preds = %34, %33
  %52 = load %struct.aead_request*, %struct.aead_request** %5, align 8
  %53 = load i32, i32* %4, align 4
  %54 = call i32 @aead_request_complete(%struct.aead_request* %52, i32 %53)
  ret void
}

declare dso_local %struct.crypto_aead* @crypto_aead_reqtfm(%struct.aead_request*) #1

declare dso_local %struct.aead_instance* @aead_alg_instance(%struct.crypto_aead*) #1

declare dso_local %struct.authenc_instance_ctx* @aead_instance_ctx(%struct.aead_instance*) #1

declare dso_local %struct.authenc_request_ctx* @aead_request_ctx(%struct.aead_request*) #1

declare dso_local i32 @scatterwalk_map_and_copy(i32, i32, i64, i32, i32) #1

declare dso_local i32 @crypto_aead_authsize(%struct.crypto_aead*) #1

declare dso_local i32 @aead_request_complete(%struct.aead_request*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
