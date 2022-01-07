; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/crypto/extr_aes-spe-glue.c_ppc_aes_setkey.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/crypto/extr_aes-spe-glue.c_ppc_aes_setkey.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.crypto_tfm = type { i32 }
%struct.ppc_aes_ctx = type { i32, i32, i32 }

@CRYPTO_TFM_RES_BAD_KEY_LEN = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.crypto_tfm*, i32*, i32)* @ppc_aes_setkey to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ppc_aes_setkey(%struct.crypto_tfm* %0, i32* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.crypto_tfm*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.ppc_aes_ctx*, align 8
  store %struct.crypto_tfm* %0, %struct.crypto_tfm** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32 %2, i32* %7, align 4
  %9 = load %struct.crypto_tfm*, %struct.crypto_tfm** %5, align 8
  %10 = call %struct.ppc_aes_ctx* @crypto_tfm_ctx(%struct.crypto_tfm* %9)
  store %struct.ppc_aes_ctx* %10, %struct.ppc_aes_ctx** %8, align 8
  %11 = load i32, i32* %7, align 4
  %12 = icmp ne i32 %11, 130
  br i1 %12, label %13, label %27

13:                                               ; preds = %3
  %14 = load i32, i32* %7, align 4
  %15 = icmp ne i32 %14, 129
  br i1 %15, label %16, label %27

16:                                               ; preds = %13
  %17 = load i32, i32* %7, align 4
  %18 = icmp ne i32 %17, 128
  br i1 %18, label %19, label %27

19:                                               ; preds = %16
  %20 = load i32, i32* @CRYPTO_TFM_RES_BAD_KEY_LEN, align 4
  %21 = load %struct.crypto_tfm*, %struct.crypto_tfm** %5, align 8
  %22 = getelementptr inbounds %struct.crypto_tfm, %struct.crypto_tfm* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = or i32 %23, %20
  store i32 %24, i32* %22, align 4
  %25 = load i32, i32* @EINVAL, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %4, align 4
  br label %62

27:                                               ; preds = %16, %13, %3
  %28 = load i32, i32* %7, align 4
  switch i32 %28, label %53 [
    i32 130, label %29
    i32 129, label %37
    i32 128, label %45
  ]

29:                                               ; preds = %27
  %30 = load %struct.ppc_aes_ctx*, %struct.ppc_aes_ctx** %8, align 8
  %31 = getelementptr inbounds %struct.ppc_aes_ctx, %struct.ppc_aes_ctx* %30, i32 0, i32 0
  store i32 4, i32* %31, align 4
  %32 = load %struct.ppc_aes_ctx*, %struct.ppc_aes_ctx** %8, align 8
  %33 = getelementptr inbounds %struct.ppc_aes_ctx, %struct.ppc_aes_ctx* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = load i32*, i32** %6, align 8
  %36 = call i32 @ppc_expand_key_128(i32 %34, i32* %35)
  br label %53

37:                                               ; preds = %27
  %38 = load %struct.ppc_aes_ctx*, %struct.ppc_aes_ctx** %8, align 8
  %39 = getelementptr inbounds %struct.ppc_aes_ctx, %struct.ppc_aes_ctx* %38, i32 0, i32 0
  store i32 5, i32* %39, align 4
  %40 = load %struct.ppc_aes_ctx*, %struct.ppc_aes_ctx** %8, align 8
  %41 = getelementptr inbounds %struct.ppc_aes_ctx, %struct.ppc_aes_ctx* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = load i32*, i32** %6, align 8
  %44 = call i32 @ppc_expand_key_192(i32 %42, i32* %43)
  br label %53

45:                                               ; preds = %27
  %46 = load %struct.ppc_aes_ctx*, %struct.ppc_aes_ctx** %8, align 8
  %47 = getelementptr inbounds %struct.ppc_aes_ctx, %struct.ppc_aes_ctx* %46, i32 0, i32 0
  store i32 6, i32* %47, align 4
  %48 = load %struct.ppc_aes_ctx*, %struct.ppc_aes_ctx** %8, align 8
  %49 = getelementptr inbounds %struct.ppc_aes_ctx, %struct.ppc_aes_ctx* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  %51 = load i32*, i32** %6, align 8
  %52 = call i32 @ppc_expand_key_256(i32 %50, i32* %51)
  br label %53

53:                                               ; preds = %27, %45, %37, %29
  %54 = load %struct.ppc_aes_ctx*, %struct.ppc_aes_ctx** %8, align 8
  %55 = getelementptr inbounds %struct.ppc_aes_ctx, %struct.ppc_aes_ctx* %54, i32 0, i32 2
  %56 = load i32, i32* %55, align 4
  %57 = load %struct.ppc_aes_ctx*, %struct.ppc_aes_ctx** %8, align 8
  %58 = getelementptr inbounds %struct.ppc_aes_ctx, %struct.ppc_aes_ctx* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 4
  %60 = load i32, i32* %7, align 4
  %61 = call i32 @ppc_generate_decrypt_key(i32 %56, i32 %59, i32 %60)
  store i32 0, i32* %4, align 4
  br label %62

62:                                               ; preds = %53, %19
  %63 = load i32, i32* %4, align 4
  ret i32 %63
}

declare dso_local %struct.ppc_aes_ctx* @crypto_tfm_ctx(%struct.crypto_tfm*) #1

declare dso_local i32 @ppc_expand_key_128(i32, i32*) #1

declare dso_local i32 @ppc_expand_key_192(i32, i32*) #1

declare dso_local i32 @ppc_expand_key_256(i32, i32*) #1

declare dso_local i32 @ppc_generate_decrypt_key(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
