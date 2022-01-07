; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/crypto/extr_aes-spe-glue.c_ppc_xts_setkey.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/crypto/extr_aes-spe-glue.c_ppc_xts_setkey.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.crypto_tfm = type { i32 }
%struct.ppc_xts_ctx = type { i32, i32, i32, i32 }

@CRYPTO_TFM_RES_BAD_KEY_LEN = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.crypto_tfm*, i32*, i32)* @ppc_xts_setkey to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ppc_xts_setkey(%struct.crypto_tfm* %0, i32* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.crypto_tfm*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.ppc_xts_ctx*, align 8
  %9 = alloca i32, align 4
  store %struct.crypto_tfm* %0, %struct.crypto_tfm** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32 %2, i32* %7, align 4
  %10 = load %struct.crypto_tfm*, %struct.crypto_tfm** %5, align 8
  %11 = call %struct.ppc_xts_ctx* @crypto_tfm_ctx(%struct.crypto_tfm* %10)
  store %struct.ppc_xts_ctx* %11, %struct.ppc_xts_ctx** %8, align 8
  %12 = load %struct.crypto_tfm*, %struct.crypto_tfm** %5, align 8
  %13 = load i32*, i32** %6, align 8
  %14 = load i32, i32* %7, align 4
  %15 = call i32 @xts_check_key(%struct.crypto_tfm* %12, i32* %13, i32 %14)
  store i32 %15, i32* %9, align 4
  %16 = load i32, i32* %9, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %20

18:                                               ; preds = %3
  %19 = load i32, i32* %9, align 4
  store i32 %19, i32* %4, align 4
  br label %92

20:                                               ; preds = %3
  %21 = load i32, i32* %7, align 4
  %22 = lshr i32 %21, 1
  store i32 %22, i32* %7, align 4
  %23 = load i32, i32* %7, align 4
  %24 = icmp ne i32 %23, 130
  br i1 %24, label %25, label %39

25:                                               ; preds = %20
  %26 = load i32, i32* %7, align 4
  %27 = icmp ne i32 %26, 129
  br i1 %27, label %28, label %39

28:                                               ; preds = %25
  %29 = load i32, i32* %7, align 4
  %30 = icmp ne i32 %29, 128
  br i1 %30, label %31, label %39

31:                                               ; preds = %28
  %32 = load i32, i32* @CRYPTO_TFM_RES_BAD_KEY_LEN, align 4
  %33 = load %struct.crypto_tfm*, %struct.crypto_tfm** %5, align 8
  %34 = getelementptr inbounds %struct.crypto_tfm, %struct.crypto_tfm* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = or i32 %35, %32
  store i32 %36, i32* %34, align 4
  %37 = load i32, i32* @EINVAL, align 4
  %38 = sub nsw i32 0, %37
  store i32 %38, i32* %4, align 4
  br label %92

39:                                               ; preds = %28, %25, %20
  %40 = load i32, i32* %7, align 4
  switch i32 %40, label %83 [
    i32 130, label %41
    i32 129, label %55
    i32 128, label %69
  ]

41:                                               ; preds = %39
  %42 = load %struct.ppc_xts_ctx*, %struct.ppc_xts_ctx** %8, align 8
  %43 = getelementptr inbounds %struct.ppc_xts_ctx, %struct.ppc_xts_ctx* %42, i32 0, i32 0
  store i32 4, i32* %43, align 4
  %44 = load %struct.ppc_xts_ctx*, %struct.ppc_xts_ctx** %8, align 8
  %45 = getelementptr inbounds %struct.ppc_xts_ctx, %struct.ppc_xts_ctx* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = load i32*, i32** %6, align 8
  %48 = call i32 @ppc_expand_key_128(i32 %46, i32* %47)
  %49 = load %struct.ppc_xts_ctx*, %struct.ppc_xts_ctx** %8, align 8
  %50 = getelementptr inbounds %struct.ppc_xts_ctx, %struct.ppc_xts_ctx* %49, i32 0, i32 3
  %51 = load i32, i32* %50, align 4
  %52 = load i32*, i32** %6, align 8
  %53 = getelementptr inbounds i32, i32* %52, i64 130
  %54 = call i32 @ppc_expand_key_128(i32 %51, i32* %53)
  br label %83

55:                                               ; preds = %39
  %56 = load %struct.ppc_xts_ctx*, %struct.ppc_xts_ctx** %8, align 8
  %57 = getelementptr inbounds %struct.ppc_xts_ctx, %struct.ppc_xts_ctx* %56, i32 0, i32 0
  store i32 5, i32* %57, align 4
  %58 = load %struct.ppc_xts_ctx*, %struct.ppc_xts_ctx** %8, align 8
  %59 = getelementptr inbounds %struct.ppc_xts_ctx, %struct.ppc_xts_ctx* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 4
  %61 = load i32*, i32** %6, align 8
  %62 = call i32 @ppc_expand_key_192(i32 %60, i32* %61)
  %63 = load %struct.ppc_xts_ctx*, %struct.ppc_xts_ctx** %8, align 8
  %64 = getelementptr inbounds %struct.ppc_xts_ctx, %struct.ppc_xts_ctx* %63, i32 0, i32 3
  %65 = load i32, i32* %64, align 4
  %66 = load i32*, i32** %6, align 8
  %67 = getelementptr inbounds i32, i32* %66, i64 129
  %68 = call i32 @ppc_expand_key_192(i32 %65, i32* %67)
  br label %83

69:                                               ; preds = %39
  %70 = load %struct.ppc_xts_ctx*, %struct.ppc_xts_ctx** %8, align 8
  %71 = getelementptr inbounds %struct.ppc_xts_ctx, %struct.ppc_xts_ctx* %70, i32 0, i32 0
  store i32 6, i32* %71, align 4
  %72 = load %struct.ppc_xts_ctx*, %struct.ppc_xts_ctx** %8, align 8
  %73 = getelementptr inbounds %struct.ppc_xts_ctx, %struct.ppc_xts_ctx* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 4
  %75 = load i32*, i32** %6, align 8
  %76 = call i32 @ppc_expand_key_256(i32 %74, i32* %75)
  %77 = load %struct.ppc_xts_ctx*, %struct.ppc_xts_ctx** %8, align 8
  %78 = getelementptr inbounds %struct.ppc_xts_ctx, %struct.ppc_xts_ctx* %77, i32 0, i32 3
  %79 = load i32, i32* %78, align 4
  %80 = load i32*, i32** %6, align 8
  %81 = getelementptr inbounds i32, i32* %80, i64 128
  %82 = call i32 @ppc_expand_key_256(i32 %79, i32* %81)
  br label %83

83:                                               ; preds = %39, %69, %55, %41
  %84 = load %struct.ppc_xts_ctx*, %struct.ppc_xts_ctx** %8, align 8
  %85 = getelementptr inbounds %struct.ppc_xts_ctx, %struct.ppc_xts_ctx* %84, i32 0, i32 2
  %86 = load i32, i32* %85, align 4
  %87 = load %struct.ppc_xts_ctx*, %struct.ppc_xts_ctx** %8, align 8
  %88 = getelementptr inbounds %struct.ppc_xts_ctx, %struct.ppc_xts_ctx* %87, i32 0, i32 1
  %89 = load i32, i32* %88, align 4
  %90 = load i32, i32* %7, align 4
  %91 = call i32 @ppc_generate_decrypt_key(i32 %86, i32 %89, i32 %90)
  store i32 0, i32* %4, align 4
  br label %92

92:                                               ; preds = %83, %31, %18
  %93 = load i32, i32* %4, align 4
  ret i32 %93
}

declare dso_local %struct.ppc_xts_ctx* @crypto_tfm_ctx(%struct.crypto_tfm*) #1

declare dso_local i32 @xts_check_key(%struct.crypto_tfm*, i32*, i32) #1

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
