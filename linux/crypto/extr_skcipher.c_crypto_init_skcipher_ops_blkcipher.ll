; ModuleID = '/home/carl/AnghaBench/linux/crypto/extr_skcipher.c_crypto_init_skcipher_ops_blkcipher.c'
source_filename = "/home/carl/AnghaBench/linux/crypto/extr_skcipher.c_crypto_init_skcipher_ops_blkcipher.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.crypto_tfm = type { i32, %struct.crypto_alg* }
%struct.crypto_alg = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.crypto_skcipher = type { i32, i32, i32, i32, i32 }
%struct.crypto_blkcipher = type { i32 }

@EAGAIN = common dso_local global i32 0, align 4
@CRYPTO_ALG_TYPE_BLKCIPHER = common dso_local global i32 0, align 4
@CRYPTO_ALG_TYPE_MASK = common dso_local global i32 0, align 4
@crypto_exit_skcipher_ops_blkcipher = common dso_local global i32 0, align 4
@skcipher_setkey_blkcipher = common dso_local global i32 0, align 4
@skcipher_encrypt_blkcipher = common dso_local global i32 0, align 4
@skcipher_decrypt_blkcipher = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.crypto_tfm*)* @crypto_init_skcipher_ops_blkcipher to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @crypto_init_skcipher_ops_blkcipher(%struct.crypto_tfm* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.crypto_tfm*, align 8
  %4 = alloca %struct.crypto_alg*, align 8
  %5 = alloca %struct.crypto_skcipher*, align 8
  %6 = alloca %struct.crypto_blkcipher**, align 8
  %7 = alloca %struct.crypto_blkcipher*, align 8
  %8 = alloca %struct.crypto_tfm*, align 8
  store %struct.crypto_tfm* %0, %struct.crypto_tfm** %3, align 8
  %9 = load %struct.crypto_tfm*, %struct.crypto_tfm** %3, align 8
  %10 = getelementptr inbounds %struct.crypto_tfm, %struct.crypto_tfm* %9, i32 0, i32 1
  %11 = load %struct.crypto_alg*, %struct.crypto_alg** %10, align 8
  store %struct.crypto_alg* %11, %struct.crypto_alg** %4, align 8
  %12 = load %struct.crypto_tfm*, %struct.crypto_tfm** %3, align 8
  %13 = call %struct.crypto_skcipher* @__crypto_skcipher_cast(%struct.crypto_tfm* %12)
  store %struct.crypto_skcipher* %13, %struct.crypto_skcipher** %5, align 8
  %14 = load %struct.crypto_tfm*, %struct.crypto_tfm** %3, align 8
  %15 = call %struct.crypto_blkcipher** @crypto_tfm_ctx(%struct.crypto_tfm* %14)
  store %struct.crypto_blkcipher** %15, %struct.crypto_blkcipher*** %6, align 8
  %16 = load %struct.crypto_alg*, %struct.crypto_alg** %4, align 8
  %17 = call i32 @crypto_mod_get(%struct.crypto_alg* %16)
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %22, label %19

19:                                               ; preds = %1
  %20 = load i32, i32* @EAGAIN, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %2, align 4
  br label %64

22:                                               ; preds = %1
  %23 = load %struct.crypto_alg*, %struct.crypto_alg** %4, align 8
  %24 = load i32, i32* @CRYPTO_ALG_TYPE_BLKCIPHER, align 4
  %25 = load i32, i32* @CRYPTO_ALG_TYPE_MASK, align 4
  %26 = call %struct.crypto_tfm* @__crypto_alloc_tfm(%struct.crypto_alg* %23, i32 %24, i32 %25)
  store %struct.crypto_tfm* %26, %struct.crypto_tfm** %8, align 8
  %27 = load %struct.crypto_tfm*, %struct.crypto_tfm** %8, align 8
  %28 = call i64 @IS_ERR(%struct.crypto_tfm* %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %35

30:                                               ; preds = %22
  %31 = load %struct.crypto_alg*, %struct.crypto_alg** %4, align 8
  %32 = call i32 @crypto_mod_put(%struct.crypto_alg* %31)
  %33 = load %struct.crypto_tfm*, %struct.crypto_tfm** %8, align 8
  %34 = call i32 @PTR_ERR(%struct.crypto_tfm* %33)
  store i32 %34, i32* %2, align 4
  br label %64

35:                                               ; preds = %22
  %36 = load %struct.crypto_tfm*, %struct.crypto_tfm** %8, align 8
  %37 = call %struct.crypto_blkcipher* @__crypto_blkcipher_cast(%struct.crypto_tfm* %36)
  store %struct.crypto_blkcipher* %37, %struct.crypto_blkcipher** %7, align 8
  %38 = load %struct.crypto_blkcipher*, %struct.crypto_blkcipher** %7, align 8
  %39 = load %struct.crypto_blkcipher**, %struct.crypto_blkcipher*** %6, align 8
  store %struct.crypto_blkcipher* %38, %struct.crypto_blkcipher** %39, align 8
  %40 = load i32, i32* @crypto_exit_skcipher_ops_blkcipher, align 4
  %41 = load %struct.crypto_tfm*, %struct.crypto_tfm** %3, align 8
  %42 = getelementptr inbounds %struct.crypto_tfm, %struct.crypto_tfm* %41, i32 0, i32 0
  store i32 %40, i32* %42, align 8
  %43 = load i32, i32* @skcipher_setkey_blkcipher, align 4
  %44 = load %struct.crypto_skcipher*, %struct.crypto_skcipher** %5, align 8
  %45 = getelementptr inbounds %struct.crypto_skcipher, %struct.crypto_skcipher* %44, i32 0, i32 4
  store i32 %43, i32* %45, align 4
  %46 = load i32, i32* @skcipher_encrypt_blkcipher, align 4
  %47 = load %struct.crypto_skcipher*, %struct.crypto_skcipher** %5, align 8
  %48 = getelementptr inbounds %struct.crypto_skcipher, %struct.crypto_skcipher* %47, i32 0, i32 3
  store i32 %46, i32* %48, align 4
  %49 = load i32, i32* @skcipher_decrypt_blkcipher, align 4
  %50 = load %struct.crypto_skcipher*, %struct.crypto_skcipher** %5, align 8
  %51 = getelementptr inbounds %struct.crypto_skcipher, %struct.crypto_skcipher* %50, i32 0, i32 2
  store i32 %49, i32* %51, align 4
  %52 = load %struct.crypto_blkcipher*, %struct.crypto_blkcipher** %7, align 8
  %53 = call i32 @crypto_blkcipher_ivsize(%struct.crypto_blkcipher* %52)
  %54 = load %struct.crypto_skcipher*, %struct.crypto_skcipher** %5, align 8
  %55 = getelementptr inbounds %struct.crypto_skcipher, %struct.crypto_skcipher* %54, i32 0, i32 1
  store i32 %53, i32* %55, align 4
  %56 = load %struct.crypto_alg*, %struct.crypto_alg** %4, align 8
  %57 = getelementptr inbounds %struct.crypto_alg, %struct.crypto_alg* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = load %struct.crypto_skcipher*, %struct.crypto_skcipher** %5, align 8
  %61 = getelementptr inbounds %struct.crypto_skcipher, %struct.crypto_skcipher* %60, i32 0, i32 0
  store i32 %59, i32* %61, align 4
  %62 = load %struct.crypto_skcipher*, %struct.crypto_skcipher** %5, align 8
  %63 = call i32 @skcipher_set_needkey(%struct.crypto_skcipher* %62)
  store i32 0, i32* %2, align 4
  br label %64

64:                                               ; preds = %35, %30, %19
  %65 = load i32, i32* %2, align 4
  ret i32 %65
}

declare dso_local %struct.crypto_skcipher* @__crypto_skcipher_cast(%struct.crypto_tfm*) #1

declare dso_local %struct.crypto_blkcipher** @crypto_tfm_ctx(%struct.crypto_tfm*) #1

declare dso_local i32 @crypto_mod_get(%struct.crypto_alg*) #1

declare dso_local %struct.crypto_tfm* @__crypto_alloc_tfm(%struct.crypto_alg*, i32, i32) #1

declare dso_local i64 @IS_ERR(%struct.crypto_tfm*) #1

declare dso_local i32 @crypto_mod_put(%struct.crypto_alg*) #1

declare dso_local i32 @PTR_ERR(%struct.crypto_tfm*) #1

declare dso_local %struct.crypto_blkcipher* @__crypto_blkcipher_cast(%struct.crypto_tfm*) #1

declare dso_local i32 @crypto_blkcipher_ivsize(%struct.crypto_blkcipher*) #1

declare dso_local i32 @skcipher_set_needkey(%struct.crypto_skcipher*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
