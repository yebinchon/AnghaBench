; ModuleID = '/home/carl/AnghaBench/linux/arch/sparc/crypto/extr_aes_glue.c_aes_set_key.c'
source_filename = "/home/carl/AnghaBench/linux/arch/sparc/crypto/extr_aes_glue.c_aes_set_key.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.crypto_tfm = type { i32 }
%struct.crypto_sparc64_aes_ctx = type { i32, i32, i32*, i32* }

@aes128_ops = common dso_local global i32 0, align 4
@aes192_ops = common dso_local global i32 0, align 4
@aes256_ops = common dso_local global i32 0, align 4
@CRYPTO_TFM_RES_BAD_KEY_LEN = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.crypto_tfm*, i32*, i32)* @aes_set_key to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @aes_set_key(%struct.crypto_tfm* %0, i32* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.crypto_tfm*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.crypto_sparc64_aes_ctx*, align 8
  %9 = alloca i32*, align 8
  store %struct.crypto_tfm* %0, %struct.crypto_tfm** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32 %2, i32* %7, align 4
  %10 = load %struct.crypto_tfm*, %struct.crypto_tfm** %5, align 8
  %11 = call %struct.crypto_sparc64_aes_ctx* @crypto_tfm_ctx(%struct.crypto_tfm* %10)
  store %struct.crypto_sparc64_aes_ctx* %11, %struct.crypto_sparc64_aes_ctx** %8, align 8
  %12 = load %struct.crypto_tfm*, %struct.crypto_tfm** %5, align 8
  %13 = getelementptr inbounds %struct.crypto_tfm, %struct.crypto_tfm* %12, i32 0, i32 0
  store i32* %13, i32** %9, align 8
  %14 = load i32, i32* %7, align 4
  switch i32 %14, label %30 [
    i32 130, label %15
    i32 129, label %20
    i32 128, label %25
  ]

15:                                               ; preds = %3
  %16 = load %struct.crypto_sparc64_aes_ctx*, %struct.crypto_sparc64_aes_ctx** %8, align 8
  %17 = getelementptr inbounds %struct.crypto_sparc64_aes_ctx, %struct.crypto_sparc64_aes_ctx* %16, i32 0, i32 0
  store i32 176, i32* %17, align 8
  %18 = load %struct.crypto_sparc64_aes_ctx*, %struct.crypto_sparc64_aes_ctx** %8, align 8
  %19 = getelementptr inbounds %struct.crypto_sparc64_aes_ctx, %struct.crypto_sparc64_aes_ctx* %18, i32 0, i32 3
  store i32* @aes128_ops, i32** %19, align 8
  br label %37

20:                                               ; preds = %3
  %21 = load %struct.crypto_sparc64_aes_ctx*, %struct.crypto_sparc64_aes_ctx** %8, align 8
  %22 = getelementptr inbounds %struct.crypto_sparc64_aes_ctx, %struct.crypto_sparc64_aes_ctx* %21, i32 0, i32 0
  store i32 208, i32* %22, align 8
  %23 = load %struct.crypto_sparc64_aes_ctx*, %struct.crypto_sparc64_aes_ctx** %8, align 8
  %24 = getelementptr inbounds %struct.crypto_sparc64_aes_ctx, %struct.crypto_sparc64_aes_ctx* %23, i32 0, i32 3
  store i32* @aes192_ops, i32** %24, align 8
  br label %37

25:                                               ; preds = %3
  %26 = load %struct.crypto_sparc64_aes_ctx*, %struct.crypto_sparc64_aes_ctx** %8, align 8
  %27 = getelementptr inbounds %struct.crypto_sparc64_aes_ctx, %struct.crypto_sparc64_aes_ctx* %26, i32 0, i32 0
  store i32 240, i32* %27, align 8
  %28 = load %struct.crypto_sparc64_aes_ctx*, %struct.crypto_sparc64_aes_ctx** %8, align 8
  %29 = getelementptr inbounds %struct.crypto_sparc64_aes_ctx, %struct.crypto_sparc64_aes_ctx* %28, i32 0, i32 3
  store i32* @aes256_ops, i32** %29, align 8
  br label %37

30:                                               ; preds = %3
  %31 = load i32, i32* @CRYPTO_TFM_RES_BAD_KEY_LEN, align 4
  %32 = load i32*, i32** %9, align 8
  %33 = load i32, i32* %32, align 4
  %34 = or i32 %33, %31
  store i32 %34, i32* %32, align 4
  %35 = load i32, i32* @EINVAL, align 4
  %36 = sub nsw i32 0, %35
  store i32 %36, i32* %4, align 4
  br label %48

37:                                               ; preds = %25, %20, %15
  %38 = load i32*, i32** %6, align 8
  %39 = load %struct.crypto_sparc64_aes_ctx*, %struct.crypto_sparc64_aes_ctx** %8, align 8
  %40 = getelementptr inbounds %struct.crypto_sparc64_aes_ctx, %struct.crypto_sparc64_aes_ctx* %39, i32 0, i32 2
  %41 = load i32*, i32** %40, align 8
  %42 = getelementptr inbounds i32, i32* %41, i64 0
  %43 = load i32, i32* %7, align 4
  %44 = call i32 @aes_sparc64_key_expand(i32* %38, i32* %42, i32 %43)
  %45 = load i32, i32* %7, align 4
  %46 = load %struct.crypto_sparc64_aes_ctx*, %struct.crypto_sparc64_aes_ctx** %8, align 8
  %47 = getelementptr inbounds %struct.crypto_sparc64_aes_ctx, %struct.crypto_sparc64_aes_ctx* %46, i32 0, i32 1
  store i32 %45, i32* %47, align 4
  store i32 0, i32* %4, align 4
  br label %48

48:                                               ; preds = %37, %30
  %49 = load i32, i32* %4, align 4
  ret i32 %49
}

declare dso_local %struct.crypto_sparc64_aes_ctx* @crypto_tfm_ctx(%struct.crypto_tfm*) #1

declare dso_local i32 @aes_sparc64_key_expand(i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
