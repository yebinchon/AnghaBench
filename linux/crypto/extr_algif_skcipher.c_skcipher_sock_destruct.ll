; ModuleID = '/home/carl/AnghaBench/linux/crypto/extr_algif_skcipher.c_skcipher_sock_destruct.c'
source_filename = "/home/carl/AnghaBench/linux/crypto/extr_algif_skcipher.c_skcipher_sock_destruct.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sock = type { i32 }
%struct.alg_sock = type { %struct.crypto_skcipher*, %struct.sock* }
%struct.crypto_skcipher = type { i32, i32, i32 }
%struct.af_alg_ctx = type { i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sock*)* @skcipher_sock_destruct to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @skcipher_sock_destruct(%struct.sock* %0) #0 {
  %2 = alloca %struct.sock*, align 8
  %3 = alloca %struct.alg_sock*, align 8
  %4 = alloca %struct.af_alg_ctx*, align 8
  %5 = alloca %struct.sock*, align 8
  %6 = alloca %struct.alg_sock*, align 8
  %7 = alloca %struct.crypto_skcipher*, align 8
  store %struct.sock* %0, %struct.sock** %2, align 8
  %8 = load %struct.sock*, %struct.sock** %2, align 8
  %9 = call %struct.alg_sock* @alg_sk(%struct.sock* %8)
  store %struct.alg_sock* %9, %struct.alg_sock** %3, align 8
  %10 = load %struct.alg_sock*, %struct.alg_sock** %3, align 8
  %11 = getelementptr inbounds %struct.alg_sock, %struct.alg_sock* %10, i32 0, i32 0
  %12 = load %struct.crypto_skcipher*, %struct.crypto_skcipher** %11, align 8
  %13 = bitcast %struct.crypto_skcipher* %12 to %struct.af_alg_ctx*
  store %struct.af_alg_ctx* %13, %struct.af_alg_ctx** %4, align 8
  %14 = load %struct.alg_sock*, %struct.alg_sock** %3, align 8
  %15 = getelementptr inbounds %struct.alg_sock, %struct.alg_sock* %14, i32 0, i32 1
  %16 = load %struct.sock*, %struct.sock** %15, align 8
  store %struct.sock* %16, %struct.sock** %5, align 8
  %17 = load %struct.sock*, %struct.sock** %5, align 8
  %18 = call %struct.alg_sock* @alg_sk(%struct.sock* %17)
  store %struct.alg_sock* %18, %struct.alg_sock** %6, align 8
  %19 = load %struct.alg_sock*, %struct.alg_sock** %6, align 8
  %20 = getelementptr inbounds %struct.alg_sock, %struct.alg_sock* %19, i32 0, i32 0
  %21 = load %struct.crypto_skcipher*, %struct.crypto_skcipher** %20, align 8
  store %struct.crypto_skcipher* %21, %struct.crypto_skcipher** %7, align 8
  %22 = load %struct.sock*, %struct.sock** %2, align 8
  %23 = load %struct.af_alg_ctx*, %struct.af_alg_ctx** %4, align 8
  %24 = getelementptr inbounds %struct.af_alg_ctx, %struct.af_alg_ctx* %23, i32 0, i32 2
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @af_alg_pull_tsgl(%struct.sock* %22, i32 %25, i32* null, i32 0)
  %27 = load %struct.sock*, %struct.sock** %2, align 8
  %28 = load %struct.af_alg_ctx*, %struct.af_alg_ctx** %4, align 8
  %29 = getelementptr inbounds %struct.af_alg_ctx, %struct.af_alg_ctx* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = load %struct.crypto_skcipher*, %struct.crypto_skcipher** %7, align 8
  %32 = call i32 @crypto_skcipher_ivsize(%struct.crypto_skcipher* %31)
  %33 = call i32 @sock_kzfree_s(%struct.sock* %27, i32 %30, i32 %32)
  %34 = load %struct.sock*, %struct.sock** %2, align 8
  %35 = load %struct.af_alg_ctx*, %struct.af_alg_ctx** %4, align 8
  %36 = bitcast %struct.af_alg_ctx* %35 to %struct.crypto_skcipher*
  %37 = load %struct.af_alg_ctx*, %struct.af_alg_ctx** %4, align 8
  %38 = getelementptr inbounds %struct.af_alg_ctx, %struct.af_alg_ctx* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @sock_kfree_s(%struct.sock* %34, %struct.crypto_skcipher* %36, i32 %39)
  %41 = load %struct.sock*, %struct.sock** %2, align 8
  %42 = call i32 @af_alg_release_parent(%struct.sock* %41)
  ret void
}

declare dso_local %struct.alg_sock* @alg_sk(%struct.sock*) #1

declare dso_local i32 @af_alg_pull_tsgl(%struct.sock*, i32, i32*, i32) #1

declare dso_local i32 @sock_kzfree_s(%struct.sock*, i32, i32) #1

declare dso_local i32 @crypto_skcipher_ivsize(%struct.crypto_skcipher*) #1

declare dso_local i32 @sock_kfree_s(%struct.sock*, %struct.crypto_skcipher*, i32) #1

declare dso_local i32 @af_alg_release_parent(%struct.sock*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
