; ModuleID = '/home/carl/AnghaBench/linux/crypto/extr_algif_aead.c_aead_sock_destruct.c'
source_filename = "/home/carl/AnghaBench/linux/crypto/extr_algif_aead.c_aead_sock_destruct.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sock = type { i32 }
%struct.alg_sock = type { %struct.af_alg_ctx*, %struct.sock* }
%struct.af_alg_ctx = type { i32, i32, i32, %struct.crypto_aead* }
%struct.crypto_aead = type { i32 }
%struct.aead_tfm = type { i32, i32, i32, %struct.crypto_aead* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sock*)* @aead_sock_destruct to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @aead_sock_destruct(%struct.sock* %0) #0 {
  %2 = alloca %struct.sock*, align 8
  %3 = alloca %struct.alg_sock*, align 8
  %4 = alloca %struct.af_alg_ctx*, align 8
  %5 = alloca %struct.sock*, align 8
  %6 = alloca %struct.alg_sock*, align 8
  %7 = alloca %struct.aead_tfm*, align 8
  %8 = alloca %struct.crypto_aead*, align 8
  %9 = alloca i32, align 4
  store %struct.sock* %0, %struct.sock** %2, align 8
  %10 = load %struct.sock*, %struct.sock** %2, align 8
  %11 = call %struct.alg_sock* @alg_sk(%struct.sock* %10)
  store %struct.alg_sock* %11, %struct.alg_sock** %3, align 8
  %12 = load %struct.alg_sock*, %struct.alg_sock** %3, align 8
  %13 = getelementptr inbounds %struct.alg_sock, %struct.alg_sock* %12, i32 0, i32 0
  %14 = load %struct.af_alg_ctx*, %struct.af_alg_ctx** %13, align 8
  store %struct.af_alg_ctx* %14, %struct.af_alg_ctx** %4, align 8
  %15 = load %struct.alg_sock*, %struct.alg_sock** %3, align 8
  %16 = getelementptr inbounds %struct.alg_sock, %struct.alg_sock* %15, i32 0, i32 1
  %17 = load %struct.sock*, %struct.sock** %16, align 8
  store %struct.sock* %17, %struct.sock** %5, align 8
  %18 = load %struct.sock*, %struct.sock** %5, align 8
  %19 = call %struct.alg_sock* @alg_sk(%struct.sock* %18)
  store %struct.alg_sock* %19, %struct.alg_sock** %6, align 8
  %20 = load %struct.alg_sock*, %struct.alg_sock** %6, align 8
  %21 = getelementptr inbounds %struct.alg_sock, %struct.alg_sock* %20, i32 0, i32 0
  %22 = load %struct.af_alg_ctx*, %struct.af_alg_ctx** %21, align 8
  %23 = bitcast %struct.af_alg_ctx* %22 to %struct.aead_tfm*
  store %struct.aead_tfm* %23, %struct.aead_tfm** %7, align 8
  %24 = load %struct.aead_tfm*, %struct.aead_tfm** %7, align 8
  %25 = getelementptr inbounds %struct.aead_tfm, %struct.aead_tfm* %24, i32 0, i32 3
  %26 = load %struct.crypto_aead*, %struct.crypto_aead** %25, align 8
  store %struct.crypto_aead* %26, %struct.crypto_aead** %8, align 8
  %27 = load %struct.crypto_aead*, %struct.crypto_aead** %8, align 8
  %28 = call i32 @crypto_aead_ivsize(%struct.crypto_aead* %27)
  store i32 %28, i32* %9, align 4
  %29 = load %struct.sock*, %struct.sock** %2, align 8
  %30 = load %struct.af_alg_ctx*, %struct.af_alg_ctx** %4, align 8
  %31 = getelementptr inbounds %struct.af_alg_ctx, %struct.af_alg_ctx* %30, i32 0, i32 2
  %32 = load i32, i32* %31, align 8
  %33 = call i32 @af_alg_pull_tsgl(%struct.sock* %29, i32 %32, i32* null, i32 0)
  %34 = load %struct.sock*, %struct.sock** %2, align 8
  %35 = load %struct.af_alg_ctx*, %struct.af_alg_ctx** %4, align 8
  %36 = getelementptr inbounds %struct.af_alg_ctx, %struct.af_alg_ctx* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = load i32, i32* %9, align 4
  %39 = call i32 @sock_kzfree_s(%struct.sock* %34, i32 %37, i32 %38)
  %40 = load %struct.sock*, %struct.sock** %2, align 8
  %41 = load %struct.af_alg_ctx*, %struct.af_alg_ctx** %4, align 8
  %42 = load %struct.af_alg_ctx*, %struct.af_alg_ctx** %4, align 8
  %43 = getelementptr inbounds %struct.af_alg_ctx, %struct.af_alg_ctx* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = call i32 @sock_kfree_s(%struct.sock* %40, %struct.af_alg_ctx* %41, i32 %44)
  %46 = load %struct.sock*, %struct.sock** %2, align 8
  %47 = call i32 @af_alg_release_parent(%struct.sock* %46)
  ret void
}

declare dso_local %struct.alg_sock* @alg_sk(%struct.sock*) #1

declare dso_local i32 @crypto_aead_ivsize(%struct.crypto_aead*) #1

declare dso_local i32 @af_alg_pull_tsgl(%struct.sock*, i32, i32*, i32) #1

declare dso_local i32 @sock_kzfree_s(%struct.sock*, i32, i32) #1

declare dso_local i32 @sock_kfree_s(%struct.sock*, %struct.af_alg_ctx*, i32) #1

declare dso_local i32 @af_alg_release_parent(%struct.sock*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
