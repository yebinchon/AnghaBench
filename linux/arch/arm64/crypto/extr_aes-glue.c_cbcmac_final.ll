; ModuleID = '/home/carl/AnghaBench/linux/arch/arm64/crypto/extr_aes-glue.c_cbcmac_final.c'
source_filename = "/home/carl/AnghaBench/linux/arch/arm64/crypto/extr_aes-glue.c_cbcmac_final.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.shash_desc = type { i32 }
%struct.mac_tfm_ctx = type { i32 }
%struct.mac_desc_ctx = type { i64, i32 }

@AES_BLOCK_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.shash_desc*, i32*)* @cbcmac_final to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cbcmac_final(%struct.shash_desc* %0, i32* %1) #0 {
  %3 = alloca %struct.shash_desc*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %struct.mac_tfm_ctx*, align 8
  %6 = alloca %struct.mac_desc_ctx*, align 8
  store %struct.shash_desc* %0, %struct.shash_desc** %3, align 8
  store i32* %1, i32** %4, align 8
  %7 = load %struct.shash_desc*, %struct.shash_desc** %3, align 8
  %8 = getelementptr inbounds %struct.shash_desc, %struct.shash_desc* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = call %struct.mac_tfm_ctx* @crypto_shash_ctx(i32 %9)
  store %struct.mac_tfm_ctx* %10, %struct.mac_tfm_ctx** %5, align 8
  %11 = load %struct.shash_desc*, %struct.shash_desc** %3, align 8
  %12 = call %struct.mac_desc_ctx* @shash_desc_ctx(%struct.shash_desc* %11)
  store %struct.mac_desc_ctx* %12, %struct.mac_desc_ctx** %6, align 8
  %13 = load %struct.mac_tfm_ctx*, %struct.mac_tfm_ctx** %5, align 8
  %14 = getelementptr inbounds %struct.mac_tfm_ctx, %struct.mac_tfm_ctx* %13, i32 0, i32 0
  %15 = load %struct.mac_desc_ctx*, %struct.mac_desc_ctx** %6, align 8
  %16 = getelementptr inbounds %struct.mac_desc_ctx, %struct.mac_desc_ctx* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 8
  %18 = load %struct.mac_desc_ctx*, %struct.mac_desc_ctx** %6, align 8
  %19 = getelementptr inbounds %struct.mac_desc_ctx, %struct.mac_desc_ctx* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = icmp ne i64 %20, 0
  %22 = zext i1 %21 to i32
  %23 = call i32 @mac_do_update(i32* %14, i32* null, i32 0, i32 %17, i32 %22, i32 0)
  %24 = load i32*, i32** %4, align 8
  %25 = load %struct.mac_desc_ctx*, %struct.mac_desc_ctx** %6, align 8
  %26 = getelementptr inbounds %struct.mac_desc_ctx, %struct.mac_desc_ctx* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 8
  %28 = load i32, i32* @AES_BLOCK_SIZE, align 4
  %29 = call i32 @memcpy(i32* %24, i32 %27, i32 %28)
  ret i32 0
}

declare dso_local %struct.mac_tfm_ctx* @crypto_shash_ctx(i32) #1

declare dso_local %struct.mac_desc_ctx* @shash_desc_ctx(%struct.shash_desc*) #1

declare dso_local i32 @mac_do_update(i32*, i32*, i32, i32, i32, i32) #1

declare dso_local i32 @memcpy(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
