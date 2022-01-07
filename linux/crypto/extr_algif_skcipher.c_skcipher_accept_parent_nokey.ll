; ModuleID = '/home/carl/AnghaBench/linux/crypto/extr_algif_skcipher.c_skcipher_accept_parent_nokey.c'
source_filename = "/home/carl/AnghaBench/linux/crypto/extr_algif_skcipher.c_skcipher_accept_parent_nokey.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sock = type { i32 }
%struct.af_alg_ctx = type { i32, i32, i64, i64, i64, i32, i64, i32, i8* }
%struct.alg_sock = type { %struct.af_alg_ctx* }
%struct.crypto_skcipher = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@skcipher_sock_destruct = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, %struct.sock*)* @skcipher_accept_parent_nokey to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @skcipher_accept_parent_nokey(i8* %0, %struct.sock* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.sock*, align 8
  %6 = alloca %struct.af_alg_ctx*, align 8
  %7 = alloca %struct.alg_sock*, align 8
  %8 = alloca %struct.crypto_skcipher*, align 8
  %9 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store %struct.sock* %1, %struct.sock** %5, align 8
  %10 = load %struct.sock*, %struct.sock** %5, align 8
  %11 = call %struct.alg_sock* @alg_sk(%struct.sock* %10)
  store %struct.alg_sock* %11, %struct.alg_sock** %7, align 8
  %12 = load i8*, i8** %4, align 8
  %13 = bitcast i8* %12 to %struct.crypto_skcipher*
  store %struct.crypto_skcipher* %13, %struct.crypto_skcipher** %8, align 8
  store i32 64, i32* %9, align 4
  %14 = load %struct.sock*, %struct.sock** %5, align 8
  %15 = load i32, i32* %9, align 4
  %16 = load i32, i32* @GFP_KERNEL, align 4
  %17 = call i8* @sock_kmalloc(%struct.sock* %14, i32 %15, i32 %16)
  %18 = bitcast i8* %17 to %struct.af_alg_ctx*
  store %struct.af_alg_ctx* %18, %struct.af_alg_ctx** %6, align 8
  %19 = load %struct.af_alg_ctx*, %struct.af_alg_ctx** %6, align 8
  %20 = icmp ne %struct.af_alg_ctx* %19, null
  br i1 %20, label %24, label %21

21:                                               ; preds = %2
  %22 = load i32, i32* @ENOMEM, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %3, align 4
  br label %76

24:                                               ; preds = %2
  %25 = load %struct.sock*, %struct.sock** %5, align 8
  %26 = load %struct.crypto_skcipher*, %struct.crypto_skcipher** %8, align 8
  %27 = call i32 @crypto_skcipher_ivsize(%struct.crypto_skcipher* %26)
  %28 = load i32, i32* @GFP_KERNEL, align 4
  %29 = call i8* @sock_kmalloc(%struct.sock* %25, i32 %27, i32 %28)
  %30 = load %struct.af_alg_ctx*, %struct.af_alg_ctx** %6, align 8
  %31 = getelementptr inbounds %struct.af_alg_ctx, %struct.af_alg_ctx* %30, i32 0, i32 8
  store i8* %29, i8** %31, align 8
  %32 = load %struct.af_alg_ctx*, %struct.af_alg_ctx** %6, align 8
  %33 = getelementptr inbounds %struct.af_alg_ctx, %struct.af_alg_ctx* %32, i32 0, i32 8
  %34 = load i8*, i8** %33, align 8
  %35 = icmp ne i8* %34, null
  br i1 %35, label %43, label %36

36:                                               ; preds = %24
  %37 = load %struct.sock*, %struct.sock** %5, align 8
  %38 = load %struct.af_alg_ctx*, %struct.af_alg_ctx** %6, align 8
  %39 = load i32, i32* %9, align 4
  %40 = call i32 @sock_kfree_s(%struct.sock* %37, %struct.af_alg_ctx* %38, i32 %39)
  %41 = load i32, i32* @ENOMEM, align 4
  %42 = sub nsw i32 0, %41
  store i32 %42, i32* %3, align 4
  br label %76

43:                                               ; preds = %24
  %44 = load %struct.af_alg_ctx*, %struct.af_alg_ctx** %6, align 8
  %45 = getelementptr inbounds %struct.af_alg_ctx, %struct.af_alg_ctx* %44, i32 0, i32 8
  %46 = load i8*, i8** %45, align 8
  %47 = load %struct.crypto_skcipher*, %struct.crypto_skcipher** %8, align 8
  %48 = call i32 @crypto_skcipher_ivsize(%struct.crypto_skcipher* %47)
  %49 = call i32 @memset(i8* %46, i32 0, i32 %48)
  %50 = load %struct.af_alg_ctx*, %struct.af_alg_ctx** %6, align 8
  %51 = getelementptr inbounds %struct.af_alg_ctx, %struct.af_alg_ctx* %50, i32 0, i32 7
  %52 = call i32 @INIT_LIST_HEAD(i32* %51)
  %53 = load i32, i32* %9, align 4
  %54 = load %struct.af_alg_ctx*, %struct.af_alg_ctx** %6, align 8
  %55 = getelementptr inbounds %struct.af_alg_ctx, %struct.af_alg_ctx* %54, i32 0, i32 0
  store i32 %53, i32* %55, align 8
  %56 = load %struct.af_alg_ctx*, %struct.af_alg_ctx** %6, align 8
  %57 = getelementptr inbounds %struct.af_alg_ctx, %struct.af_alg_ctx* %56, i32 0, i32 6
  store i64 0, i64* %57, align 8
  %58 = load %struct.af_alg_ctx*, %struct.af_alg_ctx** %6, align 8
  %59 = getelementptr inbounds %struct.af_alg_ctx, %struct.af_alg_ctx* %58, i32 0, i32 5
  %60 = call i32 @atomic_set(i32* %59, i32 0)
  %61 = load %struct.af_alg_ctx*, %struct.af_alg_ctx** %6, align 8
  %62 = getelementptr inbounds %struct.af_alg_ctx, %struct.af_alg_ctx* %61, i32 0, i32 4
  store i64 0, i64* %62, align 8
  %63 = load %struct.af_alg_ctx*, %struct.af_alg_ctx** %6, align 8
  %64 = getelementptr inbounds %struct.af_alg_ctx, %struct.af_alg_ctx* %63, i32 0, i32 3
  store i64 0, i64* %64, align 8
  %65 = load %struct.af_alg_ctx*, %struct.af_alg_ctx** %6, align 8
  %66 = getelementptr inbounds %struct.af_alg_ctx, %struct.af_alg_ctx* %65, i32 0, i32 2
  store i64 0, i64* %66, align 8
  %67 = load %struct.af_alg_ctx*, %struct.af_alg_ctx** %6, align 8
  %68 = getelementptr inbounds %struct.af_alg_ctx, %struct.af_alg_ctx* %67, i32 0, i32 1
  %69 = call i32 @crypto_init_wait(i32* %68)
  %70 = load %struct.af_alg_ctx*, %struct.af_alg_ctx** %6, align 8
  %71 = load %struct.alg_sock*, %struct.alg_sock** %7, align 8
  %72 = getelementptr inbounds %struct.alg_sock, %struct.alg_sock* %71, i32 0, i32 0
  store %struct.af_alg_ctx* %70, %struct.af_alg_ctx** %72, align 8
  %73 = load i32, i32* @skcipher_sock_destruct, align 4
  %74 = load %struct.sock*, %struct.sock** %5, align 8
  %75 = getelementptr inbounds %struct.sock, %struct.sock* %74, i32 0, i32 0
  store i32 %73, i32* %75, align 4
  store i32 0, i32* %3, align 4
  br label %76

76:                                               ; preds = %43, %36, %21
  %77 = load i32, i32* %3, align 4
  ret i32 %77
}

declare dso_local %struct.alg_sock* @alg_sk(%struct.sock*) #1

declare dso_local i8* @sock_kmalloc(%struct.sock*, i32, i32) #1

declare dso_local i32 @crypto_skcipher_ivsize(%struct.crypto_skcipher*) #1

declare dso_local i32 @sock_kfree_s(%struct.sock*, %struct.af_alg_ctx*, i32) #1

declare dso_local i32 @memset(i8*, i32, i32) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @atomic_set(i32*, i32) #1

declare dso_local i32 @crypto_init_wait(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
