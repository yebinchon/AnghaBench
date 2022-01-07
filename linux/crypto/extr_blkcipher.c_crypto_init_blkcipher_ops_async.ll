; ModuleID = '/home/carl/AnghaBench/linux/crypto/extr_blkcipher.c_crypto_init_blkcipher_ops_async.c'
source_filename = "/home/carl/AnghaBench/linux/crypto/extr_blkcipher.c_crypto_init_blkcipher_ops_async.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.crypto_tfm = type { %struct.TYPE_2__*, %struct.ablkcipher_tfm }
%struct.TYPE_2__ = type { %struct.blkcipher_alg }
%struct.blkcipher_alg = type { i32 }
%struct.ablkcipher_tfm = type { i32, i32, i32, i32, i32 }

@async_setkey = common dso_local global i32 0, align 4
@async_encrypt = common dso_local global i32 0, align 4
@async_decrypt = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.crypto_tfm*)* @crypto_init_blkcipher_ops_async to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @crypto_init_blkcipher_ops_async(%struct.crypto_tfm* %0) #0 {
  %2 = alloca %struct.crypto_tfm*, align 8
  %3 = alloca %struct.ablkcipher_tfm*, align 8
  %4 = alloca %struct.blkcipher_alg*, align 8
  store %struct.crypto_tfm* %0, %struct.crypto_tfm** %2, align 8
  %5 = load %struct.crypto_tfm*, %struct.crypto_tfm** %2, align 8
  %6 = getelementptr inbounds %struct.crypto_tfm, %struct.crypto_tfm* %5, i32 0, i32 1
  store %struct.ablkcipher_tfm* %6, %struct.ablkcipher_tfm** %3, align 8
  %7 = load %struct.crypto_tfm*, %struct.crypto_tfm** %2, align 8
  %8 = getelementptr inbounds %struct.crypto_tfm, %struct.crypto_tfm* %7, i32 0, i32 0
  %9 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  store %struct.blkcipher_alg* %10, %struct.blkcipher_alg** %4, align 8
  %11 = load i32, i32* @async_setkey, align 4
  %12 = load %struct.ablkcipher_tfm*, %struct.ablkcipher_tfm** %3, align 8
  %13 = getelementptr inbounds %struct.ablkcipher_tfm, %struct.ablkcipher_tfm* %12, i32 0, i32 4
  store i32 %11, i32* %13, align 4
  %14 = load i32, i32* @async_encrypt, align 4
  %15 = load %struct.ablkcipher_tfm*, %struct.ablkcipher_tfm** %3, align 8
  %16 = getelementptr inbounds %struct.ablkcipher_tfm, %struct.ablkcipher_tfm* %15, i32 0, i32 3
  store i32 %14, i32* %16, align 4
  %17 = load i32, i32* @async_decrypt, align 4
  %18 = load %struct.ablkcipher_tfm*, %struct.ablkcipher_tfm** %3, align 8
  %19 = getelementptr inbounds %struct.ablkcipher_tfm, %struct.ablkcipher_tfm* %18, i32 0, i32 2
  store i32 %17, i32* %19, align 4
  %20 = load %struct.crypto_tfm*, %struct.crypto_tfm** %2, align 8
  %21 = call i32 @__crypto_ablkcipher_cast(%struct.crypto_tfm* %20)
  %22 = load %struct.ablkcipher_tfm*, %struct.ablkcipher_tfm** %3, align 8
  %23 = getelementptr inbounds %struct.ablkcipher_tfm, %struct.ablkcipher_tfm* %22, i32 0, i32 1
  store i32 %21, i32* %23, align 4
  %24 = load %struct.blkcipher_alg*, %struct.blkcipher_alg** %4, align 8
  %25 = getelementptr inbounds %struct.blkcipher_alg, %struct.blkcipher_alg* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = load %struct.ablkcipher_tfm*, %struct.ablkcipher_tfm** %3, align 8
  %28 = getelementptr inbounds %struct.ablkcipher_tfm, %struct.ablkcipher_tfm* %27, i32 0, i32 0
  store i32 %26, i32* %28, align 4
  ret i32 0
}

declare dso_local i32 @__crypto_ablkcipher_cast(%struct.crypto_tfm*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
