; ModuleID = '/home/carl/AnghaBench/linux/arch/arm64/crypto/extr_ghash-ce-glue.c_gcm_final.c'
source_filename = "/home/carl/AnghaBench/linux/arch/arm64/crypto/extr_ghash-ce-glue.c_gcm_final.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.aead_request = type { i32 }
%struct.gcm_aes_ctx = type { i32 }
%struct.TYPE_2__ = type { i8*, i8* }

@AES_BLOCK_SIZE = common dso_local global i32 0, align 4
@pmull_ghash_update_p64 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.aead_request*, %struct.gcm_aes_ctx*, i32*, i32*, i32)* @gcm_final to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @gcm_final(%struct.aead_request* %0, %struct.gcm_aes_ctx* %1, i32* %2, i32* %3, i32 %4) #0 {
  %6 = alloca %struct.aead_request*, align 8
  %7 = alloca %struct.gcm_aes_ctx*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
  %13 = alloca %struct.TYPE_2__, align 8
  store %struct.aead_request* %0, %struct.aead_request** %6, align 8
  store %struct.gcm_aes_ctx* %1, %struct.gcm_aes_ctx** %7, align 8
  store i32* %2, i32** %8, align 8
  store i32* %3, i32** %9, align 8
  store i32 %4, i32* %10, align 4
  %14 = load i32, i32* @AES_BLOCK_SIZE, align 4
  %15 = zext i32 %14 to i64
  %16 = call i8* @llvm.stacksave()
  store i8* %16, i8** %11, align 8
  %17 = alloca i32, i64 %15, align 16
  store i64 %15, i64* %12, align 8
  %18 = load %struct.aead_request*, %struct.aead_request** %6, align 8
  %19 = getelementptr inbounds %struct.aead_request, %struct.aead_request* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = mul nsw i32 %20, 8
  %22 = call i8* @cpu_to_be64(i32 %21)
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 1
  store i8* %22, i8** %23, align 8
  %24 = load i32, i32* %10, align 4
  %25 = mul nsw i32 %24, 8
  %26 = call i8* @cpu_to_be64(i32 %25)
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  store i8* %26, i8** %27, align 8
  %28 = load i32*, i32** %8, align 8
  %29 = bitcast %struct.TYPE_2__* %13 to i8*
  %30 = load %struct.gcm_aes_ctx*, %struct.gcm_aes_ctx** %7, align 8
  %31 = getelementptr inbounds %struct.gcm_aes_ctx, %struct.gcm_aes_ctx* %30, i32 0, i32 0
  %32 = load i32, i32* @pmull_ghash_update_p64, align 4
  %33 = call i32 @ghash_do_update(i32 1, i32* %28, i8* %29, i32* %31, i32* null, i32 %32)
  %34 = load i32*, i32** %8, align 8
  %35 = getelementptr inbounds i32, i32* %34, i64 1
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @put_unaligned_be64(i32 %36, i32* %17)
  %38 = load i32*, i32** %8, align 8
  %39 = getelementptr inbounds i32, i32* %38, i64 0
  %40 = load i32, i32* %39, align 4
  %41 = getelementptr inbounds i32, i32* %17, i64 8
  %42 = call i32 @put_unaligned_be64(i32 %40, i32* %41)
  %43 = load i32*, i32** %9, align 8
  %44 = load i32, i32* @AES_BLOCK_SIZE, align 4
  %45 = call i32 @crypto_xor(i32* %43, i32* %17, i32 %44)
  %46 = load i8*, i8** %11, align 8
  call void @llvm.stackrestore(i8* %46)
  ret void
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i8* @cpu_to_be64(i32) #2

declare dso_local i32 @ghash_do_update(i32, i32*, i8*, i32*, i32*, i32) #2

declare dso_local i32 @put_unaligned_be64(i32, i32*) #2

declare dso_local i32 @crypto_xor(i32*, i32*, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
