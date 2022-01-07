; ModuleID = '/home/carl/AnghaBench/linux/arch/s390/crypto/extr_aes_s390.c_ecb_aes_set_key.c'
source_filename = "/home/carl/AnghaBench/linux/arch/s390/crypto/extr_aes_s390.c_ecb_aes_set_key.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.crypto_tfm = type { i32 }
%struct.s390_aes_ctx = type { i64, i32, i32 }

@CPACF_KM_AES_128 = common dso_local global i64 0, align 8
@CPACF_KM_AES_192 = common dso_local global i64 0, align 8
@CPACF_KM_AES_256 = common dso_local global i64 0, align 8
@km_functions = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.crypto_tfm*, i32*, i32)* @ecb_aes_set_key to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ecb_aes_set_key(%struct.crypto_tfm* %0, i32* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.crypto_tfm*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.s390_aes_ctx*, align 8
  %9 = alloca i64, align 8
  store %struct.crypto_tfm* %0, %struct.crypto_tfm** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32 %2, i32* %7, align 4
  %10 = load %struct.crypto_tfm*, %struct.crypto_tfm** %5, align 8
  %11 = call %struct.s390_aes_ctx* @crypto_tfm_ctx(%struct.crypto_tfm* %10)
  store %struct.s390_aes_ctx* %11, %struct.s390_aes_ctx** %8, align 8
  %12 = load i32, i32* %7, align 4
  %13 = icmp eq i32 %12, 16
  br i1 %13, label %14, label %16

14:                                               ; preds = %3
  %15 = load i64, i64* @CPACF_KM_AES_128, align 8
  br label %31

16:                                               ; preds = %3
  %17 = load i32, i32* %7, align 4
  %18 = icmp eq i32 %17, 24
  br i1 %18, label %19, label %21

19:                                               ; preds = %16
  %20 = load i64, i64* @CPACF_KM_AES_192, align 8
  br label %29

21:                                               ; preds = %16
  %22 = load i32, i32* %7, align 4
  %23 = icmp eq i32 %22, 32
  br i1 %23, label %24, label %26

24:                                               ; preds = %21
  %25 = load i64, i64* @CPACF_KM_AES_256, align 8
  br label %27

26:                                               ; preds = %21
  br label %27

27:                                               ; preds = %26, %24
  %28 = phi i64 [ %25, %24 ], [ 0, %26 ]
  br label %29

29:                                               ; preds = %27, %19
  %30 = phi i64 [ %20, %19 ], [ %28, %27 ]
  br label %31

31:                                               ; preds = %29, %14
  %32 = phi i64 [ %15, %14 ], [ %30, %29 ]
  store i64 %32, i64* %9, align 8
  %33 = load i64, i64* %9, align 8
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %41

35:                                               ; preds = %31
  %36 = load i64, i64* %9, align 8
  %37 = call i64 @cpacf_test_func(i32* @km_functions, i64 %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %41

39:                                               ; preds = %35
  %40 = load i64, i64* %9, align 8
  br label %42

41:                                               ; preds = %35, %31
  br label %42

42:                                               ; preds = %41, %39
  %43 = phi i64 [ %40, %39 ], [ 0, %41 ]
  %44 = load %struct.s390_aes_ctx*, %struct.s390_aes_ctx** %8, align 8
  %45 = getelementptr inbounds %struct.s390_aes_ctx, %struct.s390_aes_ctx* %44, i32 0, i32 0
  store i64 %43, i64* %45, align 8
  %46 = load %struct.s390_aes_ctx*, %struct.s390_aes_ctx** %8, align 8
  %47 = getelementptr inbounds %struct.s390_aes_ctx, %struct.s390_aes_ctx* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %55, label %50

50:                                               ; preds = %42
  %51 = load %struct.crypto_tfm*, %struct.crypto_tfm** %5, align 8
  %52 = load i32*, i32** %6, align 8
  %53 = load i32, i32* %7, align 4
  %54 = call i32 @setkey_fallback_blk(%struct.crypto_tfm* %51, i32* %52, i32 %53)
  store i32 %54, i32* %4, align 4
  br label %65

55:                                               ; preds = %42
  %56 = load i32, i32* %7, align 4
  %57 = load %struct.s390_aes_ctx*, %struct.s390_aes_ctx** %8, align 8
  %58 = getelementptr inbounds %struct.s390_aes_ctx, %struct.s390_aes_ctx* %57, i32 0, i32 1
  store i32 %56, i32* %58, align 8
  %59 = load %struct.s390_aes_ctx*, %struct.s390_aes_ctx** %8, align 8
  %60 = getelementptr inbounds %struct.s390_aes_ctx, %struct.s390_aes_ctx* %59, i32 0, i32 2
  %61 = load i32, i32* %60, align 4
  %62 = load i32*, i32** %6, align 8
  %63 = load i32, i32* %7, align 4
  %64 = call i32 @memcpy(i32 %61, i32* %62, i32 %63)
  store i32 0, i32* %4, align 4
  br label %65

65:                                               ; preds = %55, %50
  %66 = load i32, i32* %4, align 4
  ret i32 %66
}

declare dso_local %struct.s390_aes_ctx* @crypto_tfm_ctx(%struct.crypto_tfm*) #1

declare dso_local i64 @cpacf_test_func(i32*, i64) #1

declare dso_local i32 @setkey_fallback_blk(%struct.crypto_tfm*, i32*, i32) #1

declare dso_local i32 @memcpy(i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
