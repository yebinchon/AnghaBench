; ModuleID = '/home/carl/AnghaBench/linux/arch/s390/crypto/extr_aes_s390.c_xts_aes_set_key.c'
source_filename = "/home/carl/AnghaBench/linux/arch/s390/crypto/extr_aes_s390.c_xts_aes_set_key.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.crypto_tfm = type { i32 }
%struct.s390_xts_ctx = type { i64, i32, i32, i32 }

@fips_enabled = common dso_local global i64 0, align 8
@CRYPTO_TFM_RES_BAD_KEY_LEN = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@CPACF_KM_XTS_128 = common dso_local global i64 0, align 8
@CPACF_KM_XTS_256 = common dso_local global i64 0, align 8
@km_functions = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.crypto_tfm*, i32*, i32)* @xts_aes_set_key to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @xts_aes_set_key(%struct.crypto_tfm* %0, i32* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.crypto_tfm*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.s390_xts_ctx*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  store %struct.crypto_tfm* %0, %struct.crypto_tfm** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32 %2, i32* %7, align 4
  %11 = load %struct.crypto_tfm*, %struct.crypto_tfm** %5, align 8
  %12 = call %struct.s390_xts_ctx* @crypto_tfm_ctx(%struct.crypto_tfm* %11)
  store %struct.s390_xts_ctx* %12, %struct.s390_xts_ctx** %8, align 8
  %13 = load %struct.crypto_tfm*, %struct.crypto_tfm** %5, align 8
  %14 = load i32*, i32** %6, align 8
  %15 = load i32, i32* %7, align 4
  %16 = call i32 @xts_fallback_setkey(%struct.crypto_tfm* %13, i32* %14, i32 %15)
  store i32 %16, i32* %10, align 4
  %17 = load i32, i32* %10, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %3
  %20 = load i32, i32* %10, align 4
  store i32 %20, i32* %4, align 4
  br label %92

21:                                               ; preds = %3
  %22 = load i64, i64* @fips_enabled, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %38

24:                                               ; preds = %21
  %25 = load i32, i32* %7, align 4
  %26 = icmp ne i32 %25, 32
  br i1 %26, label %27, label %38

27:                                               ; preds = %24
  %28 = load i32, i32* %7, align 4
  %29 = icmp ne i32 %28, 64
  br i1 %29, label %30, label %38

30:                                               ; preds = %27
  %31 = load i32, i32* @CRYPTO_TFM_RES_BAD_KEY_LEN, align 4
  %32 = load %struct.crypto_tfm*, %struct.crypto_tfm** %5, align 8
  %33 = getelementptr inbounds %struct.crypto_tfm, %struct.crypto_tfm* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = or i32 %34, %31
  store i32 %35, i32* %33, align 4
  %36 = load i32, i32* @EINVAL, align 4
  %37 = sub nsw i32 0, %36
  store i32 %37, i32* %4, align 4
  br label %92

38:                                               ; preds = %27, %24, %21
  %39 = load i32, i32* %7, align 4
  %40 = icmp eq i32 %39, 32
  br i1 %40, label %41, label %43

41:                                               ; preds = %38
  %42 = load i64, i64* @CPACF_KM_XTS_128, align 8
  br label %51

43:                                               ; preds = %38
  %44 = load i32, i32* %7, align 4
  %45 = icmp eq i32 %44, 64
  br i1 %45, label %46, label %48

46:                                               ; preds = %43
  %47 = load i64, i64* @CPACF_KM_XTS_256, align 8
  br label %49

48:                                               ; preds = %43
  br label %49

49:                                               ; preds = %48, %46
  %50 = phi i64 [ %47, %46 ], [ 0, %48 ]
  br label %51

51:                                               ; preds = %49, %41
  %52 = phi i64 [ %42, %41 ], [ %50, %49 ]
  store i64 %52, i64* %9, align 8
  %53 = load i64, i64* %9, align 8
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %61

55:                                               ; preds = %51
  %56 = load i64, i64* %9, align 8
  %57 = call i64 @cpacf_test_func(i32* @km_functions, i64 %56)
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %61

59:                                               ; preds = %55
  %60 = load i64, i64* %9, align 8
  br label %62

61:                                               ; preds = %55, %51
  br label %62

62:                                               ; preds = %61, %59
  %63 = phi i64 [ %60, %59 ], [ 0, %61 ]
  %64 = load %struct.s390_xts_ctx*, %struct.s390_xts_ctx** %8, align 8
  %65 = getelementptr inbounds %struct.s390_xts_ctx, %struct.s390_xts_ctx* %64, i32 0, i32 0
  store i64 %63, i64* %65, align 8
  %66 = load %struct.s390_xts_ctx*, %struct.s390_xts_ctx** %8, align 8
  %67 = getelementptr inbounds %struct.s390_xts_ctx, %struct.s390_xts_ctx* %66, i32 0, i32 0
  %68 = load i64, i64* %67, align 8
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %71, label %70

70:                                               ; preds = %62
  store i32 0, i32* %4, align 4
  br label %92

71:                                               ; preds = %62
  %72 = load i32, i32* %7, align 4
  %73 = udiv i32 %72, 2
  store i32 %73, i32* %7, align 4
  %74 = load i32, i32* %7, align 4
  %75 = load %struct.s390_xts_ctx*, %struct.s390_xts_ctx** %8, align 8
  %76 = getelementptr inbounds %struct.s390_xts_ctx, %struct.s390_xts_ctx* %75, i32 0, i32 1
  store i32 %74, i32* %76, align 8
  %77 = load %struct.s390_xts_ctx*, %struct.s390_xts_ctx** %8, align 8
  %78 = getelementptr inbounds %struct.s390_xts_ctx, %struct.s390_xts_ctx* %77, i32 0, i32 3
  %79 = load i32, i32* %78, align 8
  %80 = load i32*, i32** %6, align 8
  %81 = load i32, i32* %7, align 4
  %82 = call i32 @memcpy(i32 %79, i32* %80, i32 %81)
  %83 = load %struct.s390_xts_ctx*, %struct.s390_xts_ctx** %8, align 8
  %84 = getelementptr inbounds %struct.s390_xts_ctx, %struct.s390_xts_ctx* %83, i32 0, i32 2
  %85 = load i32, i32* %84, align 4
  %86 = load i32*, i32** %6, align 8
  %87 = load i32, i32* %7, align 4
  %88 = zext i32 %87 to i64
  %89 = getelementptr inbounds i32, i32* %86, i64 %88
  %90 = load i32, i32* %7, align 4
  %91 = call i32 @memcpy(i32 %85, i32* %89, i32 %90)
  store i32 0, i32* %4, align 4
  br label %92

92:                                               ; preds = %71, %70, %30, %19
  %93 = load i32, i32* %4, align 4
  ret i32 %93
}

declare dso_local %struct.s390_xts_ctx* @crypto_tfm_ctx(%struct.crypto_tfm*) #1

declare dso_local i32 @xts_fallback_setkey(%struct.crypto_tfm*, i32*, i32) #1

declare dso_local i64 @cpacf_test_func(i32*, i64) #1

declare dso_local i32 @memcpy(i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
