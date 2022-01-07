; ModuleID = '/home/carl/AnghaBench/linux/crypto/extr_blkcipher.c_async_decrypt.c'
source_filename = "/home/carl/AnghaBench/linux/crypto/extr_blkcipher.c_async_decrypt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ablkcipher_request = type { i32, i32, i32, %struct.TYPE_4__, i32 }
%struct.TYPE_4__ = type { i32, %struct.crypto_tfm* }
%struct.crypto_tfm = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { %struct.blkcipher_alg }
%struct.blkcipher_alg = type { i32 (%struct.blkcipher_desc*, i32, i32, i32)* }
%struct.blkcipher_desc = type { i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ablkcipher_request*)* @async_decrypt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @async_decrypt(%struct.ablkcipher_request* %0) #0 {
  %2 = alloca %struct.ablkcipher_request*, align 8
  %3 = alloca %struct.crypto_tfm*, align 8
  %4 = alloca %struct.blkcipher_alg*, align 8
  %5 = alloca %struct.blkcipher_desc, align 4
  store %struct.ablkcipher_request* %0, %struct.ablkcipher_request** %2, align 8
  %6 = load %struct.ablkcipher_request*, %struct.ablkcipher_request** %2, align 8
  %7 = getelementptr inbounds %struct.ablkcipher_request, %struct.ablkcipher_request* %6, i32 0, i32 3
  %8 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %7, i32 0, i32 1
  %9 = load %struct.crypto_tfm*, %struct.crypto_tfm** %8, align 8
  store %struct.crypto_tfm* %9, %struct.crypto_tfm** %3, align 8
  %10 = load %struct.crypto_tfm*, %struct.crypto_tfm** %3, align 8
  %11 = getelementptr inbounds %struct.crypto_tfm, %struct.crypto_tfm* %10, i32 0, i32 0
  %12 = load %struct.TYPE_3__*, %struct.TYPE_3__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 0
  store %struct.blkcipher_alg* %13, %struct.blkcipher_alg** %4, align 8
  %14 = getelementptr inbounds %struct.blkcipher_desc, %struct.blkcipher_desc* %5, i32 0, i32 0
  %15 = load %struct.ablkcipher_request*, %struct.ablkcipher_request** %2, align 8
  %16 = getelementptr inbounds %struct.ablkcipher_request, %struct.ablkcipher_request* %15, i32 0, i32 3
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  store i32 %18, i32* %14, align 4
  %19 = getelementptr inbounds %struct.blkcipher_desc, %struct.blkcipher_desc* %5, i32 0, i32 1
  %20 = load %struct.ablkcipher_request*, %struct.ablkcipher_request** %2, align 8
  %21 = getelementptr inbounds %struct.ablkcipher_request, %struct.ablkcipher_request* %20, i32 0, i32 4
  %22 = load i32, i32* %21, align 8
  store i32 %22, i32* %19, align 4
  %23 = getelementptr inbounds %struct.blkcipher_desc, %struct.blkcipher_desc* %5, i32 0, i32 2
  %24 = load %struct.crypto_tfm*, %struct.crypto_tfm** %3, align 8
  %25 = call i32 @__crypto_blkcipher_cast(%struct.crypto_tfm* %24)
  store i32 %25, i32* %23, align 4
  %26 = load %struct.blkcipher_alg*, %struct.blkcipher_alg** %4, align 8
  %27 = getelementptr inbounds %struct.blkcipher_alg, %struct.blkcipher_alg* %26, i32 0, i32 0
  %28 = load i32 (%struct.blkcipher_desc*, i32, i32, i32)*, i32 (%struct.blkcipher_desc*, i32, i32, i32)** %27, align 8
  %29 = load %struct.ablkcipher_request*, %struct.ablkcipher_request** %2, align 8
  %30 = getelementptr inbounds %struct.ablkcipher_request, %struct.ablkcipher_request* %29, i32 0, i32 2
  %31 = load i32, i32* %30, align 8
  %32 = load %struct.ablkcipher_request*, %struct.ablkcipher_request** %2, align 8
  %33 = getelementptr inbounds %struct.ablkcipher_request, %struct.ablkcipher_request* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = load %struct.ablkcipher_request*, %struct.ablkcipher_request** %2, align 8
  %36 = getelementptr inbounds %struct.ablkcipher_request, %struct.ablkcipher_request* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = call i32 %28(%struct.blkcipher_desc* %5, i32 %31, i32 %34, i32 %37)
  ret i32 %38
}

declare dso_local i32 @__crypto_blkcipher_cast(%struct.crypto_tfm*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
