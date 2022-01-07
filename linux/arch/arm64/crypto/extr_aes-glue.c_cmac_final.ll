; ModuleID = '/home/carl/AnghaBench/linux/arch/arm64/crypto/extr_aes-glue.c_cmac_final.c'
source_filename = "/home/carl/AnghaBench/linux/arch/arm64/crypto/extr_aes-glue.c_cmac_final.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.shash_desc = type { i32 }
%struct.mac_tfm_ctx = type { i32, i32* }
%struct.mac_desc_ctx = type { i64, i32* }

@AES_BLOCK_SIZE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.shash_desc*, i32*)* @cmac_final to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cmac_final(%struct.shash_desc* %0, i32* %1) #0 {
  %3 = alloca %struct.shash_desc*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %struct.mac_tfm_ctx*, align 8
  %6 = alloca %struct.mac_desc_ctx*, align 8
  %7 = alloca i32*, align 8
  store %struct.shash_desc* %0, %struct.shash_desc** %3, align 8
  store i32* %1, i32** %4, align 8
  %8 = load %struct.shash_desc*, %struct.shash_desc** %3, align 8
  %9 = getelementptr inbounds %struct.shash_desc, %struct.shash_desc* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = call %struct.mac_tfm_ctx* @crypto_shash_ctx(i32 %10)
  store %struct.mac_tfm_ctx* %11, %struct.mac_tfm_ctx** %5, align 8
  %12 = load %struct.shash_desc*, %struct.shash_desc** %3, align 8
  %13 = call %struct.mac_desc_ctx* @shash_desc_ctx(%struct.shash_desc* %12)
  store %struct.mac_desc_ctx* %13, %struct.mac_desc_ctx** %6, align 8
  %14 = load %struct.mac_tfm_ctx*, %struct.mac_tfm_ctx** %5, align 8
  %15 = getelementptr inbounds %struct.mac_tfm_ctx, %struct.mac_tfm_ctx* %14, i32 0, i32 1
  %16 = load i32*, i32** %15, align 8
  store i32* %16, i32** %7, align 8
  %17 = load %struct.mac_desc_ctx*, %struct.mac_desc_ctx** %6, align 8
  %18 = getelementptr inbounds %struct.mac_desc_ctx, %struct.mac_desc_ctx* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* @AES_BLOCK_SIZE, align 8
  %21 = icmp ne i64 %19, %20
  br i1 %21, label %22, label %35

22:                                               ; preds = %2
  %23 = load %struct.mac_desc_ctx*, %struct.mac_desc_ctx** %6, align 8
  %24 = getelementptr inbounds %struct.mac_desc_ctx, %struct.mac_desc_ctx* %23, i32 0, i32 1
  %25 = load i32*, i32** %24, align 8
  %26 = load %struct.mac_desc_ctx*, %struct.mac_desc_ctx** %6, align 8
  %27 = getelementptr inbounds %struct.mac_desc_ctx, %struct.mac_desc_ctx* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = getelementptr inbounds i32, i32* %25, i64 %28
  %30 = load i32, i32* %29, align 4
  %31 = xor i32 %30, 128
  store i32 %31, i32* %29, align 4
  %32 = load i64, i64* @AES_BLOCK_SIZE, align 8
  %33 = load i32*, i32** %7, align 8
  %34 = getelementptr inbounds i32, i32* %33, i64 %32
  store i32* %34, i32** %7, align 8
  br label %35

35:                                               ; preds = %22, %2
  %36 = load %struct.mac_tfm_ctx*, %struct.mac_tfm_ctx** %5, align 8
  %37 = getelementptr inbounds %struct.mac_tfm_ctx, %struct.mac_tfm_ctx* %36, i32 0, i32 0
  %38 = load i32*, i32** %7, align 8
  %39 = load %struct.mac_desc_ctx*, %struct.mac_desc_ctx** %6, align 8
  %40 = getelementptr inbounds %struct.mac_desc_ctx, %struct.mac_desc_ctx* %39, i32 0, i32 1
  %41 = load i32*, i32** %40, align 8
  %42 = call i32 @mac_do_update(i32* %37, i32* %38, i32 1, i32* %41, i32 0, i32 1)
  %43 = load i32*, i32** %4, align 8
  %44 = load %struct.mac_desc_ctx*, %struct.mac_desc_ctx** %6, align 8
  %45 = getelementptr inbounds %struct.mac_desc_ctx, %struct.mac_desc_ctx* %44, i32 0, i32 1
  %46 = load i32*, i32** %45, align 8
  %47 = load i64, i64* @AES_BLOCK_SIZE, align 8
  %48 = call i32 @memcpy(i32* %43, i32* %46, i64 %47)
  ret i32 0
}

declare dso_local %struct.mac_tfm_ctx* @crypto_shash_ctx(i32) #1

declare dso_local %struct.mac_desc_ctx* @shash_desc_ctx(%struct.shash_desc*) #1

declare dso_local i32 @mac_do_update(i32*, i32*, i32, i32*, i32, i32) #1

declare dso_local i32 @memcpy(i32*, i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
