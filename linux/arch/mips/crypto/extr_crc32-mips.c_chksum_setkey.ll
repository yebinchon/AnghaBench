; ModuleID = '/home/carl/AnghaBench/linux/arch/mips/crypto/extr_crc32-mips.c_chksum_setkey.c'
source_filename = "/home/carl/AnghaBench/linux/arch/mips/crypto/extr_crc32-mips.c_chksum_setkey.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.crypto_shash = type { i32 }
%struct.chksum_ctx = type { i32 }

@CRYPTO_TFM_RES_BAD_KEY_LEN = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.crypto_shash*, i32*, i32)* @chksum_setkey to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @chksum_setkey(%struct.crypto_shash* %0, i32* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.crypto_shash*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.chksum_ctx*, align 8
  store %struct.crypto_shash* %0, %struct.crypto_shash** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32 %2, i32* %7, align 4
  %9 = load %struct.crypto_shash*, %struct.crypto_shash** %5, align 8
  %10 = call %struct.chksum_ctx* @crypto_shash_ctx(%struct.crypto_shash* %9)
  store %struct.chksum_ctx* %10, %struct.chksum_ctx** %8, align 8
  %11 = load i32, i32* %7, align 4
  %12 = zext i32 %11 to i64
  %13 = icmp ne i64 %12, 4
  br i1 %13, label %14, label %20

14:                                               ; preds = %3
  %15 = load %struct.crypto_shash*, %struct.crypto_shash** %5, align 8
  %16 = load i32, i32* @CRYPTO_TFM_RES_BAD_KEY_LEN, align 4
  %17 = call i32 @crypto_shash_set_flags(%struct.crypto_shash* %15, i32 %16)
  %18 = load i32, i32* @EINVAL, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %4, align 4
  br label %25

20:                                               ; preds = %3
  %21 = load i32*, i32** %6, align 8
  %22 = call i32 @get_unaligned_le32(i32* %21)
  %23 = load %struct.chksum_ctx*, %struct.chksum_ctx** %8, align 8
  %24 = getelementptr inbounds %struct.chksum_ctx, %struct.chksum_ctx* %23, i32 0, i32 0
  store i32 %22, i32* %24, align 4
  store i32 0, i32* %4, align 4
  br label %25

25:                                               ; preds = %20, %14
  %26 = load i32, i32* %4, align 4
  ret i32 %26
}

declare dso_local %struct.chksum_ctx* @crypto_shash_ctx(%struct.crypto_shash*) #1

declare dso_local i32 @crypto_shash_set_flags(%struct.crypto_shash*, i32) #1

declare dso_local i32 @get_unaligned_le32(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
