; ModuleID = '/home/carl/AnghaBench/linux/crypto/extr_cryptd.c_cryptd_hash_complete.c'
source_filename = "/home/carl/AnghaBench/linux/crypto/extr_cryptd.c_cryptd_hash_complete.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ahash_request = type { i32 }
%struct.crypto_ahash = type { i32 }
%struct.cryptd_hash_ctx = type { i32 }
%struct.cryptd_hash_request_ctx = type { i32 (i32*, i32)* }

@EINPROGRESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ahash_request*, i32)* @cryptd_hash_complete to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cryptd_hash_complete(%struct.ahash_request* %0, i32 %1) #0 {
  %3 = alloca %struct.ahash_request*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.crypto_ahash*, align 8
  %6 = alloca %struct.cryptd_hash_ctx*, align 8
  %7 = alloca %struct.cryptd_hash_request_ctx*, align 8
  %8 = alloca i32, align 4
  store %struct.ahash_request* %0, %struct.ahash_request** %3, align 8
  store i32 %1, i32* %4, align 4
  %9 = load %struct.ahash_request*, %struct.ahash_request** %3, align 8
  %10 = call %struct.crypto_ahash* @crypto_ahash_reqtfm(%struct.ahash_request* %9)
  store %struct.crypto_ahash* %10, %struct.crypto_ahash** %5, align 8
  %11 = load %struct.crypto_ahash*, %struct.crypto_ahash** %5, align 8
  %12 = call %struct.cryptd_hash_ctx* @crypto_ahash_ctx(%struct.crypto_ahash* %11)
  store %struct.cryptd_hash_ctx* %12, %struct.cryptd_hash_ctx** %6, align 8
  %13 = load %struct.ahash_request*, %struct.ahash_request** %3, align 8
  %14 = call %struct.cryptd_hash_request_ctx* @ahash_request_ctx(%struct.ahash_request* %13)
  store %struct.cryptd_hash_request_ctx* %14, %struct.cryptd_hash_request_ctx** %7, align 8
  %15 = load %struct.cryptd_hash_ctx*, %struct.cryptd_hash_ctx** %6, align 8
  %16 = getelementptr inbounds %struct.cryptd_hash_ctx, %struct.cryptd_hash_ctx* %15, i32 0, i32 0
  %17 = call i32 @refcount_read(i32* %16)
  store i32 %17, i32* %8, align 4
  %18 = call i32 (...) @local_bh_disable()
  %19 = load %struct.cryptd_hash_request_ctx*, %struct.cryptd_hash_request_ctx** %7, align 8
  %20 = getelementptr inbounds %struct.cryptd_hash_request_ctx, %struct.cryptd_hash_request_ctx* %19, i32 0, i32 0
  %21 = load i32 (i32*, i32)*, i32 (i32*, i32)** %20, align 8
  %22 = load %struct.ahash_request*, %struct.ahash_request** %3, align 8
  %23 = getelementptr inbounds %struct.ahash_request, %struct.ahash_request* %22, i32 0, i32 0
  %24 = load i32, i32* %4, align 4
  %25 = call i32 %21(i32* %23, i32 %24)
  %26 = call i32 (...) @local_bh_enable()
  %27 = load i32, i32* %4, align 4
  %28 = load i32, i32* @EINPROGRESS, align 4
  %29 = sub nsw i32 0, %28
  %30 = icmp ne i32 %27, %29
  br i1 %30, label %31, label %42

31:                                               ; preds = %2
  %32 = load i32, i32* %8, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %42

34:                                               ; preds = %31
  %35 = load %struct.cryptd_hash_ctx*, %struct.cryptd_hash_ctx** %6, align 8
  %36 = getelementptr inbounds %struct.cryptd_hash_ctx, %struct.cryptd_hash_ctx* %35, i32 0, i32 0
  %37 = call i64 @refcount_dec_and_test(i32* %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %42

39:                                               ; preds = %34
  %40 = load %struct.crypto_ahash*, %struct.crypto_ahash** %5, align 8
  %41 = call i32 @crypto_free_ahash(%struct.crypto_ahash* %40)
  br label %42

42:                                               ; preds = %39, %34, %31, %2
  ret void
}

declare dso_local %struct.crypto_ahash* @crypto_ahash_reqtfm(%struct.ahash_request*) #1

declare dso_local %struct.cryptd_hash_ctx* @crypto_ahash_ctx(%struct.crypto_ahash*) #1

declare dso_local %struct.cryptd_hash_request_ctx* @ahash_request_ctx(%struct.ahash_request*) #1

declare dso_local i32 @refcount_read(i32*) #1

declare dso_local i32 @local_bh_disable(...) #1

declare dso_local i32 @local_bh_enable(...) #1

declare dso_local i64 @refcount_dec_and_test(i32*) #1

declare dso_local i32 @crypto_free_ahash(%struct.crypto_ahash*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
