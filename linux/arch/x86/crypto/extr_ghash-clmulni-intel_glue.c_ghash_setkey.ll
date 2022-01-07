; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/crypto/extr_ghash-clmulni-intel_glue.c_ghash_setkey.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/crypto/extr_ghash-clmulni-intel_glue.c_ghash_setkey.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.crypto_shash = type { i32 }
%struct.ghash_ctx = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i32 }
%struct.TYPE_4__ = type { i32, i32 }

@GHASH_BLOCK_SIZE = common dso_local global i32 0, align 4
@CRYPTO_TFM_RES_BAD_KEY_LEN = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.crypto_shash*, i32*, i32)* @ghash_setkey to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ghash_setkey(%struct.crypto_shash* %0, i32* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.crypto_shash*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.ghash_ctx*, align 8
  %9 = alloca %struct.TYPE_4__*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.crypto_shash* %0, %struct.crypto_shash** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32 %2, i32* %7, align 4
  %12 = load %struct.crypto_shash*, %struct.crypto_shash** %5, align 8
  %13 = call %struct.ghash_ctx* @crypto_shash_ctx(%struct.crypto_shash* %12)
  store %struct.ghash_ctx* %13, %struct.ghash_ctx** %8, align 8
  %14 = load i32*, i32** %6, align 8
  %15 = bitcast i32* %14 to %struct.TYPE_4__*
  store %struct.TYPE_4__* %15, %struct.TYPE_4__** %9, align 8
  %16 = load i32, i32* %7, align 4
  %17 = load i32, i32* @GHASH_BLOCK_SIZE, align 4
  %18 = icmp ne i32 %16, %17
  br i1 %18, label %19, label %25

19:                                               ; preds = %3
  %20 = load %struct.crypto_shash*, %struct.crypto_shash** %5, align 8
  %21 = load i32, i32* @CRYPTO_TFM_RES_BAD_KEY_LEN, align 4
  %22 = call i32 @crypto_shash_set_flags(%struct.crypto_shash* %20, i32 %21)
  %23 = load i32, i32* @EINVAL, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %4, align 4
  br label %60

25:                                               ; preds = %3
  %26 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @be64_to_cpu(i32 %28)
  store i32 %29, i32* %10, align 4
  %30 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @be64_to_cpu(i32 %32)
  store i32 %33, i32* %11, align 4
  %34 = load i32, i32* %11, align 4
  %35 = shl i32 %34, 1
  %36 = load i32, i32* %10, align 4
  %37 = ashr i32 %36, 63
  %38 = or i32 %35, %37
  %39 = load %struct.ghash_ctx*, %struct.ghash_ctx** %8, align 8
  %40 = getelementptr inbounds %struct.ghash_ctx, %struct.ghash_ctx* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %40, i32 0, i32 0
  store i32 %38, i32* %41, align 4
  %42 = load i32, i32* %10, align 4
  %43 = shl i32 %42, 1
  %44 = load i32, i32* %11, align 4
  %45 = ashr i32 %44, 63
  %46 = or i32 %43, %45
  %47 = load %struct.ghash_ctx*, %struct.ghash_ctx** %8, align 8
  %48 = getelementptr inbounds %struct.ghash_ctx, %struct.ghash_ctx* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %48, i32 0, i32 1
  store i32 %46, i32* %49, align 4
  %50 = load i32, i32* %10, align 4
  %51 = ashr i32 %50, 63
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %59

53:                                               ; preds = %25
  %54 = load %struct.ghash_ctx*, %struct.ghash_ctx** %8, align 8
  %55 = getelementptr inbounds %struct.ghash_ctx, %struct.ghash_ctx* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 4
  %58 = xor i32 %57, undef
  store i32 %58, i32* %56, align 4
  br label %59

59:                                               ; preds = %53, %25
  store i32 0, i32* %4, align 4
  br label %60

60:                                               ; preds = %59, %19
  %61 = load i32, i32* %4, align 4
  ret i32 %61
}

declare dso_local %struct.ghash_ctx* @crypto_shash_ctx(%struct.crypto_shash*) #1

declare dso_local i32 @crypto_shash_set_flags(%struct.crypto_shash*, i32) #1

declare dso_local i32 @be64_to_cpu(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
