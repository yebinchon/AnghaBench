; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/crypto/extr_des3_ede_glue.c_des3_ede_x86_setkey.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/crypto/extr_des3_ede_glue.c_des3_ede_x86_setkey.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.crypto_tfm = type { i32 }
%struct.des3_ede_x86_ctx = type { %struct.TYPE_3__, %struct.TYPE_4__ }
%struct.TYPE_3__ = type { i32* }
%struct.TYPE_4__ = type { i32* }

@ENOKEY = common dso_local global i32 0, align 4
@CRYPTO_TFM_REQ_FORBID_WEAK_KEYS = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@DES3_EDE_EXPKEY_WORDS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.crypto_tfm*, i32*, i32)* @des3_ede_x86_setkey to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @des3_ede_x86_setkey(%struct.crypto_tfm* %0, i32* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.crypto_tfm*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.des3_ede_x86_ctx*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.crypto_tfm* %0, %struct.crypto_tfm** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32 %2, i32* %7, align 4
  %13 = load %struct.crypto_tfm*, %struct.crypto_tfm** %5, align 8
  %14 = call %struct.des3_ede_x86_ctx* @crypto_tfm_ctx(%struct.crypto_tfm* %13)
  store %struct.des3_ede_x86_ctx* %14, %struct.des3_ede_x86_ctx** %8, align 8
  %15 = load %struct.des3_ede_x86_ctx*, %struct.des3_ede_x86_ctx** %8, align 8
  %16 = getelementptr inbounds %struct.des3_ede_x86_ctx, %struct.des3_ede_x86_ctx* %15, i32 0, i32 1
  %17 = load i32*, i32** %6, align 8
  %18 = load i32, i32* %7, align 4
  %19 = call i32 @des3_ede_expand_key(%struct.TYPE_4__* %16, i32* %17, i32 %18)
  store i32 %19, i32* %12, align 4
  %20 = load i32, i32* %12, align 4
  %21 = load i32, i32* @ENOKEY, align 4
  %22 = sub nsw i32 0, %21
  %23 = icmp eq i32 %20, %22
  br i1 %23, label %24, label %35

24:                                               ; preds = %3
  %25 = load %struct.crypto_tfm*, %struct.crypto_tfm** %5, align 8
  %26 = call i32 @crypto_tfm_get_flags(%struct.crypto_tfm* %25)
  %27 = load i32, i32* @CRYPTO_TFM_REQ_FORBID_WEAK_KEYS, align 4
  %28 = and i32 %26, %27
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %33

30:                                               ; preds = %24
  %31 = load i32, i32* @EINVAL, align 4
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* %12, align 4
  br label %34

33:                                               ; preds = %24
  store i32 0, i32* %12, align 4
  br label %34

34:                                               ; preds = %33, %30
  br label %35

35:                                               ; preds = %34, %3
  %36 = load i32, i32* %12, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %42

38:                                               ; preds = %35
  %39 = load %struct.des3_ede_x86_ctx*, %struct.des3_ede_x86_ctx** %8, align 8
  %40 = call i32 @memset(%struct.des3_ede_x86_ctx* %39, i32 0, i32 16)
  %41 = load i32, i32* %12, align 4
  store i32 %41, i32* %4, align 4
  br label %101

42:                                               ; preds = %35
  %43 = load i32, i32* @DES3_EDE_EXPKEY_WORDS, align 4
  %44 = sub nsw i32 %43, 2
  store i32 %44, i32* %10, align 4
  store i32 0, i32* %9, align 4
  br label %45

45:                                               ; preds = %95, %42
  %46 = load i32, i32* %9, align 4
  %47 = load i32, i32* @DES3_EDE_EXPKEY_WORDS, align 4
  %48 = icmp slt i32 %46, %47
  br i1 %48, label %49, label %100

49:                                               ; preds = %45
  %50 = load %struct.des3_ede_x86_ctx*, %struct.des3_ede_x86_ctx** %8, align 8
  %51 = getelementptr inbounds %struct.des3_ede_x86_ctx, %struct.des3_ede_x86_ctx* %50, i32 0, i32 1
  %52 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %51, i32 0, i32 0
  %53 = load i32*, i32** %52, align 8
  %54 = load i32, i32* %9, align 4
  %55 = add nsw i32 %54, 1
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds i32, i32* %53, i64 %56
  %58 = load i32, i32* %57, align 4
  %59 = call i32 @ror32(i32 %58, i32 4)
  store i32 %59, i32* %11, align 4
  %60 = load i32, i32* %11, align 4
  %61 = load %struct.des3_ede_x86_ctx*, %struct.des3_ede_x86_ctx** %8, align 8
  %62 = getelementptr inbounds %struct.des3_ede_x86_ctx, %struct.des3_ede_x86_ctx* %61, i32 0, i32 1
  %63 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %62, i32 0, i32 0
  %64 = load i32*, i32** %63, align 8
  %65 = load i32, i32* %9, align 4
  %66 = add nsw i32 %65, 1
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds i32, i32* %64, i64 %67
  store i32 %60, i32* %68, align 4
  %69 = load %struct.des3_ede_x86_ctx*, %struct.des3_ede_x86_ctx** %8, align 8
  %70 = getelementptr inbounds %struct.des3_ede_x86_ctx, %struct.des3_ede_x86_ctx* %69, i32 0, i32 1
  %71 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %70, i32 0, i32 0
  %72 = load i32*, i32** %71, align 8
  %73 = load i32, i32* %9, align 4
  %74 = add nsw i32 %73, 0
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds i32, i32* %72, i64 %75
  %77 = load i32, i32* %76, align 4
  %78 = load %struct.des3_ede_x86_ctx*, %struct.des3_ede_x86_ctx** %8, align 8
  %79 = getelementptr inbounds %struct.des3_ede_x86_ctx, %struct.des3_ede_x86_ctx* %78, i32 0, i32 0
  %80 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %79, i32 0, i32 0
  %81 = load i32*, i32** %80, align 8
  %82 = load i32, i32* %10, align 4
  %83 = add nsw i32 %82, 0
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds i32, i32* %81, i64 %84
  store i32 %77, i32* %85, align 4
  %86 = load i32, i32* %11, align 4
  %87 = load %struct.des3_ede_x86_ctx*, %struct.des3_ede_x86_ctx** %8, align 8
  %88 = getelementptr inbounds %struct.des3_ede_x86_ctx, %struct.des3_ede_x86_ctx* %87, i32 0, i32 0
  %89 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %88, i32 0, i32 0
  %90 = load i32*, i32** %89, align 8
  %91 = load i32, i32* %10, align 4
  %92 = add nsw i32 %91, 1
  %93 = sext i32 %92 to i64
  %94 = getelementptr inbounds i32, i32* %90, i64 %93
  store i32 %86, i32* %94, align 4
  br label %95

95:                                               ; preds = %49
  %96 = load i32, i32* %9, align 4
  %97 = add nsw i32 %96, 2
  store i32 %97, i32* %9, align 4
  %98 = load i32, i32* %10, align 4
  %99 = sub nsw i32 %98, 2
  store i32 %99, i32* %10, align 4
  br label %45

100:                                              ; preds = %45
  store i32 0, i32* %4, align 4
  br label %101

101:                                              ; preds = %100, %38
  %102 = load i32, i32* %4, align 4
  ret i32 %102
}

declare dso_local %struct.des3_ede_x86_ctx* @crypto_tfm_ctx(%struct.crypto_tfm*) #1

declare dso_local i32 @des3_ede_expand_key(%struct.TYPE_4__*, i32*, i32) #1

declare dso_local i32 @crypto_tfm_get_flags(%struct.crypto_tfm*) #1

declare dso_local i32 @memset(%struct.des3_ede_x86_ctx*, i32, i32) #1

declare dso_local i32 @ror32(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
