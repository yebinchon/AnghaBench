; ModuleID = '/home/carl/AnghaBench/linux/crypto/extr_des_generic.c_des3_ede_setkey.c'
source_filename = "/home/carl/AnghaBench/linux/crypto/extr_des_generic.c_des3_ede_setkey.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.crypto_tfm = type { i32 }
%struct.des3_ede_ctx = type { i32 }

@ENOKEY = common dso_local global i32 0, align 4
@CRYPTO_TFM_REQ_FORBID_WEAK_KEYS = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@CRYPTO_TFM_RES_WEAK_KEY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.crypto_tfm*, i32*, i32)* @des3_ede_setkey to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @des3_ede_setkey(%struct.crypto_tfm* %0, i32* %1, i32 %2) #0 {
  %4 = alloca %struct.crypto_tfm*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.des3_ede_ctx*, align 8
  %8 = alloca i32, align 4
  store %struct.crypto_tfm* %0, %struct.crypto_tfm** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32 %2, i32* %6, align 4
  %9 = load %struct.crypto_tfm*, %struct.crypto_tfm** %4, align 8
  %10 = call %struct.des3_ede_ctx* @crypto_tfm_ctx(%struct.crypto_tfm* %9)
  store %struct.des3_ede_ctx* %10, %struct.des3_ede_ctx** %7, align 8
  %11 = load %struct.des3_ede_ctx*, %struct.des3_ede_ctx** %7, align 8
  %12 = load i32*, i32** %5, align 8
  %13 = load i32, i32* %6, align 4
  %14 = call i32 @des3_ede_expand_key(%struct.des3_ede_ctx* %11, i32* %12, i32 %13)
  store i32 %14, i32* %8, align 4
  %15 = load i32, i32* %8, align 4
  %16 = load i32, i32* @ENOKEY, align 4
  %17 = sub nsw i32 0, %16
  %18 = icmp eq i32 %15, %17
  br i1 %18, label %19, label %30

19:                                               ; preds = %3
  %20 = load %struct.crypto_tfm*, %struct.crypto_tfm** %4, align 8
  %21 = call i32 @crypto_tfm_get_flags(%struct.crypto_tfm* %20)
  %22 = load i32, i32* @CRYPTO_TFM_REQ_FORBID_WEAK_KEYS, align 4
  %23 = and i32 %21, %22
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %28

25:                                               ; preds = %19
  %26 = load i32, i32* @EINVAL, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %8, align 4
  br label %29

28:                                               ; preds = %19
  store i32 0, i32* %8, align 4
  br label %29

29:                                               ; preds = %28, %25
  br label %30

30:                                               ; preds = %29, %3
  %31 = load i32, i32* %8, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %39

33:                                               ; preds = %30
  %34 = load %struct.des3_ede_ctx*, %struct.des3_ede_ctx** %7, align 8
  %35 = call i32 @memset(%struct.des3_ede_ctx* %34, i32 0, i32 4)
  %36 = load %struct.crypto_tfm*, %struct.crypto_tfm** %4, align 8
  %37 = load i32, i32* @CRYPTO_TFM_RES_WEAK_KEY, align 4
  %38 = call i32 @crypto_tfm_set_flags(%struct.crypto_tfm* %36, i32 %37)
  br label %39

39:                                               ; preds = %33, %30
  %40 = load i32, i32* %8, align 4
  ret i32 %40
}

declare dso_local %struct.des3_ede_ctx* @crypto_tfm_ctx(%struct.crypto_tfm*) #1

declare dso_local i32 @des3_ede_expand_key(%struct.des3_ede_ctx*, i32*, i32) #1

declare dso_local i32 @crypto_tfm_get_flags(%struct.crypto_tfm*) #1

declare dso_local i32 @memset(%struct.des3_ede_ctx*, i32, i32) #1

declare dso_local i32 @crypto_tfm_set_flags(%struct.crypto_tfm*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
