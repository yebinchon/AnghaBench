; ModuleID = '/home/carl/AnghaBench/linux/crypto/extr_skcipher.c_skcipher_crypt_ablkcipher.c'
source_filename = "/home/carl/AnghaBench/linux/crypto/extr_skcipher.c_skcipher_crypt_ablkcipher.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.skcipher_request = type { i32, i32, i32, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32 }
%struct.ablkcipher_request = type opaque
%struct.crypto_skcipher = type { i32 }
%struct.crypto_ablkcipher = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.skcipher_request*, i32 (%struct.ablkcipher_request*)*)* @skcipher_crypt_ablkcipher to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @skcipher_crypt_ablkcipher(%struct.skcipher_request* %0, i32 (%struct.ablkcipher_request*)* %1) #0 {
  %3 = alloca %struct.skcipher_request*, align 8
  %4 = alloca i32 (%struct.ablkcipher_request*)*, align 8
  %5 = alloca %struct.crypto_skcipher*, align 8
  %6 = alloca %struct.crypto_ablkcipher**, align 8
  %7 = alloca %struct.ablkcipher_request*, align 8
  store %struct.skcipher_request* %0, %struct.skcipher_request** %3, align 8
  store i32 (%struct.ablkcipher_request*)* %1, i32 (%struct.ablkcipher_request*)** %4, align 8
  %8 = load %struct.skcipher_request*, %struct.skcipher_request** %3, align 8
  %9 = call %struct.crypto_skcipher* @crypto_skcipher_reqtfm(%struct.skcipher_request* %8)
  store %struct.crypto_skcipher* %9, %struct.crypto_skcipher** %5, align 8
  %10 = load %struct.crypto_skcipher*, %struct.crypto_skcipher** %5, align 8
  %11 = call %struct.crypto_ablkcipher** @crypto_skcipher_ctx(%struct.crypto_skcipher* %10)
  store %struct.crypto_ablkcipher** %11, %struct.crypto_ablkcipher*** %6, align 8
  %12 = load %struct.skcipher_request*, %struct.skcipher_request** %3, align 8
  %13 = call %struct.ablkcipher_request* @skcipher_request_ctx(%struct.skcipher_request* %12)
  store %struct.ablkcipher_request* %13, %struct.ablkcipher_request** %7, align 8
  %14 = load %struct.ablkcipher_request*, %struct.ablkcipher_request** %7, align 8
  %15 = load %struct.crypto_ablkcipher**, %struct.crypto_ablkcipher*** %6, align 8
  %16 = load %struct.crypto_ablkcipher*, %struct.crypto_ablkcipher** %15, align 8
  %17 = call i32 @ablkcipher_request_set_tfm(%struct.ablkcipher_request* %14, %struct.crypto_ablkcipher* %16)
  %18 = load %struct.ablkcipher_request*, %struct.ablkcipher_request** %7, align 8
  %19 = load %struct.skcipher_request*, %struct.skcipher_request** %3, align 8
  %20 = call i32 @skcipher_request_flags(%struct.skcipher_request* %19)
  %21 = load %struct.skcipher_request*, %struct.skcipher_request** %3, align 8
  %22 = getelementptr inbounds %struct.skcipher_request, %struct.skcipher_request* %21, i32 0, i32 4
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = load %struct.skcipher_request*, %struct.skcipher_request** %3, align 8
  %26 = getelementptr inbounds %struct.skcipher_request, %struct.skcipher_request* %25, i32 0, i32 4
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @ablkcipher_request_set_callback(%struct.ablkcipher_request* %18, i32 %20, i32 %24, i32 %28)
  %30 = load %struct.ablkcipher_request*, %struct.ablkcipher_request** %7, align 8
  %31 = load %struct.skcipher_request*, %struct.skcipher_request** %3, align 8
  %32 = getelementptr inbounds %struct.skcipher_request, %struct.skcipher_request* %31, i32 0, i32 3
  %33 = load i32, i32* %32, align 4
  %34 = load %struct.skcipher_request*, %struct.skcipher_request** %3, align 8
  %35 = getelementptr inbounds %struct.skcipher_request, %struct.skcipher_request* %34, i32 0, i32 2
  %36 = load i32, i32* %35, align 4
  %37 = load %struct.skcipher_request*, %struct.skcipher_request** %3, align 8
  %38 = getelementptr inbounds %struct.skcipher_request, %struct.skcipher_request* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = load %struct.skcipher_request*, %struct.skcipher_request** %3, align 8
  %41 = getelementptr inbounds %struct.skcipher_request, %struct.skcipher_request* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = call i32 @ablkcipher_request_set_crypt(%struct.ablkcipher_request* %30, i32 %33, i32 %36, i32 %39, i32 %42)
  %44 = load i32 (%struct.ablkcipher_request*)*, i32 (%struct.ablkcipher_request*)** %4, align 8
  %45 = load %struct.ablkcipher_request*, %struct.ablkcipher_request** %7, align 8
  %46 = call i32 %44(%struct.ablkcipher_request* %45)
  ret i32 %46
}

declare dso_local %struct.crypto_skcipher* @crypto_skcipher_reqtfm(%struct.skcipher_request*) #1

declare dso_local %struct.crypto_ablkcipher** @crypto_skcipher_ctx(%struct.crypto_skcipher*) #1

declare dso_local %struct.ablkcipher_request* @skcipher_request_ctx(%struct.skcipher_request*) #1

declare dso_local i32 @ablkcipher_request_set_tfm(%struct.ablkcipher_request*, %struct.crypto_ablkcipher*) #1

declare dso_local i32 @ablkcipher_request_set_callback(%struct.ablkcipher_request*, i32, i32, i32) #1

declare dso_local i32 @skcipher_request_flags(%struct.skcipher_request*) #1

declare dso_local i32 @ablkcipher_request_set_crypt(%struct.ablkcipher_request*, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
