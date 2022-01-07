; ModuleID = '/home/carl/AnghaBench/linux/crypto/extr_cryptd.c_cryptd_alloc_ahash.c'
source_filename = "/home/carl/AnghaBench/linux/crypto/extr_cryptd.c_cryptd_alloc_ahash.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cryptd_ahash = type { i32 }
%struct.cryptd_hash_ctx = type { i32 }
%struct.crypto_ahash = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i64 }

@CRYPTO_MAX_ALG_NAME = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [11 x i8] c"cryptd(%s)\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@THIS_MODULE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.cryptd_ahash* @cryptd_alloc_ahash(i8* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.cryptd_ahash*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.cryptd_hash_ctx*, align 8
  %11 = alloca %struct.crypto_ahash*, align 8
  %12 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %13 = load i32, i32* @CRYPTO_MAX_ALG_NAME, align 4
  %14 = zext i32 %13 to i64
  %15 = call i8* @llvm.stacksave()
  store i8* %15, i8** %8, align 8
  %16 = alloca i8, i64 %14, align 16
  store i64 %14, i64* %9, align 8
  %17 = load i32, i32* @CRYPTO_MAX_ALG_NAME, align 4
  %18 = load i8*, i8** %5, align 8
  %19 = call i32 @snprintf(i8* %16, i32 %17, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i8* %18)
  %20 = load i32, i32* @CRYPTO_MAX_ALG_NAME, align 4
  %21 = icmp sge i32 %19, %20
  br i1 %21, label %22, label %26

22:                                               ; preds = %3
  %23 = load i32, i32* @EINVAL, align 4
  %24 = sub nsw i32 0, %23
  %25 = call %struct.cryptd_ahash* @ERR_PTR(i32 %24)
  store %struct.cryptd_ahash* %25, %struct.cryptd_ahash** %4, align 8
  store i32 1, i32* %12, align 4
  br label %59

26:                                               ; preds = %3
  %27 = load i32, i32* %6, align 4
  %28 = load i32, i32* %7, align 4
  %29 = call %struct.crypto_ahash* @crypto_alloc_ahash(i8* %16, i32 %27, i32 %28)
  store %struct.crypto_ahash* %29, %struct.crypto_ahash** %11, align 8
  %30 = load %struct.crypto_ahash*, %struct.crypto_ahash** %11, align 8
  %31 = call i64 @IS_ERR(%struct.crypto_ahash* %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %36

33:                                               ; preds = %26
  %34 = load %struct.crypto_ahash*, %struct.crypto_ahash** %11, align 8
  %35 = call %struct.cryptd_ahash* @ERR_CAST(%struct.crypto_ahash* %34)
  store %struct.cryptd_ahash* %35, %struct.cryptd_ahash** %4, align 8
  store i32 1, i32* %12, align 4
  br label %59

36:                                               ; preds = %26
  %37 = load %struct.crypto_ahash*, %struct.crypto_ahash** %11, align 8
  %38 = getelementptr inbounds %struct.crypto_ahash, %struct.crypto_ahash* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 0
  %40 = load %struct.TYPE_3__*, %struct.TYPE_3__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = load i64, i64* @THIS_MODULE, align 8
  %44 = icmp ne i64 %42, %43
  br i1 %44, label %45, label %51

45:                                               ; preds = %36
  %46 = load %struct.crypto_ahash*, %struct.crypto_ahash** %11, align 8
  %47 = call i32 @crypto_free_ahash(%struct.crypto_ahash* %46)
  %48 = load i32, i32* @EINVAL, align 4
  %49 = sub nsw i32 0, %48
  %50 = call %struct.cryptd_ahash* @ERR_PTR(i32 %49)
  store %struct.cryptd_ahash* %50, %struct.cryptd_ahash** %4, align 8
  store i32 1, i32* %12, align 4
  br label %59

51:                                               ; preds = %36
  %52 = load %struct.crypto_ahash*, %struct.crypto_ahash** %11, align 8
  %53 = call %struct.cryptd_hash_ctx* @crypto_ahash_ctx(%struct.crypto_ahash* %52)
  store %struct.cryptd_hash_ctx* %53, %struct.cryptd_hash_ctx** %10, align 8
  %54 = load %struct.cryptd_hash_ctx*, %struct.cryptd_hash_ctx** %10, align 8
  %55 = getelementptr inbounds %struct.cryptd_hash_ctx, %struct.cryptd_hash_ctx* %54, i32 0, i32 0
  %56 = call i32 @refcount_set(i32* %55, i32 1)
  %57 = load %struct.crypto_ahash*, %struct.crypto_ahash** %11, align 8
  %58 = call %struct.cryptd_ahash* @__cryptd_ahash_cast(%struct.crypto_ahash* %57)
  store %struct.cryptd_ahash* %58, %struct.cryptd_ahash** %4, align 8
  store i32 1, i32* %12, align 4
  br label %59

59:                                               ; preds = %51, %45, %33, %22
  %60 = load i8*, i8** %8, align 8
  call void @llvm.stackrestore(i8* %60)
  %61 = load %struct.cryptd_ahash*, %struct.cryptd_ahash** %4, align 8
  ret %struct.cryptd_ahash* %61
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i8*) #2

declare dso_local %struct.cryptd_ahash* @ERR_PTR(i32) #2

declare dso_local %struct.crypto_ahash* @crypto_alloc_ahash(i8*, i32, i32) #2

declare dso_local i64 @IS_ERR(%struct.crypto_ahash*) #2

declare dso_local %struct.cryptd_ahash* @ERR_CAST(%struct.crypto_ahash*) #2

declare dso_local i32 @crypto_free_ahash(%struct.crypto_ahash*) #2

declare dso_local %struct.cryptd_hash_ctx* @crypto_ahash_ctx(%struct.crypto_ahash*) #2

declare dso_local i32 @refcount_set(i32*, i32) #2

declare dso_local %struct.cryptd_ahash* @__cryptd_ahash_cast(%struct.crypto_ahash*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
